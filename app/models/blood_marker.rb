class BloodMarker < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :blood_marker_ranges
end
