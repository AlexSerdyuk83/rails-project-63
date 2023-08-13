# frozen_string_literal: true

require "test_helper"
# require "../lib/hexlet_code.rb"

class TestHexletCode < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test__create_empty_form_without_opt
    form = HexletCode.form_for
    expected = "<form action=\"#\" method=\"post\"></form>"

    assert_equal form, expected
  end

  def test_create_empty_form_with_url
    form = HexletCode.form_for(url: "/users")
    expected = "<form action=\"/users\" method=\"post\"></form>"
    assert_equal form, expected
  end

  def test_create_empty_form_with_method
    form = HexletCode.form_for(method: "get")
    expected = "<form action=\"#\" method=\"get\"></form>"
    assert_equal form, expected
  end

  def test_create_empty_form_with_url_and_method
    form = HexletCode.form_for(url: "/data", method: "get")
    expected = "<form action=\"/data\" method=\"get\"></form>"
    assert_equal form, expected
  end
end
