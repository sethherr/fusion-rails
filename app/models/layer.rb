class Layer < ActiveRecord::Base

  belongs_to :layout
  has_many   :keys

end
