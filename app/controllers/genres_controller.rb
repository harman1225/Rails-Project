class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @books = @genre.books.page(params[:page]).per(6)
  end
end