class FruitsController < ApplicationController
  def index
    sort_attribute = params[:sort_by]
    @fruits = Fruit.order(sort_attribute)
    render 'index.html.erb'
  end
   
  def show
    @fruit = Fruit.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @fruit = Fruit.new(
      name: params["name"],
      price: params["price"],
      image: params["image"],
      description: params["description"]
    )
    @fruit.save
    redirect_to "/fruits/#{@fruit.id}"
  end

  def show
    fruit_id = params[:id]
    @fruits = Fruit.find_by(id: fruit_id)
    render 'show.html.erb'
  end

  def edit
    fruit_id = params[:id]
    @fruit = Fruit.find_by(id: fruit_id)
    render 'edit.html.erb'
  end

  def update
    fruit_id = params[:id]
    @fruit = Fruit.find_by(id: fruit_id)
    @fruit.name = params[:name]
    @fruit.price = params[:price]
    @fruit.image = params[:image]
    @fruit.description = params[:description]
    @fruit.save
    flash[:success] = "Fruit successfully updated!"
    redirect_to "/fruits/#{@fruit.id}"
  end

  def destroy
    fruit_id = params[:id]
    @fruit = Fruit.find_by(id: fruit_id)
    @fruit.destroy
    redirect_to "/fruits"
  end
end