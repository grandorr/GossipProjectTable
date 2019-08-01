class Tag < ApplicationRecord
  has_many :jointabs
  has_many :gossips, through: :jointabs

end
