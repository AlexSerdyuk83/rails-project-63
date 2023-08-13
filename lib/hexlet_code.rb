# frozen_string_literal: true

require_relative "hexlet_code/version"

# module HexletCode
module HexletCode
  autoload :Tag, "hexlet_code/tag.rb"

  class Error < StandardError; end

  def self.form_for(options = {})
    attributes = {
      action: options.fetch(:url, "#"),
      method: options.fetch(:method, "post")
    }

    HexletCode::Tag.build("form", attributes)
  end
end
