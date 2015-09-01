module Metamagic
  class MetaTag < Tag
    def to_html
      return if interpolated_values.empty?
      "<meta name=\"#{key}\" content=\"#{CGI.unescapeHTML(interpolated_values.join(', ')).to_s}\" >"
    end

    def sort_order
      2
    end

    def remove_prefix?
      false
    end
  end
end
