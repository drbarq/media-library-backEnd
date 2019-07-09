require 'rails_helper'

RSpec.describe Group, type: :model do
  # Association test
  # ensure User model has a 1:m relationship with the PodCast model
  it { should have_many(:podcasts).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description)}
end
