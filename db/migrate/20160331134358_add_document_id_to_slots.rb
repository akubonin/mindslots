class AddDocumentIdToSlots < ActiveRecord::Migration
  def change
    add_belongs_to :slots, :document, index: true
  end
end
