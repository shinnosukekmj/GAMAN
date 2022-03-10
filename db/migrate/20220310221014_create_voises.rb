class CreateVoises < ActiveRecord::Migration[6.1]
  def change
    create_table :voises do |t|
      t.text :story
      t.integer :smoke_id

      t.timestamps
    end
  end
end
