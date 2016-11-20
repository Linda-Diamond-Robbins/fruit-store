class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render 'index.html.erb'
  end

  def show
    @fruit = Fruit.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
