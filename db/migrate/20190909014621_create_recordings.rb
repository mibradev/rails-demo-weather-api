class CreateRecordings < ActiveRecord::Migration[6.0]
  def change
    create_table :recordings do |t|
      t.integer :temperature
      t.string :status
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
