class CreateResource < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.integer :resource_type
      t.decimal :rate, default: 0

      t.timestamps
    end
  end
end
