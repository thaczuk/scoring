require 'spec_helper'

describe Event do
  it { should have_many(:athletes) }
  it { should belong_to(:competition) }
end