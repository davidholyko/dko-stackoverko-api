# frozen_string_literal: true

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :anonymous, :creator, :likes, :user
  has_many :comments
  # has_many :likes

  def creator
    object.user[:handle]
  end
end
