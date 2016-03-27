class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]
 protect_from_forgery except: [:create, :new]
  # GET /votes
  # GET /votes.json
 def index
    @votes = Vote.all
  end
  # GET /votes/new
  def new
    @vote = Vote.new
  end

  def show
  end
  
  
   def edit
    end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new
    @vote.candidate_id = params[:candidate_id]
    respond_to do |format|
      if @vote.save
        format.html { redirect_to votes_path, notice: 'Vote was successfully created.' }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end



   def update
   respond_to do |format|
     @vote.candidate_id = params[:candidate_id]
     if @result.save
       format.html { redirect_to votes_path, notice: 'Result was successfully updated.' }
       format.json { render :show, status: :ok, location: votes_path }
     else
       format.html { render :edit }
       format.json { render json: @vote.errors, status: :unprocessable_entity }
     end
   end
 end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
   @vote.destroy
   respond_to do |format|
     format.html { redirect_to votes_url, notice: 'Result was successfully destroyed.' }
     format.json { head :no_content }
   end
 end





  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:candidate_id)
    end
end
