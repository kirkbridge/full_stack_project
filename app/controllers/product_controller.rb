class ProductController < ApplicationController
    before_action :empty_search, only: [:search]
    #before_action :init_category

  def index
      if params[:product].nil? || !params[:product].has_key?(:category_id) || params[:product][:category] == ""
        @products = Product.search(params[:search]).paginate(page: params[:page], per_page: 3)
      else
        category_id = params[:product][:category_id].to_i
        @products = Product.search(params[:search]).joins(:category).where(categories:{id: category_id}).paginate(page:params[:page], per_page: 3)
      end
  end

  def show
    @product = Product.find(params[:id])
    if @product.nil?
      flash.now[:alert] = "Product doesn't exist"
      render action: "index"
    end
  end

  private

    def empty_search
      if params[:search]
        params[:search] = ""
      end
    end

    def init_category
      params[:product][:category_id] = ""
    end

end
