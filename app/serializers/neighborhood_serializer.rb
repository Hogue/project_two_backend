class NeighborhoodSerializer < ActiveModel::Serializer

  # explicitly list the resource attributes we want to expose
  # via our API
  attributes :id, :name, :bathrooms, :bathroom_count
  has_many :bathrooms

  # return a count of movie reviews
  # the review_count is a virtual attribute. it does not exist
  # in the DB or in the Movie model
  # we create it ONLY when we we want to
  # render json: @movie in the MoviesController

  def bathroom_count
    # object is the current movie we're representing
    object.bathrooms.count
  end



end
