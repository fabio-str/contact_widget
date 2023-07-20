module WidgetsHelper

    def snippet_code(widget)
        "<script src=\"#{ENV['BASE_URL']}/snippet.js?client_id=#{widget.client_id}'\"></script>"
    end
end
