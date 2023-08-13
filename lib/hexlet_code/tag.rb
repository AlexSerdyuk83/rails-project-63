# frozen_string_literal: true

# module HexletCode::Tag
module HexletCode
  # class Tag builds tag string
  class Tag
    SINGLE_TAGS = %w[br img input].freeze

    def self.build(
      tag_name,
      attributes = {}
    )
      options = attributes.map { |key, value| %( #{key}="#{value}") }

      text = yield if block_given?
      open_tag = "<#{tag_name}#{options.join(" ")}>"
      close_tag = "</#{tag_name}>"

      if SINGLE_TAGS.include?(tag_name)
        open_tag
      else
        [open_tag, text, close_tag].join
      end
    end
  end
end
