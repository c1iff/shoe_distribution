class ChangeShoesTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :shoes, :type, :style
  end
end
