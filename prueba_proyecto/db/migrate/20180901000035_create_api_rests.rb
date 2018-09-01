class CreateApiRests < ActiveRecord::Migration[5.2]
  def change
    create_table :api_rests do |t|
      t.string :title
      t.text :body
      t.integer :count

      t.timestamps
    end
  end
end
