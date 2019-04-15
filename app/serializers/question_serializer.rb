# frozen_string_literal: true

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :anonymous, :creator, :comments

  def creator
    object.user[:handle]
  end
end
