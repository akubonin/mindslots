class Slot < ActiveRecord::Base
  validates :title, presence: true
end
