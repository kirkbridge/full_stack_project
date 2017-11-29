class CategoryController < ApplicationController
  def show
    @products = Product.joins(:category).where(categories: {id:params[:id]}).paginate(page: params[:page], per_page: 3)

  end
end
