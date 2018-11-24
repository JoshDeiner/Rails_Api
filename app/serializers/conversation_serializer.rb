class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :category_id
  has_many :messages
end
