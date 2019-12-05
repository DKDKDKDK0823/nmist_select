class TypesController < ApplicationController
  def new
    @types = Type.all
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to ('/wears/new')
    else
      render 'new'
    end
  end

  def destory

  end

  private
  def type_params
    params.require(:type).permit(:name)
  end

end
