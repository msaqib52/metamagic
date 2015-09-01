module Metamagic
  class PropertyTag < Tag
    def to_html
      interpolated_values.map { |value| "<meta property=\"#{key}\" content=\"#{CGI.unescapeHTML(String.new(value))}\">" }.join("\n").presence
    end

    def sort_order
      3
    end
  end
end
