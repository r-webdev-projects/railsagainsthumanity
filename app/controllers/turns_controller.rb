class TurnsController < ApplicationController
  before_action :set_turn, only: [:edit, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  # GET /turns
  # GET /turns.json
  def index
    @turns = Turn.all
  end

  # GET /turns/1
  # GET /turns/1.json
  def show
    image = MiniMagick::Image.open("#{Rails.root}/app/assets/images/blank-white-card.jpg")
    image.draw "text 50,50 'There is a problem with the asset path'"
    image.write "#{Rails.root}/app/assets/images/output.jpg"
  end

  # GET /turns/new
  def new
    @turn = Turn.new
  end

  # GET /turns/1/edit
  def edit
  end

  # GET /turns/test
  def test
    image = MiniMagick::Image.open("#{Rails.root}/app/assets/images/blank-white-card.jpg")
    image.draw "font Helvetica"
    image.draw "text 100,100 'LOOK I CAN MAKE MY OWN CARDS!'"
    image.write "#{Rails.root}/app/assets/images/output.jpg"

    render json: {
      text: 'this is a test of the emergency BS system',
      attachments: [
        fallback: 'Required plain-text summary of the attachment',
        color: '#36a64f',
        pretext: 'Optional text that appears above the attachment block',
        image_url: "http://i.imgur.com/nuXsGVf.jpg"
      ]
    }
  end

  # POST /turns
  # POST /turns.json
  def create
    @turn = Turn.new(turn_params)

    respond_to do |format|
      if @turn.save
        format.html { redirect_to @turn, notice: 'Turn was successfully created.' }
        format.json { render :show, status: :created, location: @turn }
      else
        format.html { render :new }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turns/1
  # PATCH/PUT /turns/1.json
  def update
    respond_to do |format|
      if @turn.update(turn_params)
        format.html { redirect_to @turn, notice: 'Turn was successfully updated.' }
        format.json { render :show, status: :ok, location: @turn }
      else
        format.html { render :edit }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turns/1
  # DELETE /turns/1.json
  def destroy
    @turn.destroy
    respond_to do |format|
      format.html { redirect_to turns_url, notice: 'Turn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turn
      @turn = Turn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turn_params
      params[:turn]
    end
end
