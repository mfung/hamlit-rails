require 'minitest_helper'

class Hamlit::Generators::ControllerGeneratorTest < Rails::Generators::TestCase
  destination Rails.root
  tests Rails::Generators::ControllerGenerator

  setup :prepare_destination
  setup :copy_routes

  arguments %w(Account foo bar)

  test "should invoke template engine" do
    run_generator
    assert_file "app/views/account/foo.html.haml"
    assert_file "app/views/account/bar.html.haml"
  end

  test "should revoke template engine" do
    run_generator
    run_generator ["account"], :behavior => :revoke

    assert_no_file "app/views/account"
    assert_no_file "app/views/account/foo.html.haml"
    assert_no_file "app/views/account/bar.html.haml"
  end
end