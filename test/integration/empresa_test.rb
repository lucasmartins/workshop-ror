#encoding: utf-8
require 'integration_test_helper' 
 
class EmpresaTest < ActionController::IntegrationTest
 
  test "cadastrar empresa" do
    visit '/empresas/new'
    assert page.has_content?('Nova empresa')
    
    fill_in 'Razao social',:with => 'Innovit'
    fill_in 'Cnpj',:with => '59911948000141'
    fill_in 'Telefone',:with => '48-3024-3426'
    fill_in 'Website',:with => 'http://www.innovit.com.br'
    fill_in 'Descricao',:with => 'Texto graaaaaade'
    click_button 'Create Empresa'
    assert page.has_content? "Empresa was successfully created."
  end
 
end
