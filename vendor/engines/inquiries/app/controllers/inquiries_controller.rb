class InquiriesController < ApplicationController

  before_filter :find_page, :only => [:create, :new]

  def thank_you
    @page = Page.find_by_link_url("/contact/thank_you", :include => [:parts, :slugs])
    @page = Page.find_by_title("about", :include => [:parts, :slugs])
    render 'pages/_about'
  end

  def new
    @inquiry = Inquiry.new
  end

  def create
    opts = params[:inquiry]
    resource = Resource.create(:file => opts[:file])
    resource.save
    opts[:file] = resource

    @inquiry = Inquiry.new(opts)

    if @inquiry.save
      if @inquiry.ham?
        begin
          InquiryMailer.notification(@inquiry, request).deliver
        rescue
          logger.warn "There was an error delivering an inquiry notification.\n#{$!}\n"
        end

        begin
          InquiryMailer.confirmation(@inquiry, request).deliver
        rescue
          logger.warn "There was an error delivering an inquiry confirmation:\n#{$!}\n"
        end
      end

      redirect_to thank_you_inquiries_url
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
