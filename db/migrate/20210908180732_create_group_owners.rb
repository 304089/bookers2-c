class CreateGroupOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :group_owners do |t|

      t.integer :user_id
      t.integer :group_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
