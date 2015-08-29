# Used to hold 'hooks' which are called after a page is submitted. Each hook
# must be defined as after_[name of page] for the hook to be called after the
# page has been submitted. The intention is to provide an opportunity to use
# some logic to prepare the system before the page is shown e.g. grabbing some
# data.
module ProtoPagesAfterUpdate
  def after_customer(params)
    params[:redirect_to] = proto_pages_path('index')
  end

  def after_example2_dynamic_routing(params)
    if params['options'] == 'static'
      params[:redirect_to] = proto_pages_path('example1/static')
    else
      params[:redirect_to] = proto_pages_path('home')
    end
  end
end
