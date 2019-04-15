# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :body
      t.boolean :anonymous

      t.timestamps
    end
  end
end
