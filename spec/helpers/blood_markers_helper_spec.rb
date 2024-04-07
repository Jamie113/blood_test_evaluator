require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the BloodMarkersHelper. For example:
#
# describe BloodMarkersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

RSpec.describe BloodMarkersHelper, type: :helper do
  describe '#format_marker_name' do
    it 'formats the name of the blood marker correctly' do
      expect(helper.format_marker_name('HCD')).to eq('Formatted HCD')
    end
  end
end
