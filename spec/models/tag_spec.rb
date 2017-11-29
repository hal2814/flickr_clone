require 'rails_helper'

describe Tag do
  it { should have_many :photos}
  it { should belong_to :photo}
  it { should validate_presence_of :tag }
end
