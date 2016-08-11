class ResultsController < ApplicationController
  # before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /results
  # GET /results.json
  def index

  end

  # GET /results/1
  # GET /results/1.json
  def show
    @participant = Participant.find(params[:id])
    @participant_id = @participant["id"]
    @weigh_in = WeighIn.find(@participant_id)
  end

  # GET /results/new
  def new

  end

end
