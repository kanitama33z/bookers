class BooksController < ApplicationController

	def top
	end


  def books
  	@books = Book.all
  	@book = Book.new
  end

  def create
  	book = Book.new(book_params)
  	if book.save
      flash[:notice] = "Book was successfully created."
      redirect_to show_book_path(book.id)
    end

  end

  def show
  	@book = Book.find(params[:id])

  end


  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	book.update(book_params)
  	redirect_to show_book_path(book.id)
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to book_path
  end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end
end

