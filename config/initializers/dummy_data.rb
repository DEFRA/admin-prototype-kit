module DummyData

  def self.users
    @@users ||= build_users
  end

  def self.customers
    @@customers ||= build_customers
  end

  private

  UserStruct = Struct.new(:name, :email, :role)

  def self.build_users
    @@users = []

    [
      UserStruct.new('Alan Shanks', 'alan@example.org', :user),
      UserStruct.new('Tom Cutter', 'tom@example.org', :user),
      UserStruct.new('Polly Bones', 'polly@example.org', :user),
      UserStruct.new('Admin', 'admin@example.org', :admin)
    ].each do |s|
      @@users << User.new(
        name: s.name,
        email: s.email,
        password: 'password1234',
        role: s.role)
    end
    @@users
  end

  CustStruct = Struct.new(:name)

  def self.build_customers
    @@customers = []

    [
      CustStruct.new('Joe Bloggs'),
      CustStruct.new('Jane Doe'),
      CustStruct.new('Uma Leggerts')
    ].each do |s|
      @@customers << Customer.new(name: s.name)
    end
    @@customers
  end
end
