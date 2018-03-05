class Api::DoorsController < Api::ApiController

  def result
    @doors = Product.all
  end

  def show
  	debugger
    @door = Product.find(params[:id])
  end

end
