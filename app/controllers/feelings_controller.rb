class FeelingsController < ApplicationController
  before_action :set_feeling, only: [:show, :edit, :update, :destroy]

  # GET /feelings
  # GET /feelings.json
  def index
    @feelings = Feeling.all
  end

  # GET /feelings/1
  # GET /feelings/1.json
  def show
  end

  # GET /feelings/new
  def new
    notfinished_feelings = Feeling.get_not_finished_feelings
    puts "new #{notfinished_feelings.as_json}"
    @super_categories = FeelingCard.get_super_categories
    unless notfinished_feelings.empty?
      @feeling = notfinished_feelings.first
      @categories = @feeling.get_categories
      @feelings = @feeling.get_feelings
    else
      @feeling = Feeling.new
      @is_new = true
    end
  end

  # GET /feelings/1/edit
  def edit
  end

  # POST /feelings
  # POST /feelings.json
  def create
    @feeling = Feeling.new(feeling_params)

    respond_to do |format|
      if @feeling.save
        format.html { redirect_to new_feeling_path }
        #format.js
        format.json { render :show, status: :created, location: @feeling }
      else
        format.html { render :new }
        #format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feelings/1
  # PATCH/PUT /feelings/1.json
  def update
    puts "update #{@feeling.as_json} #{updated_params.as_json}"
    respond_to do |format|
      if @feeling.update(updated_params)
        puts "brucep update success"
        #format.html { redirect_to @feeling, notice: 'Feeling was successfully updated.' }
        format.html { redirect_to new_feeling_path }
        format.json { render :show, status: :ok, location: @feeling }
        #format.js
      else
        format.html { render :edit }
        format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feelings/1
  # DELETE /feelings/1.json
  def destroy
    @feeling.destroy
    respond_to do |format|
      format.html { redirect_to feelings_url, notice: 'Feeling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feeling
      @feeling = Feeling.find(params[:id])
    end

    def updated_params
      new_params = feeling_params
      if new_params[:category] != @feeling.category || new_params[:super_category] != @feeling.super_category
        new_params.delete(:vfeeling) if new_params[:vfeeling]
      end
      new_params
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feeling_params
      params.require(:feeling).permit(:feeling_card_id, :super_category, :category, :vfeeling, :experience_id, :note)
    end
end
