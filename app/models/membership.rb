class Membership < ApplicationRecord
  # validates :client_id, uniqueness: true
  validates :client_id, uniqueness: { scope: :gym_id, message: "only one membership per gym"}
  belongs_to :gym
  belongs_to :client
end
