class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :project_profile_id
      t.string :name
      t.string :email
      t.string :phone
      t.string :role

      t.timestamps
    end
  end
end
