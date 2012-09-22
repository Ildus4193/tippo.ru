require 'factory_girl'

Factory.define :order do |i|
  i.name "Refinery"
  i.email "refinery@cms.com"
  i.message "Hello..."
end
