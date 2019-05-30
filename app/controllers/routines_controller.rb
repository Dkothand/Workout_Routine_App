class RoutinesController < ApplicationController
  before_action :set_routine, only: [:show, :update, :destroy]

  # GET /routines
  def index
    @routines = Routine.all

    render json: @routines.to_json(include: :exercises)
  end

  # GET /routines/1
  def show
    render json: @routine.to_json(include: :exercises)
  end

  # POST /routines
  def create
    @routine = Routine.new(routine_params)

    if @routine.save
      render json: @routine.to_json(include: :exercises), status: :created, location: @routine
    else
      render json: @routine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routines/1
  def update
    if @routine.update(routine_params)
      render json: @routine
    else
      render json: @routine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routines/1
  def destroy
    @routine.destroy
    render :status => 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routine
      @routine = Routine.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def routine_params
      params.require(:routine).permit(:name, :difficulty)
    end
end
