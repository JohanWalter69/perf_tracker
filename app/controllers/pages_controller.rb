class PagesController < ApplicationController
  before_action :set_tree, only: %i[show]

  def home
    @exercices = Exercice.all
  end

  def show
  end

  private

  def set_tree
    @exercice = Exercice.find(params[:id])
  end
end
