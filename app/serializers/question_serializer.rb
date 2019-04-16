# frozen_string_literal: true

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :anonymous, :creator
  has_many :comments

  def creator
    object.user[:handle]
  end
end
