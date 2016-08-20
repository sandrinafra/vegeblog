class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title,		null: false
      t.text   :text,		null: false
      t.string :photo
      t.string :status,		null: false

      t.timestamps null: false
    end
  end
end
