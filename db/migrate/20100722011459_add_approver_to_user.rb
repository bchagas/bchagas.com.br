class AddApproverToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :approver, :boolean
  end

  def self.down
    remove_column :users, :approver
  end
end
