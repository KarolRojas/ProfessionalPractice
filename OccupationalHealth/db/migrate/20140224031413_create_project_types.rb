class CreateProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_types do |t|
      t.integer :project_profile_id
      t.boolean :university_research
      t.boolean :government_institution
      t.boolean :ngo
      t.boolean :several
      t.string :another

      t.timestamps
    end
  end
end
