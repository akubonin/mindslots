class Comment < ActiveRecord::Base
  belongs_to :slot

  validates :body, presence: true
  validates :slot_id, presence: true
  validates :slot_id, uniqueness: true

end
