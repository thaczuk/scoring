require 'spec_helper'

describe CompetitionCategory do
  it { should have_many(:athletes) }
end