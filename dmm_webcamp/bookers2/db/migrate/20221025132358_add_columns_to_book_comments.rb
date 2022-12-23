class AddColumnsToBookComments < ActiveRecord::Migration[6.1]
  def change
    add_column :book_comments, :user_id, :integer
    add_column :book_comments, :book_id, :integer
  end
end
