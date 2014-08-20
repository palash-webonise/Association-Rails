class PerchaseHistoriesController < ApplicationController
  before_action :set_perchase_history, only: [:show, :edit, :update, :destroy]

  # GET /perchase_histories
  # GET /perchase_histories.json
  def index
    @perchase_histories = PerchaseHistory.all
  end

  # GET /perchase_histories/1
  # GET /perchase_histories/1.json
  def show
  end

  # GET /perchase_histories/new
  def new
    @perchase_history = PerchaseHistory.new
  end

  # GET /perchase_histories/1/edit
  def edit
  end

  # POST /perchase_histories
  # POST /perchase_histories.json
  def create
    @perchase_history = PerchaseHistory.new(perchase_history_params)

    respond_to do |format|
      if @perchase_history.save
        format.html { redirect_to @perchase_history, notice: 'Perchase history was successfully created.' }
        format.json { render :show, status: :created, location: @perchase_history }
      else
        format.html { render :new }
        format.json { render json: @perchase_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perchase_histories/1
  # PATCH/PUT /perchase_histories/1.json
  def update
    respond_to do |format|
      if @perchase_history.update(perchase_history_params)
        format.html { redirect_to @perchase_history, notice: 'Perchase history was successfully updated.' }
        format.json { render :show, status: :ok, location: @perchase_history }
      else
        format.html { render :edit }
        format.json { render json: @perchase_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perchase_histories/1
  # DELETE /perchase_histories/1.json
  def destroy
    @perchase_history.destroy
    respond_to do |format|
      format.html { redirect_to perchase_histories_url, notice: 'Perchase history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perchase_history
      @perchase_history = PerchaseHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perchase_history_params
      params.require(:perchase_history).permit(:purchase_data, :transaction_type)
    end
end
