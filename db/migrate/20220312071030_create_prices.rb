class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|

      t.string :money
      t.string :count
      t.timestamps
    end
  end
end
