class NeedCardsController < ApplicationController
  before_action :set_need_card, only: [:show, :edit, :update, :destroy]

  # GET /need_cards
  # GET /need_cards.json
  def index
    @need_cards = NeedCard.all
  end

  # GET /need_cards/1
  # GET /need_cards/1.json
  def show
  end

  # GET /need_cards/new
  def new
    @need_card = NeedCard.new
  end

  # GET /need_cards/1/edit
  def edit
  end

  # POST /need_cards
  # POST /need_cards.json
  def create
    @need_card = NeedCard.new(need_card_params)

    respond_to do |format|
      if @need_card.save
        format.html { redirect_to @need_card, notice: 'Need card was successfully created.' }
        format.json { render :show, status: :created, location: @need_card }
      else
        format.html { render :new }
        format.json { render json: @need_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /need_cards/1
  # PATCH/PUT /need_cards/1.json
  def update
    respond_to do |format|
      if @need_card.update(need_card_params)
        format.html { redirect_to @need_card, notice: 'Need card was successfully updated.' }
        format.json { render :show, status: :ok, location: @need_card }
      else
        format.html { render :edit }
        format.json { render json: @need_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /need_cards/1
  # DELETE /need_cards/1.json
  def destroy
    @need_card.destroy
    respond_to do |format|
      format.html { redirect_to need_cards_url, notice: 'Need card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_need_card
      @need_card = NeedCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def need_card_params
      params.require(:need_card).permit(:category, :title)
    end
end
