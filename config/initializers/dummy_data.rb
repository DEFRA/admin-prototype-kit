module DummyData

  # USER
  def self.build_users
    @@users ||= [
      User.new(name: 'Alan Shanks', email: 'alan@example.org',
               password: 'password1234', role: :user),
      User.new(name: 'Tom Cutter', email: 'tom@example.org',
               password: 'password1234', role: :user),
      User.new(name: 'Polly Bones', email: 'polly@example.org',
               password: 'password1234', role: :user),
      User.new(name: 'Admin', email: 'admin@example.org',
               password: 'password1234', role: :admin)
    ]
  end

  # CUSTOMER
  def self.customers
    @@customers ||= [
      Customer.new(name: 'Joe Bloggs', contact_no: '07878 123456'),
      Customer.new(name: 'Jane Doe', contact_no: '0117 987 6543'),
      Customer.new(name: 'Uma Leggerts', contact_no: '0208 765 4321')
    ]
  end
end
