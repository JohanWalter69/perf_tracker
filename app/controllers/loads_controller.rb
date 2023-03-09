class LoadsController < ApplicationController

  def edit
    @load = Load.find(params[:id])
    @exercice = Exercice.find(params[:id])
  end

  def update
    @load = Load.find(params[:id])
    @load.update(load_params)
    redirect_to exercice_path(@load)
  end

  private

  def load_params
    params.require(:load).permit(:max_load)
  end

end
