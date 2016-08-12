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
    @weigh_in = @participant.weigh_in
  end

  # GET /results/new
  def new

  end

end
