class AddAbstractToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :abstract, :text
  end

  def self.down
    remove_column :posts, :abstract
  end
end
