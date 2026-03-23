class BooksController < ApplicationController
  def index
    @genres = Genre.all
    @books = Book.includes(:author, :genre)

    if params[:genre].present?
      @books = @books.where(genre_id: params[:genre])
    end

    if params[:search].present?
      @books = @books.where("title LIKE ?", "%#{params[:search]}%")
    end

    @books = @books.page(params[:page]).per(6)
  end

  def show
    @book = Book.find(params[:id])
  end
end