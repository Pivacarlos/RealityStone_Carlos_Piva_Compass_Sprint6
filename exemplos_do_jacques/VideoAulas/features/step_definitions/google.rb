Dado('que acesse a home') do
    @google_home = GoogleHome.new
    @google_home.load
  end
  
  Então('deverá exibir a logo do google') do
    expect(@google_home).to have_css('img[src*="google"]')
  end

  Quando('buscas por {string}') do |termo|
    @google_home.search_for(termo)
    @google_results = GoogleResults.new
  end
  
  Então('deverá exibir o resultado da busca') do
    expect(@google_results).to have_content 'Jeep Compass'
  end