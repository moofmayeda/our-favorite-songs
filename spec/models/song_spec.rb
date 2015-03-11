require 'rails_helper'

describe Song do
  it { should have_and_belong_to_many(:users) }
  it { should validate_presence_of(:name) }
  it { should belong_to(:artist) }
end