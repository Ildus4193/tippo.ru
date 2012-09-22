class OrderMailer < ActionMailer::Base

  def confirmation(order, request)
    subject     OrderSetting.confirmation_subject
    recipients  order.email
    from        "\"#{RefinerySetting[:site_name]}\" <no-reply@#{request.domain(RefinerySetting.find_or_set(:tld_length, 1))}>"
    reply_to    OrderSetting.notification_recipients.split(',').first
    sent_on     Time.now
    @order =    order
  end

  def notification(order, request)
    subject     OrderSetting.notification_subject
    recipients  OrderSetting.notification_recipients
    from        "\"#{RefinerySetting[:site_name]}\" <no-reply@#{request.domain(RefinerySetting.find_or_set(:tld_length, 1))}>"
    sent_on     Time.now
    @order =     order
  end

end
