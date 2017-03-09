class IngredientsController < ApplicationController
  def new
  end

  def create
    include HTTParty
    @result = HTTParty.get(API_URL)
  end




end
