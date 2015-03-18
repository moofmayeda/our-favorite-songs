require 'rails_helper'

describe User do
  it { should have_many(:songs).through(:favorites) }
  it { should have_many(:artists).through(:songs) }
  it { should validate_presence_of(:username)}
  it { should have_many(:charges) }
end