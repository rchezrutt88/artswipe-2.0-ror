class ArtPiecesController < ApplicationController
  before_action :set_art_piece, only: [:show, :update, :destroy]

  # GET /art_pieces
  def index
    @art_pieces = ArtPiece.all

    render json: @art_pieces
  end

  # GET /art_pieces/1
  def show
    render json: @art_piece
  end

  # POST /art_pieces
  def create
    @art_piece = ArtPiece.new(art_piece_params)

    if @art_piece.save
      render json: @art_piece, status: :created, location: @art_piece
    else
      render json: @art_piece.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /art_pieces/1
  def update
    if @art_piece.update(art_piece_params)
      render json: @art_piece
    else
      render json: @art_piece.errors, status: :unprocessable_entity
    end
  end

  # DELETE /art_pieces/1
  def destroy
    @art_piece.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_art_piece
    @art_piece = ArtPiece.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def art_piece_params
    params.require(:art_piece).permit(:title, :artist)
  end
end
