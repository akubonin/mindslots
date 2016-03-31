class AddSlotIdToComments < ActiveRecord::Migration
  def change
    # add_column :comments, :slot_id, :integer
    # add_reference :comments, :slot
    add_belongs_to :comments, :slot
  end
end
