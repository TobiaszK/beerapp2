class QuestBeersController < ApplicationController
  
  def index
  
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    
    @quest_beers = @questionnaire.quest_beers

  end

  def show
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @beer = @questionnaire.find(params[:beer_id]) 
    @quest_beer  = @beer.quest_beers.find(params[:id])
  end

  
  def new
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @beer = Beer.find(params[:beer_id]) 
    @quest_beer  = QuestBeer.new
  end

  def edit
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
     @quest_beer  = @questionnaire.quest_beers.find(params[:id])
  end

  def create
    
    @quest_beer = @questionnaire.new(quest_beer_params)
    
    respond_to do |format|
      if @quest_beer.save
        format.html { redirect_to questionnaire_beers(@questionnaire), notice: 'Questionnaire was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @quest_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @quest_beer = QuestBeer.find(params[:id])
    if  @quest_beer.update_attributes(params[:quest_beer])
      # Save the item successfully
      redirect_to questionnaire_quest_beer_url(@questionnaire, @quest_beer)
    else
      render :action => "edit"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest_beer
      @quest_beer = QuestBeer.find(params[:id])
      @questionnaire = Questionnaire.find(params[:questionnaire_id])
      @beer = quest_beer_params[:beer_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quest_beer_params
      params.require(:quest_beer).permit(:taste,:color,:price,:design,:average,quest_beer_params[:questionnaire_id],:beer_id)
    end
end
