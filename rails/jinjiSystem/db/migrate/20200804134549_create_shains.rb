class CreateShains < ActiveRecord::Migration[6.0]
  def change
    create_table :shains do |t|
      t.string :name
      t.string :yakusyoku
      t.integer :kihonkyu

      t.timestamps
    end
  end
end
