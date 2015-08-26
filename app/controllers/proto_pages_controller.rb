class ProtoPagesController < ApplicationController
  include HighVoltage::StaticPage
  include ProtoPagesBeforeShow
  include ProtoPagesAfterUpdate

  before_filter :load_page, only: [:show]

  def show
    super
  end

  def update
    # current_page always starts with pages/ however we're not interested in
    # that bit.
    @page = current_page.gsub('pages/', '')

    # Check to see if we have any after_ hooks related to the page which is
    # posting
    method_name = :"#{convert_to_method_name('after', params['id'])}"
    send(method_name, params) if respond_to?(method_name, true)

    # The pattern is that if an after_ hook has been added for page it should
    # set where to redirect to in the params.
    redirect_to params[:redirect_to] and return if params[:redirect_to]

    # Else the default behaviour is to redirect back to the page which submitted
    # the request
    redirect_to "/#{current_page}" and return if page_exists?(@page)

    # As a fall back if the page name is unrecognised e.g. someone called
    # proto_pages_path('blah') and there is no pages/blah.html.erb we redirect
    # to the unknown page. This should hopefully help designers correct
    # their mistake.
    render proto_pages_path('unknown')
  end

  private

  def load_page
    method_name = :"#{convert_to_method_name('before', current_page)}"
    send(method_name) if respond_to?(method_name, true)
  end

  def convert_to_method_name(prefix, page)
    "#{prefix}_#{page.gsub('pages/', '').tr('/', '_').downcase}"
  end

  def page_exists?(page)
    HighVoltage.page_ids.include?(page)
  end
end
