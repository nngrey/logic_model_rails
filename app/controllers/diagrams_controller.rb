class DiagramsController < ApplicationController

  def index
    @diagrams = Diagram.all
  end

  def new
    @diagram = Diagram.new
  end

  def create
    @diagram = Diagram.new(diagram_params)
    if @diagram.save
      flash[:notice]="New diagram created."
      redirect_to diagrams_path
    else
      render 'new'
    end
  end

  def show
    @diagram = Diagram.find(params[:id])
  end

  private

  def diagram_params
    params.require(:diagram).permit(:name)
  end

end