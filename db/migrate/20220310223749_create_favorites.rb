class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :drink_id
      t.integer :voice_id

      t.timestamps
    end
  end
end
