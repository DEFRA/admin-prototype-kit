# Used to hold 'hooks' which are called before a page is shown. Each hook must
# be defined as before_[name of page] for the hook to be called before the
# page is shown. The intention is to provide an opportunity to use some logic
# to prepare the system before the page is shown e.g. grabbing some data.
module ProtoPagesBeforeShow
  def before_index
    @pages = HighVoltage.page_ids
  end

  def before_customer
    @customer = DummyData.customers[0]
  end
end
