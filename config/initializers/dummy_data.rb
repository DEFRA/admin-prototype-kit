module DummyData

  def self.customers
    @@customers ||= build_customers
  end

  private

  def self.build_customers
    @@customers = []

    ['Joe Bloggs',
     'Jane Doe',
     'Uma Leggerts'
    ].each do |v|
      @@customers << Customer.new(name: v)
    end
    @@customers
  end
end
