require 'rails_helper'

describe User do
  it { should have_many(:songs).through(:favorites) }
end