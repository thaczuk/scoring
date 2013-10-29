class CompetitionCategoriesController < ApplicationController

  def index
    @competition_categories = CompetitionCategory.all
  end

  def create
    @competition_category = CompetitionCategory.new(competition_category_params)

    if @competition_category.save
      redirect_to @competition_category, notice: 'CompetitionCategory was successfully created'
    else
      render action: 'new'
    end
  end

  def new
    @competition_category = CompetitionCategory.new
  end

  def edit
    @competition_category = CompetitionCategory.find(params[:id])
  end

  def show
    @competition_category = CompetitionCategory.find(params[:id])
  end

  def update
    @competition_category = CompetitionCategory.find(params[:id])
    if @competition_category.update(competition_category_params)
      redirect_to @competition_category, notice: 'CompetitionCategory was successfully updated.'
    else
      render action: 'edit'
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition_category
      @competition_category = CompetitionCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet
    def competition_category_params
      params.require(:competition_category).permit(:name)
    end

end