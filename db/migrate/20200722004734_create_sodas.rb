class CreateSodas < ActiveRecord::Migration[6.0]
  def change
    create_table :sodas do |t|
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
