class WearsController < ApplicationController
  def show
    @wear = Wear.find(params[:id])
  end

  def index
    @wears = Wear.all
  end

  def new
    @wear = Wear.new
    @wears = Wear.all
    @types = Type.all
    @sizes = Size.all
  end

  def about
    @wears = Wear.order("RAND()").limit(2)
  end

  def create
    @wear = Wear.new(wear_params)
    @wear.save
  end

  def edit
    @wear = Wear.find(params[:id])
    @types = Type.all
    @sizes = Size.all
  end

  def update
    @wear = Wear.find(params[:id])
    if params[:wear][:image_ids]
      params[:wear][:image_ids].each do |image_id|
        image = @wear.images.find(image_id)
        image.purge
      end
    end
    @wear.update(wear_params)
    redirect_to ('/wears/new')
  end

  def destroy
    @wear = Wear.find(params[:id])
    @wear.destroy
    redirect_to ("/wears/new")
  end

  private


  def wear_params
    params.require(:wear).permit(:name, :price, :introduction, :type_id, :size_id, images: [] ) 
  end



end
