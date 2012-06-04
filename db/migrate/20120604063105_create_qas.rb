class CreateQas < ActiveRecord::Migration
  def change
    create_table :qas do |t|
      t.string :title
      t.text :content
      t.string :genre

      t.timestamps
    end
  end
end
