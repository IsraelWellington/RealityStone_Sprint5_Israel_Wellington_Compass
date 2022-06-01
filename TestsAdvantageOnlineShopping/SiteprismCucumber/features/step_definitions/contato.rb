Quando ('entrar em contato pelo formulário da home') do
    contact_data = Factory::Dynamic.message_for_contact
    @home_page.send_message_contact_us(contact_data)
    # element.set contact_data[:email]
    # element.set contact_data[:message]
    # binding.pry
end

Então ('deverá apresentar um modal de mensagem enviada') do
    expect(@home_page).to have_success_message
end
