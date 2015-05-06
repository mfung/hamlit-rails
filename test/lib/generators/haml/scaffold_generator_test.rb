require 'minitest_helper'

class Hamlit::Generators::ScaffoldGeneratorTest < Rails::Generators::TestCase
  destination File.join(Rails.root)
  tests Rails::Generators::ScaffoldGenerator
  arguments %w(product_line title:string price:integer)

  setup :prepare_destination
  setup :copy_routes

  test "should invoke template engine" do
    run_generator

    %w(index edit new show _form).each { |view| assert_file "app/views/product_lines/#{view}.html.haml" }
    assert_no_file "app/views/layouts/product_lines.html.haml"
  end

  test "should revoke template engine" do
    run_generator
    run_generator ["product_line"], :behavior => :revoke

    assert_no_file "app/views/product_lines"
    assert_no_file "app/views/layouts/product_lines.html.haml"
  end

end