require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "Validations" do
    it "Creates a user with matching passwords of minimum length 4" do
      @user = User.new(:name => "Hilary Swank", :email => "hilary.swank@imdb.com", :password => "Tina", :password_confirmation => "Tina")
      expect(@user).to be_valid
    end

    it "checks for unique emails" do
      @user1 = User.create(:name => "Hilary Swank", :email => "hilary.swank@imdb.com", :password => "Tina", :password_confirmation => "Tina")
      @user2 = User.create(:name => "Hilary Swank", :email => "hilary.swank@imdb.com", :password => "Tina", :password_confirmation => "Tina")
      expect(@user2).to_not be_valid
      expect(@user2.errors.full_messages).to include("Email has already been taken")
    end
    
  end

  describe '.authenticate_with_credentials' do
    it "validates a login" do
      @user = User.create(:name => "Hilary Swank", :email => "hilary.swank@imdb.com", :password => "Tina", :password_confirmation => "Tina")
      expect(@user).to be_valid
      puts @user
      @extra = User.authenticate_with_credentials("hilary.swank@imdb.com", "Tina")
    end
  end  


end
