class Slot < ActiveRecord::Base
  has_many :comments
  belongs_to :document

  validates :title, presence: true
  validates :document_id, uniqueness: true
  # validates :document_id, presence: true
end
