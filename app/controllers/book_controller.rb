class BookController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = 'Book Add successfully'
      redirect_to root_path(@book)
    else
      flash[:alert] = 'Cannot add book. Please try again'
      render 'new'
    end
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy
    flash[:alert] = 'The book has been removed'
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :category)
    redirect_to book_path(@book)
  end
end
