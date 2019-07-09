require 'rails_helper'

RSpec.describe UserGroup, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:group) }

  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:group) }
end
