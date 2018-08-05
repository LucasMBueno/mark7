Dado("que eu estou no formulário de cadastro") do
    @login_page.acessa
    @cadastro_page.cadastrar
end

Dado("possuo os seguintes dados:") do |usuario|
   nome1 = usuario.raw[0]
   @nome_usuario = nome1[1]
   email1 = usuario.raw[1]
   @email_usuario = email1[1]
   senha = usuario.raw[2]
   @senha_usuario = senha[1]
   #DAO.new.remover_tarefas(@nome_tarefa, @usuario[:email])
   DAO.new.remover_usuario(@email_usuario)
end
  
Quando("faço o meu cadastro") do
    @cadastro_page.registrar(@nome_usuario, @email_usuario, @senha_usuario)
end
  
Então("vejo a mensagem {string}") do |mensagem|
    expect(@cadastro_page.verifica_cadastro).to have_content mensagem
end

Então("vejo a seguinte mensagem {string}") do |mensagem_erro|
    expect(@cadastro_page.alerta_cadastro).to have_content mensagem_erro
end