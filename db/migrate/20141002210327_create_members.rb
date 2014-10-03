class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :group_id
      t.integer :person_id
      t.string :role
      t.date :joined

      t.timestamps
    end
  end
end
