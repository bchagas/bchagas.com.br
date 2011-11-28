class ChangeAbstractForDescriptionToPost < ActiveRecord::Migration
  def self.up
    remove_column :posts, :abstract
    add_column :posts, :description, :text
  end

  def self.down
    add_column :posts, :abstract, :text
    remove_column :posts, :description
  end
end
