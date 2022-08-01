class Login < SitePrism::Page
    set_url'/login'
    element :email, '#email'
    element :password, '#password'
    element :submit, 'button[type="submit"]'
end