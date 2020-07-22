class AddImageUrlToSodas < ActiveRecord::Migration[6.0]
  def change
    add_column :sodas, :image_url, :string
  end
end
