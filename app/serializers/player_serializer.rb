class PlayerSerializer < ActiveModel::Serializer
  attributes :id, 
             :first_name, 
             :last_name,
             :born,
             :height,
             :weight,
             :position,
             :nat_team,
             :club_team,
             :img_url                                             
end
