require 'rails_helper'

RSpec.describe Podcast, type: :model do
  # Association test
  # ensure an item record belongs to a single User record
  it { should belong_to(:user) }
  it { should belong_to(:group) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:comment) }
  it { should validate_presence_of(:author) }
end
