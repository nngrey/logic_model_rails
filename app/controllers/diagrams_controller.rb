class DiagramsController < ApplicationController

  def index
    @diagrams = Diagram.all
  end

  private

  def diagram_params
    params.require(:diagram).permit(:name)
  end

end