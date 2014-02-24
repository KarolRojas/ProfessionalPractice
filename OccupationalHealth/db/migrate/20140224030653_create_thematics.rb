class CreateThematics < ActiveRecord::Migration
  def change
    create_table :thematics do |t|
      t.integer :project_profile_id
      t.boolean :minery
      t.boolean :pesticides
      t.boolean :occupational_health
      t.boolean :account_management
      t.boolean :solid_waste
      t.boolean :public_health
      t.boolean :animal_health
      t.string :another

      t.timestamps
    end
  end
end
