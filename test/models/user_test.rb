require 'test_helper'

class UserTest < ActiveSupport::TestCase
  @user = User.new(username: "Bob", email: "bob@example.com")
end

test "user should be valid" do
  assert @user.valid?
end
test "username should be present" do
  @user.username
  assert_not @user.valid?
end
test "username should not be to long" do
  @user.username = "a" * 41
  assert_not @user.valid?
end

test "username should not be to short" do
  @user.username = "on"
  assert_not @user.valid?
end
test "email shouldbe present" do
  @user.email = " "
  assert_not @user.valid?
end

test "email lengths shouldbe within bounds" do
  @user.email = "a" * 101 + "@example.com"
  assert_not @user.valid?
end

test "email address should be unique" do
  dup_user = @user.dup_user
  dup_user.email = @user.email.upcase
  @user.save
  assert_not dup_user.valid?
end

test " email validation shouldaccept valid addresses" do
  valid_addresses = %w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eee.ou smith.joe@mark.cn]
  valid_addresses.each do |va|
    @user.email = valid?, '#{va.inspect} should be valid'
end
end

test "email validation should reject invalid addresses"do
  invalid_addresses = %w [user@example.com user_at_eee.org user.name@example.com foo@eee+oar.com]
  invalid_addresses.each do |ia|
    @user.email = ia
    assert_not @user.valid?, '#{is.inspect} should invalid'
end
end
