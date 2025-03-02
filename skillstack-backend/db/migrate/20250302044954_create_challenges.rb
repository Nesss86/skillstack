class CreateChallenges < ActiveRecord::Migration[8.0]
  def change
    create_table :challenges do |t|
      t.text :prompt
      t.string :difficulty
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
