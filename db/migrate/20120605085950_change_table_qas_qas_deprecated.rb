class ChangeTableQasQasDeprecated < ActiveRecord::Migration
  def up
    rename_table :qas, :qas_deprecated
  end

  def down
    rename_table :qas_deprecated, :qas
  end
end
