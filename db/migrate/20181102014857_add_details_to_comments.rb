class AddDetailsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :created_at, :datetime
    add_column :comments, :updated_at, :datetime
    add_reference :comments, :post, index: true
  end
end
