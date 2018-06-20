class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :broker_id, :content, :communication, :team_player, :skill
end
