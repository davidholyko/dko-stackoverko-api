class AddQuestionToLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :question, foreign_key: true
  end
end
