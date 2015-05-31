class BathroomsController < ApplicationController


  before_action :set_neighborhood


  def index
    @bathrooms = Bathroom.all
    render json: @bathrooms
  end


  def show
    @bathroom = Bathroom.find(params[:id])
    render json: @bathroom
  end

  def create

    @bathroom = @neighborhood.bathrooms.build(bathroom_params)
    if @bathroom.save
      render json: @bathroom, status: :created
    else
      render json: @bathroom, status: :unprocessable_entity
    end
  end

  def destroy
  @bathroom = Bathroom.find(params[:id])
  @bathroom.destroy
  head :no_content
  end


  private

  def bathroom_params
    params.require(:bathroom).permit(:location, :address, :description, :image)
  end

  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_params])
  end

end
