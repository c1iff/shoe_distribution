class CreateShoeAndStoreTables < ActiveRecord::Migration[5.0]
  def change
    create_table(:shoes) do |t|
      t.column(:name, :string)
      t.column(:brand, :string)
      t.column(:description, :string)
      t.column(:type, :string)
      t.column(:cost, :integer)

      t.timestamps
    end

    create_table(:stores) do |t|
      t.column(:name, :string)
      t.column(:city, :string)
      t.column(:street, :string)
      t.column(:state, :string)

      t.timestamps
    end

    create_table(:shoes_stores) do |t|
      t.column(:shoe_id, :integer)
      t.column(:store_id, :integer)

      t.timestamps
    end
  end
end
