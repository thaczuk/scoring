require 'spec_helper'

describe Athlete do
  it { should have_many(:events) }
  it { should belong_to(:competition) }
  it { should belong_to(:competition_category) }
end