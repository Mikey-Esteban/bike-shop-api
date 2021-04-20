class CreateSneakers < ActiveRecord::Migration[6.0]
  def change
    create_table :sneakers do |t|
      t.string :name, unique: true, null: false
      t.float :price, null: false
      t.string :slug, unique: true

      t.timestamps
    end
  end
end
