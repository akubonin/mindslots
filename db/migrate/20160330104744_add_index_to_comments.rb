class AddIndexToComments < ActiveRecord::Migration
  def change
    add_index :comments, :slot_id
  end
end
