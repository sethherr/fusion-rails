class Layer < ActiveRecord::Base

  belongs_to :layout
  has_many   :keys

  validates :name, presence: true
  validates :layout, presence: true

end
