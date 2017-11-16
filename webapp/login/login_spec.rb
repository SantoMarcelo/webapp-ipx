describe('Capybara') do
    
    
        before(:each) do
            Capybara.configure do |c|
                c.default_driver = :selenium
            end
    
            Capybara.default_max_wait_time = 5
    
            visit 'http://login.qc.dev.ringbyname.com/incoming-call-popup/'
            
           
        end
    
    
        it('Cadastro pessoa fisica com sucesso') do
            find('input[placeholder="User"]').set 'devqc.user5@ringbyname.com'
            find('input[placeholder="Password"]').set '123456asd'
            find('button[type="submit"]').click
            
    
            alerta = page.driver.browser.title
            expect(alerta).to eql "RingByName"
            
        end
    
    end