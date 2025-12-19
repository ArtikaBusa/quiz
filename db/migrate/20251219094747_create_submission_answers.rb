class CreateSubmissionAnswers < ActiveRecord::Migration[8.0]
  def change
    create_table :submission_answers do |t|
      t.references :submission, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.text :answer

      t.timestamps
    end
  end
end
