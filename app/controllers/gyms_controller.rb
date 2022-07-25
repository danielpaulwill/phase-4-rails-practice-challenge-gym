class GymsController < ApplicationController

  # Not necessary for Lab
  def index
    gyms = Gym.all
    render json: gyms
  end

  # View one specific gym Parts 1 & 2
  # COMPLETE
  def show
    gym = Gym.find_by(id: params[:id])
    if gym
      render json: gym
    else
      render json: { error: "Gym not found" }, status: :not_found
    end
  end

  #Delete a gym Parts 1 & 2
  #COMPLETE
  def destroy
    gym = Gym.find_by(id: params[:id])
    if gym
      gym.destroy
      render json: {}, status: :ok
    else
      render json: { error: "Gym not found"}, status: :not_found
    end
  end

end
