# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :anonymous, :creator, :question_id

  def creator
    object.user[:handle]
  end
end
