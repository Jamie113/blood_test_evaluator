class BloodMarkersController < ApplicationController

  def index
    @blood_markers = BloodMarker.includes(:blood_marker_ranges).all
  end

end
