# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :anonymous, :creator

  def creator
    object.user[:handle]
  end
end
