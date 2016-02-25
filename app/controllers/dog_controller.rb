class DogController < ApplicationController
  def home
    @dogs = Dog.all
  end


end
