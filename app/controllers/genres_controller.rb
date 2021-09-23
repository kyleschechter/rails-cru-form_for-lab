class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = find_genre
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = find_genre
  end

  def edit
    @genre = find_genre
  end

  private

  def find_genre
    Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
