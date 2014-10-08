Onebox = Onebox

module Onebox
  module Engine
    class GoogleCalendarOnebox
      include Engine
      REGEX = /^https?:\/\/(?:www\.)?google\.com\/calendar\/embed\?.+/
      matches_regexp REGEX

      def to_html
        "<iframe src='#{@url}' style='border-width:0' frameborder='0' scrolling='no' width='100%'></iframe>"
      end
    end
  end
end