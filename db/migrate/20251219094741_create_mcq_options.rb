class CreateMcqOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :mcq_options do |t|
      t.references :question, null: false, foreign_key: true
      t.string :text
      t.boolean :correct

      t.timestamps
    end
  end
end
