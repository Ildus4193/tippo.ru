require 'spec_helper'

describe Job do

  def reset_job(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @job.destroy! if @job
    @job = Job.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_job
  end

  context "validations" do
    
    it "rejects empty title" do
      Job.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_job
      Job.new(@valid_attributes).should_not be_valid
    end
    
  end

end