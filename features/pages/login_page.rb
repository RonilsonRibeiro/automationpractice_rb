class Login < SitePrism::Page

    set_url DATA["set_url"]

    
    element :email_create_id, "#email_create"
    element :create_account_id, "#SubmitCreate"


    
    def criar_conta(email)       
        email_create_id.native.clear
        email_create_id.set(email)
        create_account_id.click()        
    end
end