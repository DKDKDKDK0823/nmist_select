class SizesController < ApplicationController
  def new
    @size = Size.new
    @sizes = Size.all
  end

  def create
    @size = Size.new(size_pararms)
    if @size.save
      redirect_to ('/wears/new')
    else
      render 'new'
    end
  end

  private
  
  def size_pararms
    params.require(:size).permit(:name)
  end
end
