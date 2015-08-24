class ProtoPagesController < ApplicationController
  include HighVoltage::StaticPage
  include ProtoPagesBeforeShow
  include ProtoPagesAfterUpdate

  before_filter :load_page, only: [:show]

  def show
    super
  end

  def update
    method_name = :"after_#{params['id']}"
    send(method_name, params) if respond_to?(method_name, true)

    # The pattern is that if a custom handler has been added for POST on the
    # page it should set where to redirect to in the params.
    redirect_to params[:redirect_to] and return if params[:redirect_to]

    # Else the default behaviour is to redirect back to the page which submitted
    # the request
    redirect_to "/#{current_page}" and return if page_exists?

    # As a fall back if the page name is unrecognised e.g. someone called
    # proto_pages_path('blah') and there is no pages/blah.html.erb we redirect
    # to the unknown page. This should hopefully help designers correct
    # their mistake.
    @unknown_page = File.basename(current_page)
    render proto_pages_path('unknown')
  end

  private

  def load_page
    method_name = :"before_#{File.basename(current_page)}"
    send(method_name) if respond_to?(method_name, true)
  end

  def page_exists?
    page_name = File.basename(current_page)
    HighVoltage.page_ids.include?(page_name)
  end

end
