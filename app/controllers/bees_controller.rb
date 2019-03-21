class BeesController < ApplicationController

def index
  @bees = Bee.all
end

def show
  @bee = Bee.find(params[:id])
end

def new
  @bee = Bee.new
end

def create
 @bee = Bee.create(bee_params)
 if @bee.valid?
   redirect_to @bee
 else
   redirect_to new_bee_path
 end
end

  def edit
    @bee = Bee.find(params[:id])
  end

  def update
    @bee = Bee.find(params[:id])
    if @bee.update(bee_params)
      redirect_to bees_path
    else
      redirect_to edit_bee_path
    end
  end

private
  def bee_params
      params.require(:bee).permit(:name, :queen, :hive_id)
  end

end
