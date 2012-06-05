class CreateDummies < ActiveRecord::Migration
  def change
    create_table :dummies do |t|
      t.string :title
      t.text :content
      t.string :genre

      t.timestamps
    end
  end
end
