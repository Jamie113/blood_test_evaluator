require 'rails_helper'

  RSpec.describe BloodMarker, type: :model do
  # Testing validations
  it 'is valid with a name' do
    marker = BloodMarker.new(name: 'HCD')
    expect(marker).to be_valid
  end

  it 'is not valid without a name' do
    marker = BloodMarker.new(name: nil)
    expect(marker).not_to be_valid
  end

  it 'does not allow duplicate names' do
    BloodMarker.create(name: 'HCD')
    duplicate = BloodMarker.new(name: 'HCD')
    expect(duplicate).not_to be_valid
  end

end
