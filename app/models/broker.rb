class Broker < ApplicationRecord
  belongs_to :brokerage
  has_many :reviews
end
