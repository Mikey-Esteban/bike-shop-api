class CreateSneakerImages < ActiveRecord::Migration[6.0]
  def change
    create_table :sneaker_images do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.belongs_to :sneaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
