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

  def after_example4_forms(params)
    # Look in the terminal window you started the kit in to see logger output
    Rails.logger.debug "after_example4_forms: Received the following params. #{params}"

    # We determine which type of form was submitted by checking the params for
    # the existance of a particular form field. If we don't match the ones
    # used in the standard and FormTagHelper, we can assume submit for the
    # FormTagHelper was clicked.
    if params[:std_cust_name]
      form_type = 'standard'
    elsif params[:tag_cust_name]
      form_type = 'tag'
    else
      form_type = 'helper'

      # As we're dealing with a record from our 'dummy' database we can also
      # pretend to save the change.
      DummyData.customers[0].name = params[:customer][:name]
    end

    Rails.logger.debug "after_example4_forms: User submitted the '#{form_type}' type of form."
  end
end
