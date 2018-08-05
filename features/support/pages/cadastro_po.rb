class CadastroPage

    include Capybara::DSL

    def verifica_cadastro
      find('.media')
    end
  
    def registrar(nome, email, senha)
      find('#register_name').set nome
      find('#register_email').set email
      find('#register_password').set senha
      click_on 'Cadastrar'
    end

    def cadastrar
        find('a[href$=register]').click
    end
    
    def alerta_cadastro
      find('#register_form')
    end
  
end
  