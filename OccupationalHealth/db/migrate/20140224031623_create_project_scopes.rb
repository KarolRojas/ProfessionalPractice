class CreateProjectScopes < ActiveRecord::Migration
  def change
    create_table :project_scopes do |t|
      t.integer :project_profile_id
      t.boolean :research
      t.boolean :actions
      t.boolean :policy
      t.string :another

      t.timestamps
    end
  end
end
