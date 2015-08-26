# Mock model to present the person interacting with your service
class Customer
  include ActiveModel::Model

  attr_accessor :name, :contact_no
end
