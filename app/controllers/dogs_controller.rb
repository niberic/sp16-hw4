class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def show
    @id = params[:id]
    @dog = Dog.find_by(id: params[:id])
  end

  def create
    @dog = Dog.create(dogs_params)
    if @dog.save
      redirect_to @dog
    else
      render "new"
    end
  end

  private
  def dogs_params
    params.require(:dog).permit(:name, :age) #Need to sanitize the input.
  end
end
