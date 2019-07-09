require 'rails_helper'

RSpec.describe Group, type: :model do
  it { should have_many(:UserGroup) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end
