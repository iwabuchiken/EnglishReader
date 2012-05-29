class CreateWordSets < ActiveRecord::Migration
  def change
    create_table :word_sets do |t|
      t.string :en
      t.string :jp
      t.integer :text_id

      t.timestamps
    end
  end
end
