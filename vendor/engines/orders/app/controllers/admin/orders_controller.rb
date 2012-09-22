class Admin::OrdersController < Admin::BaseController

  crudify :order, :title_attribute => "name", :order => "created_at DESC"
  helper_method :group_by_date

  before_filter :find_all_ham, :only => [:index]
  before_filter :find_all_spam, :only => [:spam]
  before_filter :get_spam_count, :only => [:index, :spam]

  def index
    @orders = @orders.with_query(params[:search]) if searching?
    @orders = @orders.paginate({:page => params[:page]})
  end

  def spam
    self.index
    render :action => 'index'
  end

  def toggle_spam
    find_order
    @order.toggle!(:spam)

    redirect_to :back
  end

protected

  def find_all_ham
    @orders = Order.ham
  end

  def find_all_spam
    @orders = Order.spam
  end

  def get_spam_count
    @spam_count = Order.count(:conditions => {:spam => true})
  end

end
