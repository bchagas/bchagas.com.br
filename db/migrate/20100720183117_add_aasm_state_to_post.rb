class AddAasmStateToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :aasm_state, :string
  end

  def self.down
    remove_column :posts, :aasm_state
  end
end
