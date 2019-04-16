# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :handle
  has_many :questions
  has_many :comments
end
