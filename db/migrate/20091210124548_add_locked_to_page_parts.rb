class AddLockedToPageParts < ActiveRecord::Migration
  def self.up
    add_column :page_parts, :locked, :boolean
  end

  def self.down
    remove_column :page_parts, :locked
  end
end
