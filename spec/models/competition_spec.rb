require 'spec_helper'

describe Competition do
  it { should have_many(:athletes) }
  it { should have_many(:events) }
end