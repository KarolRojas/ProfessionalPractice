class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :category_id
      t.integer :answer_type_id
      t.string :description
      t.string :language_key

      t.timestamps
    end
  end
end
