class CreatePonies < ActiveRecord::Migration
  def change
    create_table :ponies do |t|
      t.string :name
      t.string :profession

      t.timestamps null: false
    end
  end
end
