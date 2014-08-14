require "idobadge/version"

# Text badges generator for idobata.io generic webhook.
module Idobadge
  # @!method success(text, icon: 'sun-o')
  #   @!scope class
  #   Generate success badge html.
  #   the default icon is {http://fontawesome.io/icon/sun-o/ sun-o}.
  #   @param text [String] the badge content
  #   @param icon [String, nil] the badge icon name You can use
  #     {http://fontawesome.io/ Font Awesome} icon name or nil for empty icon
  #   @return [String] badge html
  # @!method warning(text, icon: 'umbrella')
  #   @!scope class
  #   Generate warning badge html.
  #   the default icon is {http://fontawesome.io/icon/umbrella/ umbrella}.
  #   @param text (see Idobadge.success)
  #   @param icon (see Idobadge.success)
  #   @return (see Idobadge.success)
  # @!method important(text, icon: 'bomb')
  #   @!scope class
  #   Generate important badge html.
  #   the default icon is {http://fontawesome.io/icon/bomb/ bomb}.
  #   @param text (see Idobadge.success)
  #   @param icon (see Idobadge.success)
  #   @return (see Idobadge.success)
  {success: 'sun-o', warning: 'umbrella', important: 'bomb'}.each do |m, i|
    define_method(m) do |text, icon: i|
      "<span class=\"label label-#{__method__}\">" \
        "#{icon && %|<i class="fa fa-#{icon}"></i> |}" \
        "<span class=\"label label-inverse\">#{text}</span>" \
      "</span>"
    end
    module_function m
  end

  # Alias for .important
  # @param text (see .success)
  # @param icon (see .success)
  # @return (see .success)
  alias :failure :important
  module_function :failure
end
