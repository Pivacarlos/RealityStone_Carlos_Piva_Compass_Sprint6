module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :color, '.productColor'
        element :main_image, '#mainImg'
    end
end