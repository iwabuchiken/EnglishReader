class CreateQaItems < ActiveRecord::Migration
  def change
    create_table :qa_items do |t|
      t.string :title
      t.string :link
      t.text :content
      t.string :genre

      t.timestamps
    end
  end
end
