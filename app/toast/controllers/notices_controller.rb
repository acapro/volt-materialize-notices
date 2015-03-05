module Toast
  class NoticesController < Volt::ModelController
    def index
    end
    
    def call_toast(text, css_class)
      `toast(text, 4000, css_class)`
    end

    def map_key_class(key)
      case key
      when 'errors'
        'error'
      when 'warnings'
        'warning'
      when 'successes'
        'success'
      else
        # notices
        'default'
      end
    end

  end
end
