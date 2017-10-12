class AislesController < ApplicationController
  before_action :set_headers, :set_aisle, only: [:show, :update, :destroy]

  # GET /aisles
  def index
    @aisles = Aisle.all
    json_response(@aisles)
  end

  # POST /todos
  def create
    @aisles = Aisle.create!(user_params)
    json_response(@aisles, :created)
  end

  # GET /todos/:id
  def show
    json_response(@aisles)
  end

  # PUT /todos/:id
  def update
    @aisles.update(user_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @aisles.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def aisle_params
    params.require(:aisle).permit(:name)
  end

  def aisle_params
    params.require(:aisle).permit(:name)
    params.permit(:name)
  end

  def set_aisle
    @aisle = Aisle.find(params[:id])
  end
end
