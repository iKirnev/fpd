class Api::DoorsController < Api::ApiController

  def result
  	by = params[:by]
  	id = params[:id]
    @doors = by == 'stuff' ? Stuff.find(id).products : Use.find(id).products
  end

  def show
    @door = Product.find(params[:id])
  end

end
