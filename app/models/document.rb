class Document < ActiveRecord::Base
  has_many :slots

  validates :title, presence: true
end
