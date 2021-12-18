class CreateShains < ActiveRecord::Migration[6.1]
  def change
    create_table :shains do |t|
      t.string :name
      t.string :yakushoku
      t.integer :kihonkyu

      t.timestamps
    end
  end
end
