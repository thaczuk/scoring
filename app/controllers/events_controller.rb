class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    @competition = Competition.find(params[:competition])

    if @event.save
      redirect_to @event, notice: 'Event was successfully created'
    else
      render action: 'new'
    end
  end

  def new
    @event = Event.new
    @competition = Competition.find(params[:competition])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def show
    @event = Event.find(params[:id])
    #@event_athletes = @event.event_athletes
    #binding.pry
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet
    def event_params
      params.require(:event).permit(:name, :description, :rank_by_small, :event_weight, :competition_id)
    end
end