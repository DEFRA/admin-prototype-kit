describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it '#email returns a string' do
    expect(@user.email).to match 'user@example.com'
  end

  it { should respond_to(:role) }

  it "#role returns 'user' by default" do
    expect(@user.role).to match :user
  end

end
