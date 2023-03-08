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

  def new
    @exercice = Exercice.new
    # @exercice.load = Load.new
    # @exercice.note = Note.new
  end

  def create
    @exercice = Exercice.new(exercice_params)
    @exercice.user_id = current_user
    @exercice.load = Load.new
    @exercice.note = Note.new
    if @exercice.save
      redirect_to exercice_path(@exercice)
    else
      flash[:alert] = "An error occured"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_exercice
    @exercice = Exercice.find(params[:id])
  end

  def exercice_params
    params.require(:exercice).permit(:name)
  end
end
