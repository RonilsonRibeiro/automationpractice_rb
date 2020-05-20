
class Cadastro < SitePrism::Page
           
    element :title_id, "#id_gender1"
    element :first_name_id, "#customer_firstname"
    element :last_name_id, "#customer_lastname"
    element :email_id, "#email"
    element :password_id, "#passwd"
    element :birth_day_id, "#uniform-days"
    element :birth_month_id, "#uniform-months"
    element :birth_year_id, "#uniform-years"
    element :newsletter_id, "#newsletter"
    element :address_first_name_id, "#newsletter"
    element :address_last_name_id, "#lastname"
    element :address_company_id, "#company"
    element :address_street_id, "#address1"
    element :address_city_id, "#city"
    element :address_state_id, "#uniform-id_state"
    element :address_postcode_id, "#postcode"
    element :address_country_id, "#id_country"
    element :address_phone_mobile_id, "#phone_mobile"
    element :address_alias_id, "#alias"
    element :register_id, "#submitAccount"


    def preencher_cadastro(first_name, last_name, email, password, birth_day,
                birth_month, birth_year, company, street, city, state, postcode, mobile, alias_name) 
        #Title
        title_id.click()
        #First name
        first_name_id.native.clear
        first_name_id.set(first_name)
        #Last name
        last_name_id.native.clear
        last_name_id.set(last_name)
        #Email 
        email_id.native.clear
        email_id.set(email)
        #Password 
        password_id.native.clear
        password_id.set(password)         
        #Date of Birth              
        birth_day_id.select(birth_day)
        birth_month_id.select(birth_month)
        birth_year_id.select(birth_year)        
        #Newsletter
        newsletter_id.click()        
        #First name
        address_first_name_id.set(first_name)        
        #Last name
        address_last_name_id.set(last_name)
        #Company
        address_company_id.native.clear
        address_company_id.set(company)
        #Address 
        address_street_id.native.clear
        address_street_id.set(street)
        #City 
        address_city_id.native.clear
        address_city_id.set(city)       
        #State
        address_state_id.select(state)                              
        #Zip/Postal Code
        address_postcode_id.native.clear
        address_postcode_id.set(postcode) 
        #Mobile phone            
        address_phone_mobile_id.set(mobile)        
        #Assign an address alias for future reference
        address_alias_id.native.clear
        address_alias_id.set(alias_name)      
        sleep(20)
        #Register
        register_id.click()
    end
     
end