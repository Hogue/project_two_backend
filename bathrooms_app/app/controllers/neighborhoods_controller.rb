class Neighborhoods < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
    render json: @neighborhoods
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    render json: @neighborhood
  end

  def create

    @neighborhood = Neighborhood.new(neighborhood_params)
    if @neighborhood.save
      render json: @neighborhood, status: :created, location: neighborhoods_url
    else
      render json: @neighborhood, status: :unprocessable_entity
    end

  end

  def update

    @neighborhood = Neighborhood.find(params[:id])
    if @neighborhood.update(movie_params)
      head :no_content
    else
      render json: @neighborhood, status: :unprocessable_entity
    end

  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])
    @movie.destroy
    head :no_content
  end

  private
  def neighborhood_params
    params.require(:neighborhood).permit(:name)
  end

end
