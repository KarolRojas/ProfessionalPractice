class CreateModes < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.integer :project_profile_id
      t.boolean :project
      t.boolean :program_part
      t.boolean :program
      t.string :another

      t.timestamps
    end
  end
end
