require 'rails_helper'

describe Favorite do
  it { should belong_to(:song) }
  it { should belong_to(:user) }
end