require_relative '../sections/header'
module Pages
    class Home < SitePrism::Page
        set_url '/'
        section :header, Sections::Header, 'header'
        element :loader, 'body > .loader'

        def search_for(product)
            header.btn_open_search.click
            header.input_search.set product
            wait_until_loader_visible
            wait_until_loader_invisible
            header.btn_open_search.click
            header.close_search.click
            # input_search.native.send_keys(:enter)
        end
    end
end