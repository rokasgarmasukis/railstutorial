require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path,
           params: { user: { name: '', email: 'user@invalid', password: '', password_confirmation: 'blabla' } }
    end
    assert_response :unprocessable_entity
    assert_template 'users/new'
  end

  test 'valid signup information' do
    assert_difference 'User.count' do
      post users_path, params: { user: { name: 'aline', email: 'aline@gmail.com', password: 'einunamo', password_confirmation: 'einunamo'}}
    end
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end
end
