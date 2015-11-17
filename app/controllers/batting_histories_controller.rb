class BattingHistoriesController < ApplicationController
  before_action :set_batting_history, only: [:show, :edit, :update, :destroy]

  # GET /batting_histories
  # GET /batting_histories.json
  def index
    @batting_histories = BattingHistory.all
  end

  # GET /batting_histories/1
  # GET /batting_histories/1.json
  def show
  end

  # GET /batting_histories/new
  def new
    @batting_history = BattingHistory.new
  end

  # GET /batting_histories/1/edit
  def edit
  end

  # POST /batting_histories
  # POST /batting_histories.json
  def create
    @batting_history = BattingHistory.new(batting_history_params)

    respond_to do |format|
      if @batting_history.save
        format.html { redirect_to @batting_history, notice: 'Batting history was successfully created.' }
        format.json { render :show, status: :created, location: @batting_history }
      else
        format.html { render :new }
        format.json { render json: @batting_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batting_histories/1
  # PATCH/PUT /batting_histories/1.json
  def update
    respond_to do |format|
      if @batting_history.update(batting_history_params)
        format.html { redirect_to @batting_history, notice: 'Batting history was successfully updated.' }
        format.json { render :show, status: :ok, location: @batting_history }
      else
        format.html { render :edit }
        format.json { render json: @batting_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batting_histories/1
  # DELETE /batting_histories/1.json
  def destroy
    @batting_history.destroy
    respond_to do |format|
      format.html { redirect_to batting_histories_url, notice: 'Batting history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batting_history
      @batting_history = BattingHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batting_history_params
      params.require(:batting_history).permit(:date, :at_bats, :hits)
    end
end
