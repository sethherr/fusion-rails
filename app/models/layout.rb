class Layout < ActiveRecord::Base

  belongs_to :keyboard
  has_many   :layers

end
