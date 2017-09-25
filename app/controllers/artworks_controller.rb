class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, :set_user, only: [:new, :create, :edit, :update, :upvote, :downvote]

  # GET /art_works
  # GET /art_works.json
  def index
    @artworks = Artwork.all
  end

  # GET /art_works/1
  # GET /art_works/1.json
  def show
  end

  # GET /art_works/new
  def new
    @artwork = Artwork.new
  end

  # GET /art_works/1/edit
  def edit
  end

  # POST /art_works
  # POST /art_works.json
  def create
    @artwork = Artwork.new(art_work_params)
    @artwork.crop_coords = params[:crop_coords]
    @artwork.art_image = params[:artwork][:art_image]
    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: 'Art work was successfully created.' }
        format.json { render :show, status: :created, location: @artwork }
      else
        format.html { render :new }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_works/1
  # PATCH/PUT /art_works/1.json
  def update
    respond_to do |format|
      if @artwork.update(art_work_params)
        format.html { redirect_to @artwork, notice: 'Art work was successfully updated.' }
        format.json { render :show, status: :ok, location: @artwork }
      else
        format.html { render :edit }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_works/1
  # DELETE /art_works/1.json
  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url, notice: 'Art work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @artwork.upvote_from @user
  end

  def downvote
    @artwork.downvote_from @user
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def art_work_params
    params.require(:artwork).permit(:title,
                                    :artist,
                                    :date_painted,
                                    :location)
  end
end
