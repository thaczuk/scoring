class EventAthletesController < ApplicationController

  def index
    @event_athletes = EventAthlete.all
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
    @event_athlete = EventAthlete.new(athlete_id: @athlete.id)
  end

  def update
    @athlete = Athlete.find(params[:id])
    @competition = Competition.all
    if @athlete.update(athlete_params)
      redirect_to @athlete, notice: 'Athlete was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @athlete = Athlete.find(params[:id])
    @athlete.destroy
    redirect_to athletes_path
  end

private
    def event_athlete_params
      params.require(:event_athlete).permit(:result, :score, :event_rank, :athlete_id, :event_id)
    end
end