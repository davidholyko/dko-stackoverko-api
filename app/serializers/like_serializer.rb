class LikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :comments
  has_one :questions
end
