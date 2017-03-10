class IngredientsController < ApplicationController

  def new
  end

  def create
    search_term = params[:ingredient][:name]
    url = "https://api.nutritionix.com/v1_1/search/#{search_term.strip}?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=#{ENV['nutritionix_api_id']}&appKey=#{ENV['nutritionix_api_key']}"
    api_result = HTTParty.get(url)
    ingredient_results = []
    api_result["hits"].each do |ingredient|
      ingredient_name = ingredient["fields"]["item_name"]
      ingredient_calories = ingredient["fields"]["nf_calories"]
      ingredient_results << Ingredient.find_or_create_by(name: ingredient_name, calories: ingredient_calories)
    end
    render json: ingredient_results.to_json
  end

  def index
    binding.pry
  end



end
