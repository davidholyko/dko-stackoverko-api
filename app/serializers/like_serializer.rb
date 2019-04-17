# frozen_string_literal: true

class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :creator
  # has_one :comments
  has_one :question

  def creator
    object.user[:handle]
  end

  def question_id
    object.question[:id]
  end
end
