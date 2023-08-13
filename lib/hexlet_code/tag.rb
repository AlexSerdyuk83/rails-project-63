# module HexletCode::Tag
module HexletCode
	class Tag
		SINGLE_TAGS = %w[br img input].freeze

		def self.build tag_name, attributes = {}
			options = attributes
				.map { |key, value| %( #{key}="#{attributes[key]}") }
				.join(" ")
			text = yield if block_given?
			openTag = "<#{tag_name}#{options}>"
			closeTag = "</#{tag_name}>"

			if SINGLE_TAGS.include?(tag_name)
				openTag
			else
				[openTag, text, closeTag].join
			end
		end
	end
end