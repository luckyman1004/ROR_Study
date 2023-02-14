class AddTitleColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :title, :string
  end
end
