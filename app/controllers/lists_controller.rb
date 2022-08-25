class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    # creating a new list but nothing is saved yet
    @list = List.new
  end

  def create
    list = List.create(strong_params)
    redirect_to lists_path
  end

  private

  def strong_params
    params.require(:list).permit(:name)
  end

end
