class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)

    if @film.save
      redirect_to @film
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])

    if @film.update(film_params)
      redirect_to @film
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy

    redirect_to films_path, status: :see_other
  end

  private
    def film_params
      params.require(:film).permit(:title, :year_of_release, :plot,
                    :country,
                    :duration,
                    :director_id,
                    :genre_id)
    end
end
