class FlowersController < ApplicationController

  def index
    @flowers = Flower.all
  end

  def show
    @flower = Flower.find(params[:id])
  end

  def new
    @flower = Flower.new
  end

  def create
    @flower = Flower.create(flower_params)
    if @flower.valid?
      redirect_to @flower
    else
      redirect_to new_flower_path
    end
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def update
    @flower = Flower.find(params[:id])
    @flower.update(flower_params)
    redirect_to @flower
  end

private
  def flower_params
      params.require(:flower).permit(:name, :pollen_capacity, bee_ids: [] )
  end
end
