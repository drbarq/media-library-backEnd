require 'rails_helper'

RSpec.describe Podcast, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:user) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:comment) }
end
