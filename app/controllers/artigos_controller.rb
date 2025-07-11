class ArtigosController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_artigo, only: %i[ show edit update destroy ]

  # GET /artigos or /artigos.json
  def index
    @artigos = Artigo.all
  end

  # GET /artigos/1 or /artigos/1.json
  def show
  end

  # GET /artigos/new
  def new
    @artigo = Artigo.new
  end

  # GET /artigos/1/edit
  def edit
  end

  # POST /artigos or /artigos.json
  def create
    @artigo = current_user.artigos.build(artigo_params)

    respond_to do |format|
      if @artigo.save
        format.html { redirect_to @artigo, notice: "Artigo was successfully created." }
        format.json { render :show, status: :created, location: @artigo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artigos/1 or /artigos/1.json
  def update
    respond_to do |format|
      if @artigo.update(artigo_params)
        format.html { redirect_to @artigo, notice: "Artigo was successfully updated." }
        format.json { render :show, status: :ok, location: @artigo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artigos/1 or /artigos/1.json
  def destroy
    @artigo.destroy!

    respond_to do |format|
      format.html { redirect_to artigos_path, status: :see_other, notice: "Artigo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artigo
      @artigo = Artigo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def artigo_params
      params.expect(artigo: [ :title, :content ])
    end
end
