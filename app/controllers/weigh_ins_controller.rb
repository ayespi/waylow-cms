class WeighInsController < ApplicationController
  before_action :set_weigh_in, only: [:show, :edit, :update, :destroy]

  # GET /weigh_ins
  # GET /weigh_ins.json
  def index
    @weigh_ins = WeighIn.all
  end

  # GET /weigh_ins/1
  # GET /weigh_ins/1.json
  def show
    @weigh_in = WeighIn.find(params[:id])
  end

  # GET /weigh_ins/new
  def new
    @weigh_in = WeighIn.new
  end

  # GET /weigh_ins/1/edit
  def edit
    @weigh_in = WeighIn.find(params[:id])
  end

  # POST /weigh_ins
  # POST /weigh_ins.json
  def create
    @weigh_in = WeighIn.new(weigh_in_params)

    respond_to do |format|
      if @weigh_in.save
        format.html { redirect_to @weigh_in, notice: 'Weigh in was successfully created.' }
        format.json { render :show, status: :created, location: @weigh_in }
      else
        format.html { render :new }
        format.json { render json: @weigh_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weigh_ins/1
  # PATCH/PUT /weigh_ins/1.json
  def update
    respond_to do |format|
      if @weigh_in.update(weigh_in_params)
        format.html { redirect_to @weigh_in, notice: 'Weigh in was successfully updated.' }
        format.json { render :show, status: :ok, location: @weigh_in }
      else
        format.html { render :edit }
        format.json { render json: @weigh_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weigh_ins/1
  # DELETE /weigh_ins/1.json
  def destroy
    @weigh_in.destroy
    respond_to do |format|
      format.html { redirect_to weigh_ins_url, notice: 'Weigh in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weigh_in
      @weigh_in = WeighIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weigh_in_params
      params.require(:weigh_in).permit(:participant_id, :team_id, :weight_begin, :weight_1, :weight_2, :weight_3, :weight_4, :weight_5, :weight_6, :weight_7, :weight_8, :weight_9, :weight_10, :weight_end)
    end
end
