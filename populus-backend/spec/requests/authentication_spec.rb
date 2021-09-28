require 'rails_helper'

describe 'Authentication', type: :request do
    describe :api do
        namespace :v1 do
            
            post 'authenticate', to: 'authentication#create'
        end
    end
end