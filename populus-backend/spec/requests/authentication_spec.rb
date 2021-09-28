require 'rails_helper'

describe 'Authentication', type: :request do
    describe 'POST /authenticate' do
        it 'authenticates the client' do
            
            post '/api/v1/authenticate', params: {username: "jlepler", password: "password"}

            expect(response).to have_http_status(:created)
            expect(response.body).to eq({
                'token' => '123'
            })
        end
    end
end