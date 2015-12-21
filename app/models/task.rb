class Task < ActiveRecord::Base
  belongs_to :block
  validates :title, presence: true
end
