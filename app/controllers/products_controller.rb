class ProductsController < ApplicationController
before_action :set_headers, :set_product, only: [:show, :update, :destroy]
before_action


  # GET /users
  def index
    @products = Product.all
    json_response(@products)
  end

  # POST /todos
  def create
    @products = Product.create!(user_params)
    json_response(@products, :created)
  end

  # GET /todos/:id
  def show
    json_response(@products)
  end

  # PUT /todos/:id
  def update
    @products.update(user_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @products.destroy
    head :no_content
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :image, :price)
    params.permit(:name, :description, :image, :price)
  end

  def set_headers
    response.headers['Content-Type'] = 'application/vnd.api+json'
  end

  def set_product
    @products = Product.find(params[:id])
  end
end
