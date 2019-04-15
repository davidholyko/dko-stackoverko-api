class Like < ApplicationRecord
  belongs_to :comments
  belongs_to :questions
end
