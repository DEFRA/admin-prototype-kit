class User
  include ActiveModel::Model

  ROLES = %i(
    user
    customer
    business
    admin
  )

  attr_accessor :name, :email, :password, :role

  def initialize(attributes = {})
    super(attributes)
    self.role ||= ROLES.find { |v| v == :user }
  end
end
