class BlackCardsController < ApplicationController
  before_action :set_black_card, only: [:show, :edit, :update, :destroy]

  # GET /black_cards
  # GET /black_cards.json
  def index
    @black_cards = BlackCard.all
  end

  # GET /black_cards/1
  # GET /black_cards/1.json
  def show
  end

  # GET /black_cards/new
  def new
    @black_card = BlackCard.new
  end

  # GET /black_cards/1/edit
  def edit
  end

  # POST /black_cards
  # POST /black_cards.json
  def create
    @black_card = BlackCard.new(black_card_params)

    respond_to do |format|
      if @black_card.save
        format.html { redirect_to @black_card, notice: 'Black card was successfully created.' }
        format.json { render :show, status: :created, location: @black_card }
      else
        format.html { render :new }
        format.json { render json: @black_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /black_cards/1
  # PATCH/PUT /black_cards/1.json
  def update
    respond_to do |format|
      if @black_card.update(black_card_params)
        format.html { redirect_to @black_card, notice: 'Black card was successfully updated.' }
        format.json { render :show, status: :ok, location: @black_card }
      else
        format.html { render :edit }
        format.json { render json: @black_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /black_cards/1
  # DELETE /black_cards/1.json
  def destroy
    @black_card.destroy
    respond_to do |format|
      format.html { redirect_to black_cards_url, notice: 'Black card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_black_card
      @black_card = BlackCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def black_card_params
      params.require(:black_card).permit(:text, :blanks)
    end
end
