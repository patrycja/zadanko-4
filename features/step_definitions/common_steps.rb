And /^I log in as a user$/ do
  email = 'ja@from.pl'
  password = 'qwerty'

  @user = User.create(:email => email, :password => password, :password_confirmation => password, :is_admin => false)
  When %{I go to login}
    And %{I fill in "user_email" with "#{email}"}
    And %{I fill in "user_password" with "#{password}"}
    And %{I press "Zaloguj"}
end

And /^I log in as an admin$/ do
  email = 'im@admin.com'
  password = 'adminpass'

  @user = User.create(:email => email, :password => password, :password_confirmation => password, :is_admin => true)
  When %{I go to login}
    And %{I fill in "user_email" with "#{email}"}
    And %{I fill in "user_password" with "#{password}"}
    And %{I press "Zaloguj"}
end

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end