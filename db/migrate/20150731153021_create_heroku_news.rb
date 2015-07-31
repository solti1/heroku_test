class CreateHerokuNews < ActiveRecord::Migration
  def change
    create_table :heroku_news do |t|
      t.text :title
      t.text :description

      t.timestamps null: false
    end
  end
end
