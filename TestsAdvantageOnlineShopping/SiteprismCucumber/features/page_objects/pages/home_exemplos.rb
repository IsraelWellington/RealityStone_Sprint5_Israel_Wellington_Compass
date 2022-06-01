class FooterExemplo < SitePrism::Section
    element :imgFacebook, 'img[name="follow_facebook"]'
end

class Products < SitePrism::Section
    element :name, 'a.productName'
    element :price, 'a.productPrice'
end

class Home < SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    element :menu_itens, '.nav-li-Links a'
    # menu_itens.first.click
    # menu_itens[2].click

    section :footer, FooterExemplo, 'footer .ng-scope' # sempre tem q ter a classe
    # footer.imgFacebook.click
    sections :products, Products, '.categoryRight li.ng-scope'
    # products[2].price.click
    # products.last.click


end
