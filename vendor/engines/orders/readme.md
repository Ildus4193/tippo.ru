# Orders

![Refinery Orders](http://refinerycms.com/system/images/BAhbBlsHOgZmSSIqMjAxMS8wNS8wMS8wNF81MF8wMV81MDlfaW5xdWlyaWVzLnBuZwY6BkVU/orders.png)

### Gem Installation using Bundler (The very best way)

Include the latest [gem](http://rubygems.org/gems/refinerycms-orders) into your Refinery CMS application's Gemfile:

    gem 'refinerycms-orders', '~> 1.0.0'

Then type the following at command line inside your Refinery CMS application's root directory:

    bundle install

#### Installation on Refinery 0.9.9 or above.

To install the migrations, run:

    rails generate refinerycms_orders

Next migrate your database and you're done:

    rake db:migrate

## About

__Add a simple contact form to Refinery that notifies you and the customer when an order is made.__

In summary you can:

* Collect and manage orders
* Specify who is notified when a new order comes in
* Customise an auto responder email that is sent to the person making the order

When orders come in, you and the customer are generally notified. As we implemented spam filtering through the [filters_spam plugin](https://github.com/resolve/filters_spam#readme) you will not get notified if an order is marked as 'spam'.

## How do I get Notified?

Go into your 'Orders' tab in the Refinery admin area and click on "Update who gets notified"

## How do I Edit the Automatic Confirmation Email

Go into your 'Orders' tab in the Refinery admin area and click on "Edit confirmation email"
