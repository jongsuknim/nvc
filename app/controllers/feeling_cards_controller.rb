class FeelingCardsController < ApplicationController
  before_action :set_feeling_card, only: [:show, :edit, :update, :destroy]

  # GET /feeling_cards
  # GET /feeling_cards.json
  def index
    @feeling_cards = FeelingCard.all
  end

  # GET /feeling_cards/1
  # GET /feeling_cards/1.json
  def show
  end

  # GET /feeling_cards/new
  def new
    @feeling_card = FeelingCard.new
  end

  # GET /feeling_cards/1/edit
  def edit
  end

  # POST /feeling_cards
  # POST /feeling_cards.json
  def create
    @feeling_card = FeelingCard.new(feeling_card_params)

    respond_to do |format|
      if @feeling_card.save
        format.html { redirect_to @feeling_card, notice: 'Feeling card was successfully created.' }
        format.json { render :show, status: :created, location: @feeling_card }
      else
        format.html { render :new }
        format.json { render json: @feeling_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feeling_cards/1
  # PATCH/PUT /feeling_cards/1.json
  def update
    respond_to do |format|
      if @feeling_card.update(feeling_card_params)
        format.html { redirect_to @feeling_card, notice: 'Feeling card was successfully updated.' }
        format.json { render :show, status: :ok, location: @feeling_card }
      else
        format.html { render :edit }
        format.json { render json: @feeling_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feeling_cards/1
  # DELETE /feeling_cards/1.json
  def destroy
    @feeling_card.destroy
    respond_to do |format|
      format.html { redirect_to feeling_cards_url, notice: 'Feeling card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feeling_card
      @feeling_card = FeelingCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feeling_card_params
      params.require(:feeling_card).permit(:super_category, :category, :title)
    end
end
