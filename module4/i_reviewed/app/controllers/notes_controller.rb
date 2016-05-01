class NotesController < ApplicationController
	before_action :set_book,only: [:create,:destroy]

	def create
		@note =@book.notes.new(note_params)
		if @note.save
			redirect_to @book,notice: "Note succesfully created"
		else
			redirect_to @book,alert: "unable to add model"
		end
	end
	def destroy
		@note = @book.notes.find(params[:id])
		@note.destroy
		redirect_to @book,notice: "Note deleted"
	end
		private
			def set_book
				@book = Book.find_by id: params[:id]
			end

			def note_params
				params.require(:note).permit(:title,:note)
			end

end
