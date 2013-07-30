class AthletesController < ApplicationController

  def index
    @athletes = Athlete.all
  end

  def create
    @athlete = Athlete.new(athlete_params)

    if @athlete.save
      redirect_to @athlete, notice: 'Athlete was successfully created'
    else
      render action: 'new'
    end
  end

  def new
    @athlete = Athlete.new
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def update
    if @athlete.update(athlete_params)
      redirect_to @athlete, notice: 'Athlete was successfully update.'
    else
      render action: 'edit'
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    # Never trust parameters from the scary internet
    def athlete_params
      params.require(:athlete).permit(:firstname, :lastname, :gender, :age,
                                                        :height, :weight, :affiliation)
    end

end