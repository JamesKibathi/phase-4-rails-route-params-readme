class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  
  def show
   # Find a cheeese using the ID from the URL
   cheese=Cheese.find(params[:id])
   # cheese=Cheese.find_by(id: params[:id]) -- also works
   # Find a JSON response using that cheese object
   render json: cheese
  end

end
