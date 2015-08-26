module Metamagic
  class MetaTag < Tag
    def to_html
      return if interpolated_values.empty?
      tag(:meta, content: interpolated_values.join(", ").html_safe, name: key)
    end

    def sort_order
      2
    end

    def remove_prefix?
      false
    end
  end
end
