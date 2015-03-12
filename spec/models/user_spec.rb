require 'rails_helper'

describe User do
  it { should have_many(:songs).through(:favorites) }
  it { should have_many(:artists).through(:songs) }
end