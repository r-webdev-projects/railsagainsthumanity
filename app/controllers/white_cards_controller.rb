class WhiteCardsController < ApplicationController
  before_action :set_white_card, only: [:show, :edit, :update, :destroy]

  # GET /white_cards
  # GET /white_cards.json
  def index
    @white_cards = WhiteCard.all
  end

  # GET /white_cards/1
  # GET /white_cards/1.json
  def show
  end

  # GET /white_cards/new
  def new
    @white_card = WhiteCard.new
  end

  # GET /white_cards/1/edit
  def edit
  end

  # POST /white_cards
  # POST /white_cards.json
  def create
    @white_card = WhiteCard.new(white_card_params)

    respond_to do |format|
      if @white_card.save
        format.html { redirect_to @white_card, notice: 'White card was successfully created.' }
        format.json { render :show, status: :created, location: @white_card }
      else
        format.html { render :new }
        format.json { render json: @white_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /white_cards/1
  # PATCH/PUT /white_cards/1.json
  def update
    respond_to do |format|
      if @white_card.update(white_card_params)
        format.html { redirect_to @white_card, notice: 'White card was successfully updated.' }
        format.json { render :show, status: :ok, location: @white_card }
      else
        format.html { render :edit }
        format.json { render json: @white_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /white_cards/1
  # DELETE /white_cards/1.json
  def destroy
    @white_card.destroy
    respond_to do |format|
      format.html { redirect_to white_cards_url, notice: 'White card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_white_card
      @white_card = WhiteCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def white_card_params
      params.require(:white_card).permit(:text)
    end
end
