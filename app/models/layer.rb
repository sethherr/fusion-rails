class Layer < ActiveRecord::Base

  belongs_to :layout
  has_many   :keys
  accepts_nested_attributes_for :keys, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
  validates :layout, presence: true

end
