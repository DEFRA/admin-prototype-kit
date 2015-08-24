module ProtoPagesAfterUpdate
  def after_customer(params)
    params[:redirect_to] = proto_pages_path('index')
  end
end
