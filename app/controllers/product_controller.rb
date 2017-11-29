class ProductController < ApplicationController
  def index
      @products = Product.search(params[:search]).paginate(page: params[:page], per_page: 3)
  end

end
