class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|

      t.string :name
      t.string :introductio
      t.string :image_id
      t.string :owner_id
      t.timestamps
    end
  end
end
