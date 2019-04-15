# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :questions
  has_many :comments
end
