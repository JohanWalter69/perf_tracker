class NotesController < ApplicationController
  def edit
    @note = Note.find(params[:id])
    @exercice = Exercice.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    redirect_to exercice_path(@note)
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end
