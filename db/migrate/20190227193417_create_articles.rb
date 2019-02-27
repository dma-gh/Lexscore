class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.decimal :score
      t.string :title
      t.string :url
      t.string :text
      t.string :tags, array: true
      t.string :publication
      t.timestamps
    end
  end
end
