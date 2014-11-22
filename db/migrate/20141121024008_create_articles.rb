class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :discussable, polymorphic: true
      t.timestamps
    end
  end
end
