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
