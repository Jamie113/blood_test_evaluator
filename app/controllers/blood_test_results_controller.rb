class BloodTestResultsController < ApplicationController
  def new
    # This action will have the view with the upload form
  end

  def create
    @results = []
    if params[:file].present?
      process_file(params[:file])
      render :show
    else
      flash.now[:alert] = "Please upload a file."
      render :new
    end
  end

  private

  def process_file(file)
    require 'csv'
    CSV.foreach(file.path, headers: true) do |row|
      marker_name = row['marker_name']
      value = row['value'].to_f

      marker = BloodMarker.find_by(name: marker_name)
      if marker
        range = marker.blood_marker_ranges.find do |r|
          value.between?(r.lower_bound, r.upper_bound)
        end

        result = if range
                   "#{marker_name} = #{value}, This result is #{range.range_name}"
                 else
                   "#{marker_name} = #{value}, No range found"
                 end
      else
        result = "#{marker_name} = #{value}, Marker not found"
      end

      @results << result
    end
  end
end
