class AddPhotoCardToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :photo_card, :string
  end
end
