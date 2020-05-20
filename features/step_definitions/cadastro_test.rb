

Dado('que eu estou na area de autenticacao') do
    @login = Login.new
    @login.load
end

Dado('eu informo um email ainda nao cadastrado') do
    @login.criar_conta(DATA["email"])    
end

Quando("preencho o formulario") do
    cadastro = Cadastro.new
    cadastro.preencher_cadastro(DATA["first_name"], DATA["last_name"], 
                                DATA["email"], DATA["password"], DATA["birth_day"], DATA["birth_month"], 
                                DATA["birth_year"], DATA["company"], DATA["street"], DATA["city"], 
                                DATA["state"], DATA["postcode"], DATA["mobile"], DATA["alias"])
    
end

Então("meu cadastro e efetuado corretamente") do
    pending # Write code here that turns the phrase above into concrete actions
end
#@when('preencho o formulario')
#def preencho_o_formulario(driver):   
#    cadastro = Cadastro(driver)
#    cadastro.preencher_cadastro(driver, data.get("first_name"), data.get("last_name"), 
#                                data.get("email"), data.get("password"), data.get("birth_day"), data.get("birth_month"), 
#                                data.get("birth_year"), data.get("company"), data.get("street"), data.get("city"), 
#                                data.get("state"), data.get("postcode"), data.get("mobile"), data.get("alias"))
   
#@then('meu cadastro e efetuado corretamente')
#def meu_cadastro_e_efetuado_corretamente(driver):  
#    assert data.get("confirma_cadastro") in driver.title
#    time.sleep(30)
   