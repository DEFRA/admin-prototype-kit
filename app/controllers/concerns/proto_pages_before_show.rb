module ProtoPagesBeforeShow
  def before_index
    @pages = HighVoltage.page_ids
  end

  def before_customer
    @customer = DummyData.customers[0]
  end
end
