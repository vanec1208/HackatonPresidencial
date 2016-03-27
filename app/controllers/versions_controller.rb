class VersionsController < ApplicationController
  before_action :set_version, only: [:show, :edit, :update, :destroy]

  # GET /versions
  # GET /versions.json
  def index
    @versions = Version.all 
  end

  # GET /versions/1
  # GET /versions/1.json

  # GET /versions/new
 

  # GET /versions/1/edit
  def edit
  end

  # POST /versions
  # POST /versions.json


  # PATCH/PUT /versions/1
  # PATCH/PUT /versions/1.json
  def update
    respond_to do |format|
      if @version.update(version_params)
        format.html { redirect_to versions_path, notice: 'Version was successfully updated.' }
        format.json { render :show, status: :ok, location: @version }
      else
        format.html { render :edit }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /versions/1
  # DELETE /versions/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_version
      @version = Version.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def version_params
      params.require(:version).permit(:candidates, :questions, :tips)
    end
end
