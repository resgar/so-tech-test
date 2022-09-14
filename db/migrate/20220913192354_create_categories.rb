class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :external_id, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
