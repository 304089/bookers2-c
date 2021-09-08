class RenameIntroductioColumnToGroups < ActiveRecord::Migration[5.2]
  def change
    rename_column :groups, :introductio, :introduction
  end
end
