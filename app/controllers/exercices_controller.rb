class ExercicesController < ApplicationController
  before_action :set_exercice, only: %i[show]

  def home
    @exercices = Exercice.all
  end

  def show
    @loads = Load.all
    @notes = Note.all
    @load = Load.find(params[:id])
    @note = Note.find(params[:id])
  end

  private

  def set_exercice
    @exercice = Exercice.find(params[:id])
  end
end
