class AddUsernameToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :username, :string
  end
end
