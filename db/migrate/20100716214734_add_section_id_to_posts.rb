class AddSectionIdToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :section_id, :integer
  end

  def self.down
    remove_column :posts, :section_id
  end
end
