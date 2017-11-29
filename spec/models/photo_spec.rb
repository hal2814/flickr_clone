require 'rails_helper'

describe Photo do
  it { should belong_to :user}
  it { should have_many :comments}
  it { should have_many :tags}
  it { should validate_presence_of :image }
  it { should validate_presence_of :view_count }
  it { should validate_presence_of :description }
  it { should validate_presence_of :location }
  it { should validate_presence_of :date }
  it { should validate_presence_of :camera_type }  
end
