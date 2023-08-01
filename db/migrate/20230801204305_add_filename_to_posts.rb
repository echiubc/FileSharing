class AddFilenameToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :filename, :string
  end
end
