# frozen_string_literal: true

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :background, :code, :results, :tags, :anonymous, :creator, :user, :creation_date
  has_many :comments
  has_many :likes

  def creation_date
    object[:created_at].to_s[0..9]
  end

  def creator
    object.user[:handle]
  end

  def creator_id
    object.user(:id)
  end
end
