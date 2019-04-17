# frozen_string_literal: true

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :anonymous, :creator, :user
  has_many :comments
  has_many :likes

  def creator
    object.user[:handle]
  end

  def creator_id
    object.user(:id)
  end
end
