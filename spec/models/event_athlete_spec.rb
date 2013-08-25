require 'spec_helper'

describe EventAthlete do
  it { should belong_to(:athlete) }
  it { should belong_to(:event) }

end