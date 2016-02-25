class DogController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    
  end

end
