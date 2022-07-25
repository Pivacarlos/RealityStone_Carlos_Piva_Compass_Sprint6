require_relative '../sections/header'
require_relative '../sections/products'

module Pages
   class SearchResults < SitePrism::Page
      set_url '/#/search'

      element :products, 'div.categoryRight li.ng-scope'
      sections :products, Sections::Products, 'div.categoryRight li.ng-scope'

      def access_product_page(index)
         products[index].name.click
      end
   end
end

