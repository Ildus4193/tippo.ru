class OrderSetting < ActiveRecord::Base

  def self.confirmation_body
    RefinerySetting.find_or_set(:order_confirmation_body,
      "Thank you for your order %name%,\n\nThis email is a receipt to confirm we have received your order and we'll be in touch shortly.\n\nThanks."
    )
  end

  def self.confirmation_subject
    RefinerySetting.find_or_set(:order_confirmation_subject,
                                "Thank you for your order")
  end

  def self.confirmation_subject=(value)
    # handles a change in Refinery API
    if RefinerySetting.methods.map(&:to_sym).include?(:set)
      RefinerySetting.set(:order_confirmation_subject, value)
    else
      RefinerySetting[:order_confirmation_subject] = value
    end
  end

  def self.notification_recipients
    RefinerySetting.find_or_set(:order_notification_recipients,
                                ((Role[:refinery].users.first.email rescue nil) if defined?(Role)).to_s)
  end

  def self.notification_subject
    RefinerySetting.find_or_set(:order_notification_subject,
                                "New order from your website")
  end

end
