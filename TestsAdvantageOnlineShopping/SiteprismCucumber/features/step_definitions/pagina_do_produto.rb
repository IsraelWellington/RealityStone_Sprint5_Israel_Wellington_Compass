Quando('acessar a página do produto') do
    # @search_results_page.products.first.name.click
    @search_results_page.access_product_page(2)
    # binding.pry
    @product_page = Pages::ProductPage.new
end
  
Quando('alterar a cor do produto') do
    # binding.pry
    @image_before = @product_page.main_image['src']
    # @binding.pry
    @product_page.colors[1].click
end
  
Então('deverá alterar a quantidade exibida na PDP') do
    expect(@product_page.main_image['src']).not_to eql @image_before
end

Dado('que esteja na página do produto existente') do
    steps %{ 
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
        E acessar a página do produto
        }
end