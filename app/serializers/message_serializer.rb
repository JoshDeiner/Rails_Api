class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_name, :text, :created_at
end
