require 'rails_helper'

describe Song do
  it { should have_many(:users).through(:favorites) }
  it { should validate_presence_of(:name) }
  it { should belong_to(:artist) }
end