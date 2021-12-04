class CreateCryptoCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :crypto_currencies do |t|
      t.string :name
      t.string :abbreviation
      t.integer :multisig
      t.decimal :transaction_cost, default: 0
      t.decimal :rate, default: 0

      t.timestamps
    end
  end
end
