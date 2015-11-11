class Layout < ActiveRecord::Base

  belongs_to :keyboard
  has_many   :layers

  validates :name, presence: true
  validates :keyboard, presence: true

end
