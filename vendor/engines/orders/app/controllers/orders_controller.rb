class OrdersController < ApplicationController

  before_filter :find_page, :only => [:create, :new]

  def thank_you
    @page = Page.find_by_link_url("/contact/thank_you", :include => [:parts, :slugs])
    @page = Page.find_by_title("about", :include => [:parts, :slugs])
    render 'pages/_about'
  end

  def new
    @order = Order.new
  end

  def create
    opts = params[:order]
    @order = Order.new(opts)

    if @order.save
      if @order.ham?
        begin
          OrderMailer.notification(@order, request).deliver
        rescue
          logger.warn "There was an error delivering an order notification.\n#{$!}\n"
        end

        begin
          OrderMailer.confirmation(@order, request).deliver
        rescue
          logger.warn "There was an error delivering an order confirmation:\n#{$!}\n"
        end
      end

      redirect_to thank_you_orders_url
    else
      render 'pages/_about'
    end
  end

protected

  def find_page
    @page = Page.find_by_title('about', :include => [:parts, :slugs])
    #raise @page.inspect
  end

end
