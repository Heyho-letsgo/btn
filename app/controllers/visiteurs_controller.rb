class VisiteursController < ApplicationController
  before_action :set_visiteur, only: [:show, :edit, :update, :destroy]

  # GET /visiteurs
  # GET /visiteurs.json
  def index
    @visiteurs = Visiteur.all
  end

  # GET /visiteurs/1
  # GET /visiteurs/1.json
  def show
  end

  # GET /visiteurs/new
  def new
    @visiteur = Visiteur.new
  end

  # GET /visiteurs/1/edit
  def edit
  end

  # POST /visiteurs
  # POST /visiteurs.json
  def create
    @visiteur = Visiteur.new(visiteur_params)

    respond_to do |format|
      if @visiteur.save
        format.html { redirect_to @visiteur, notice: 'Visiteur was successfully created.' }
        format.json { render :show, status: :created, location: @visiteur }
      else
        format.html { render :new }
        format.json { render json: @visiteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visiteurs/1
  # PATCH/PUT /visiteurs/1.json
  def update
    respond_to do |format|
      if @visiteur.update(visiteur_params)
        format.html { redirect_to @visiteur, notice: 'Visiteur was successfully updated.' }
        format.json { render :show, status: :ok, location: @visiteur }
      else
        format.html { render :edit }
        format.json { render json: @visiteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visiteurs/1
  # DELETE /visiteurs/1.json
  def destroy
    @visiteur.destroy
    respond_to do |format|
      format.html { redirect_to visiteurs_url, notice: 'Visiteur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visiteur
      @visiteur = Visiteur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visiteur_params
      params.require(:visiteur).permit(:email)
    end
end
