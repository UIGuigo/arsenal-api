require 'spec_helper'

describe User do
  before { @user = FactoryGirl.build(:user) }

  subject { @user }

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  it { should respond_to(:email) }
  # it { should validate_presence_of(:email) }
  #it { should validate_uniqueness_of(:email) }
  #it { should allow_value('example@domain.com').for(:email) }

  it { should respond_to(:password) }
  #it { should validate_confirmation_of(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }
end
