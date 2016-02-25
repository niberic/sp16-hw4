class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def show
    @dog = Dog.find(params[:id])
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
