class BrokerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :where_they_work

  def where_they_work
    object.brokerage.name
  end
end
