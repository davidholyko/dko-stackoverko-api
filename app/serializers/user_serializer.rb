# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :handle, :questions, :comments
end
