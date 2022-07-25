require "capybara/dsl"

class GoogleHome < BasePage

    def search_for(query)
        find('input[name="q"]').set query
        find('input[name="q"]').native.send_keys(:enter)
    end
end