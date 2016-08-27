class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title,		    null: false
      t.text   :text,         null: false
      t.text   :content,		  null: false
      t.string :image
      t.string :status,		    null: false, default: 'En attente'

      t.timestamps null: false
    end
  end
end
