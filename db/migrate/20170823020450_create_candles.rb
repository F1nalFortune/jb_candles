class CreateCandles < ActiveRecord::Migration
  def change
    create_table :candles do |t|
      t.string :title
      t.string :body
      t.string :price

      t.timestamps null: false
    end
  end
end
