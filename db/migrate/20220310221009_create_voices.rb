class CreateVoices < ActiveRecord::Migration[6.1]
  def change
    create_table :voices do |t|
      t.text :story
      t.integer :drink_id

      t.timestamps
    end
  end
end
