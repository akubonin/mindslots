class Document < ActiveRecord::Base
  validates :title, presence: true
end
