describe 'Forms' do 
    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'   #serach elements by ID is faster.
        fill_in 'password', with: 'jarvis!'

        click_button "Login"

        expect(find('#flash').visible?).to be true
    end

end