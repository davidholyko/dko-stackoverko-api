# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question

  # a comment has likes
  has_many :likes
end
