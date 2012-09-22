Given /^I have no orders$/ do
  Order.delete_all
end

Then /^I should have ([0-9]+) orders?$/ do |count|
  Order.count.should == count.to_i
end

Given /^I have an? order from "([^"]*)" with email "([^\"]*)" and message "([^\"]*)"$/ do |name, email, message|
  Order.create(:name => name,
                 :email => email,
                 :message => message)
end

Given /^I have an? order titled "([^"]*)"$/ do |title|
  Order.create(:name => title,
                 :email => 'test@cukes.com',
                 :message => 'cuking ...',
                 :spam => false)

  Order.create(:name => title,
                 :email => 'test@cukes.com',
                 :message => 'cuking ...',
                 :spam => true)
end
