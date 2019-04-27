# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :summary
      t.string :background
      t.string :code
      t.string :results
      t.string :tags
      t.boolean :anonymous

      t.timestamps
    end
  end
end
