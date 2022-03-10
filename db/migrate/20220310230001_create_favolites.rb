class CreateFavolites < ActiveRecord::Migration[6.1]
  def change
    create_table :favolites do |t|
      t.integer :smoke_id
      t.integer :voise_id

      t.timestamps
    end
  end
end
