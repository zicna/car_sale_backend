class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :comment, :content
  has_one :user
end
