class CreateProjectProfiles < ActiveRecord::Migration
  def change
    create_table :project_profiles do |t|
      t.integer :category_id, :default => 1
      t.string :name
      t.string :validity
      t.string :region
      t.string :institution_name
      t.text :description
      t.text :objectives
      t.text :scale
      t.text :context
      t.text :disciplines

      t.timestamps
    end
  end
end
