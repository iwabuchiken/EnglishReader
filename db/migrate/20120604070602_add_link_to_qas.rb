class AddLinkToQas < ActiveRecord::Migration
  def change
    add_column :qas, :link, :string

  end
end
