class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.text :content
      t.integer :question_type
      t.boolean :correct_boolean_answer
      t.text :correct_text_answer

      t.timestamps
    end
  end
end
