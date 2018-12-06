module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = User.create(email: 'test@test.com', password: 'password', first_name: 'zoe', last_name: 'glazier', age: 2)
      sign_in @user
    end
  end
end
