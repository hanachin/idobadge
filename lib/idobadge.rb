require "idobadge/version"

module Idobadge
  {success: 'sun-o', warning: 'umbrella', important: 'bomb'}.each do |m, i|
    define_method(m) do |text, icon: i|
      "<span class=\"label label-#{__method__}\">" \
        "#{icon && %|<i class="fa fa-#{icon}"></i> |}" \
        "<span class=\"label label-inverse\">#{text}</span>" \
      "</span>"
    end
    module_function m
  end

  alias :failure :important
  module_function :failure
end
