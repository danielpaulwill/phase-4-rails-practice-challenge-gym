class MembershipsController < ApplicationController
  # validates :gym_id, uniqueness: true

  # Not necessary for Lab
  def index
    memberships = Membership.all
    render json: memberships
  end

  # Create a new membership part 1 of 2
  def create
    # membership = Membership.new(gym_id: params[:gym_id], client_id: params[:client_id], charge: params[:charge])
    
    membership = Membership.create(gym_id: params[:gym_id], client_id: params[:client_id], charge: params[:charge])
    render json: membership
  end

end
