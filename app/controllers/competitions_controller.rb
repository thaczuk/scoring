class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.all
  end

  def create
    @competition = Competition.new(competition_params)

    if @competition.save
      redirect_to @competition, notice: 'Competition was successfully created'
    else
      render action: 'new'
    end
  end

  def new
    @competition = Competition.new
  end

  def edit
    @competition = Competition.find(params[:id])
  end

  def show
    @competition = Competition.find(params[:id])
  end

  def update
    if @competition.update(competition_params)
      redirect_to @competition, notice: 'Competition was successfully update.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @competition = Competition.find(params[:id])
    @competition.destroy

    redirect_to competitions_path
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition
      @competition = Competition.find(params[:id])
    end

    # Never trust parameters from the scary internet
    def competition_params
      params.require(:competition).permit(:name, :when, :where, :description, :competition_type)
    end

end