class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    book = Book.find_by(id)
    render json: book
  end

  def create
    @book = Book.create(review_params)
    render json: @book
  end

  private
    def review_params
      params.require(:book).permit(:name, :author)
    end
end
