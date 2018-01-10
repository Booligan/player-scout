class Player < ApplicationRecord
  validates :first_name, :last_name, :born, :height, :weight, :position, :nat_team, :club_team, :img_url, presence: true
end
