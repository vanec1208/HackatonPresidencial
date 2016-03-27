class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :edit, :update, :destroy]

  # GET /tips
  # GET /tips.json

  def index
    @tips = Tip.all
  end

  # GET /tips/1
  # GET /tips/1.json
  def show
    unless current_user
      redirect_to root_path
    end
  end

  # GET /tips/new
  def new
    if current_user
      @tip = Tip.new
    else
      redirect_to root_path
    end
  end

  # GET /tips/1/edit
  def edit
    unless current_user
      redirect_to root_path
      
    end
  end

  # POST /tips
  # POST /tips.json
  def create
    @tip = Tip.new(tip_params)

    respond_to do |format|
      if @tip.save
        format.html { redirect_to tips_path, notice: 'Tip was successfully created.' }
        format.json { render :show, status: :created, location: @tip }
      else
        format.html { render :new }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tips/1
  # PATCH/PUT /tips/1.json
  def update
    respond_to do |format|
      if @tip.update(tip_params)
        format.html { redirect_to tips_path, notice: 'Tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @tip }
      else
        format.html { render :edit }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tips/1
  # DELETE /tips/1.json
  def destroy
    if current_user
      @tip.destroy
      respond_to do |format|
        format.html { redirect_to tips_url, notice: 'Tip was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @tip = Tip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_params
      params.require(:tip).permit(:message, :title)
    end
end
