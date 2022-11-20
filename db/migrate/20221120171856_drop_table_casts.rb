class DropTableCasts < ActiveRecord::Migration[7.0]
  def up
    drop_table :casts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
