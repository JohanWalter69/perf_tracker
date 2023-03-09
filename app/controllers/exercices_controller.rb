class ExercicesController < ApplicationController
  before_action :set_exercice, only: %i[show destroy]

  def home
    @exercices = Exercice.all
  end

  def show
    @load = Exercice.find(params[:id]).load
    @note = Exercice.find(params[:id]).note
  end

  def new
    @exercice = Exercice.new
    @exercice.load = Load.new
    @exercice.note = Note.new
  end

  def create
    @exercice = Exercice.new(exercice_params)
    @exercice.user = current_user
    @exercice.name = @exercice.name.capitalize
    image
    if @exercice.save
      flash[:notice] = 'Exercice dans la box !'
      redirect_to root_path
    else
      flash[:alert] = 'Il y a une erreur, vérifie ton formulaire'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @exercice.destroy
      redirect_to root_path, status: :see_other
    else
      flash[:alert] = "An error occured"
      render :home, status: :unauthorized
    end
  end

  private

  def set_exercice
    @exercice = Exercice.find(params[:id])
  end

  def exercice_params
    params.require(:exercice).permit(:name, :image_url, note_attributes: [:content], load_attributes: [:max_load])
  end

  def image
    case @exercice.name
    when 'Pull-up'
      @exercice.image_url = '/assets/pull_up.jpg'
    when 'Power-clean'
      @exercice.image_url = '/assets/power_clean.jpg'
    when 'Front-squat'
      @exercice.image_url = '/assets/front_squat.jpg'
    when 'Back-squat'
      @exercice.image_url = '/assets/back_squat.jpg'
    when 'Snatch'
      @exercice.image_url = '/assets/snatch.jpg'
    when 'Deadlift'
      @exercice.image_url = '/assets/deadlift.jpg'
    when 'Push-press'
      @exercice.image_url = '/assets/push_press.jpg'
    end
  end
end
