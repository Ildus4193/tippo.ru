module ApplicationHelper

  def in_section?(title)
    return page_is?(title.downcase) || page_is_under?(title.downcase)
  end

  def page_is?(title)
    return @page.title.downcase == title.downcase
  end

  def page_is_under?(title)
    return !@page.parent.blank? && @page.parent.title.downcase == title.downcase
  end

  def find_all_jobs
    @jobs ||= Job.order('title ASC')
  end

  def find_all_faqs
    @faqs ||= Question.where("answer IS NOT ?", nil).order('id ASC')
  end

  def find_all_news
    @news ||= NewsItem.paginate(:page => params[:page])
  end

  def site_color_for(page)
  
    colors = {
      "cards"   => "set-green",
      "friends" => "set-pink",
      "about"   => "set-orange"
    }
    css_class = if !page.title.blank? && colors.keys.include?(page.title.downcase)
                  colors[page.title.downcase]
                elsif !page.parent.blank? && colors.keys.include?(page.parent.title.downcase)
                  colors[page.parent.title.downcase] 
                else
                  "set-blue"
                end
    
    return css_class
  end

  def twitter_user
    RefinerySetting.find_or_set("twitter_user", 'kt_labs');
  end

  def footer_address
    footer_for(:address)
  end

  def footer_phones
    footer_for(:phones)
  end

  def footer_email
    footer_for(:email)
  end
  
  def footer_for(name)
    RefinerySetting.find_or_set("footer_#{name}", "")
  end
  
  def header_social_for(name)
    RefinerySetting.find_or_set("header_social_#{name}", "")
  end
end
