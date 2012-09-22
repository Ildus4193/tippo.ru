require 'spec_helper'

Dir[File.expand_path('../../../features/support/factories.rb', __FILE__)].each {|f| require f}

describe Order do
  describe "validations" do
    before(:each) do
      @attr = {
        :name => "rspec",
        :email => "rspec@refinery.com",
        :message => "test"
      }
    end

    it "rejects empty name" do
      Order.new(@attr.merge(:name => "")).should_not be_valid
    end

    it "rejects empty message" do
      Order.new(@attr.merge(:message => "")).should_not be_valid
    end

    it "rejects invalid email format" do
      ["", "@refinerycms.com", "refinery@cms", "refinery@cms.123"].each do |email|
        Order.new(@attr.merge(:email => email)).should_not be_valid
      end
    end
  end

  describe "default scope" do
    it "orders by created_at in desc" do
      order1 = Factory(:order, :created_at => 1.hour.ago)
      order2 = Factory(:order, :created_at => 2.hours.ago)
      orders = Order.all
      orders.first.should == order1
      orders.second.should == order2
    end
  end

  describe ".latest" do
    it "returns latest 7 non-spam orders by default" do
      8.times { Factory(:order) }
      Order.last.toggle!(:spam)
      Order.latest.length.should == 7
    end

    it "returns latest 7 orders including spam ones" do
      4.times { Factory(:order) }
      3.times { Factory(:order) }
      Order.all[0..2].each { |order| order.toggle!(:spam) }
      Order.latest(7, true).length.should == 7
    end

    it "returns latest n orders" do
      4.times { Factory(:order) }
      Order.latest(3).length.should == 3
    end
  end
end
