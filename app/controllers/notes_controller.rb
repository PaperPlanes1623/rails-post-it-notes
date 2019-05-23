class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def destroy 
    Note.find(params[:id]).destroy 
    # redirect_to pages_path --->edit this line
  end

end
