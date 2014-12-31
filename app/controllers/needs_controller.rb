class NeedsController < ApplicationController
  before_action :set_need, only: [:show, :edit, :update, :destroy]

  # GET /needs
  # GET /needs.json
  def index
    @needs = Need.where(user: current_user).all
  end

  # GET /needs/1
  # GET /needs/1.json
  def show
  end

  # GET /needs/new
  def new
    not_finished_needs = Need.get_not_finished(current_user)
    not_finished_needs = not_finished_needs.where(feeling_id: params[:feeling_id]) if params[:feeling_id]
    @categories = NeedCard.get_categories
    if not_finished_needs.empty?
      @need = Need.new
      @feeling_id = params[:feeling_id]
    else
      @need = not_finished_needs.first
      @needs =@need.get_needs
      @feeling_id = @need.feeling_id
    end
    feeling = Feeling.includes(:feeling_card).find(@feeling_id) if @feeling_id
    if feeling
      @feeling_title = feeling.feeling_card.title
      @feeling_note = feeling.note
    end

  end

  # GET /needs/1/edit
  def edit
  end

  # POST /needs
  # POST /needs.json
  def create
    @need = Need.new(need_params)

    respond_to do |format|
      if @need.save
        format.html { redirect_to new_need_path}
        format.json { render :show, status: :created, location: @need }
      else
        format.html { render :new }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needs/1
  # PATCH/PUT /needs/1.json
  def update
    puts "update #{@need.as_json} #{updated_params.as_json}"
    respond_to do |format|
      if @need.update(updated_params)
        puts "brucep update success"
        format.html { redirect_to new_need_path }
        format.json { render :show, status: :ok, location: @need }
      else
        format.html { render :edit }
        format.json { render json: @need.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needs/1
  # DELETE /needs/1.json
  def destroy
    @need.destroy
    respond_to do |format|
      format.html { redirect_to needs_url, notice: 'Need was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_need
      @need = Need.find(params[:id])
    end

    def updated_params
      new_params = need_params
      puts "before"
      puts new_params
      if new_params[:category] != @need.category
        new_params.delete(:vneed) if new_params[:vneed]
      end
      puts "after"
      puts new_params
      new_params
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def need_params
      puts params.as_json
      params.require(:need).permit(:category, :vneed, :feeling_id, :note).merge(user_id: current_user.id)
    end
end
