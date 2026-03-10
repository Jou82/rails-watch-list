class AddPhotoToList < ActiveRecord::Migration[8.1]
  def change
    add_column :list, :photo, :string
  end
end
