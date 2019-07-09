# spec/requests/items_spec.rb
require 'rails_helper'

# https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one

RSpec.describe 'Podcasts API' do
  # Initialize the test data
  let!(:user) { create(:user) }
  let!(:group) { create(:group) }
  let!(:podcasts) { create_list(:podcast, 20, user_id: user.id, group_id: group.id) }
  let(:user_id) { user.id }
  let(:group_id) { group.id }
  let(:id) { podcasts.first.id }
 

  # Test suite for GET /users/:user_id/podcasts
  describe 'GET /users/:user_id/podcasts' do
    before { get "/users/#{user_id}/podcasts" }

    context 'when user exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all user podcasts' do
        expect(json.size).to eq(20)
      end
    end

    context 'when user does not exist' do
      let(:user_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end

  # Test suite for GET /users/:user_id/podcasts/:id
  describe 'GET /users/:user_id/podcasts/:id' do
    before { get "/users/#{user_id}/podcasts/#{id}" }

    context 'when user podcast exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the podcast' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when user podcast does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Group without an ID/)
      end
    end
  end

  # Test suite for PUT /users/:user_id/podcasts
  describe 'POST /users/:user_id/podcasts' do
    let(:valid_attributes) { { title: 'Visit Narnia', url: 'www.good.com', comment: 'sweet', author: 'not me'} }

    context 'when request attributes are valid' do
      before { post "/users/#{user_id}/podcasts", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/users/#{user_id}/podcasts", params: {} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match(/Couldn't find Group without an ID/)
      end
    end
  end

  # Test suite for PUT /users/:user_id/podcasts/:id
  describe 'PUT /users/:user_id/podcasts/:id' do
    let(:valid_attributes) { { title: 'Mozart' } }

    before { put "/users/#{user_id}/podcasts/#{id}", params: valid_attributes }

    context 'when podcast exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the podcast' do
        updated_item = Podcast.find(id)
        expect(updated_item.title).to match(/Mozart/)
      end
    end

    context 'when the podcast does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Group without an ID/)
      end
    end
  end

  # Test suite for DELETE /users/:id
  describe 'DELETE /users/:id' do
    before { delete "/users/#{user_id}/podcasts/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end



























# require 'rails_helper'

# RSpec.describe 'Podcasts API', type: :request do
#   # initialize test data 
#   let!(:podcasts) { create_list(:podcast, 10) }
#   let(:podcast_id) { podcasts.first.id }

#   # Test suite for GET /podcasts
#   describe 'GET /podcasts' do
#     # make HTTP get request before each example
#     before { get '/podcasts' }

#     it 'returns podcasts' do
#       # Note `json` is a custom helper to parse JSON responses
#       expect(json).not_to be_empty
#       expect(json.size).to eq(10)
#     end

#     it 'returns status code 200' do
#       expect(response).to have_http_status(200)
#     end
#   end

#   # Test suite for GET /podcasts/:id
#   describe 'GET /podcasts/:id' do
#     before { get "/podcasts/#{podcast_id}" }

#     context 'when the record exists' do
#       it 'returns the podcast' do
#         expect(json).not_to be_empty
#         expect(json['id']).to eq(podcast_id)
#       end

#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end

#     context 'when the record does not exist' do
#       let(:podcast_id) { 100 }

#       it 'returns status code 404' do
#         expect(response).to have_http_status(404)
#       end

#       it 'returns a not found message' do
#         expect(response.body).to match(/Couldn't find Podcast/)
#       end
#     end
#   end

#   # Test suite for POST /podcasts
#   describe 'POST /podcasts' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', url: 'www.hello.com', comment: 'Learn Elm', author: 'Learn Elm'} }

#     context 'when the request is valid' do
#       before { post '/podcasts', params: valid_attributes }

#       it 'creates a podcast' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/podcasts', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Url can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /podcasts/:id
#   describe 'PUT /podcasts/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/podcasts/#{podcast_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

#   # Test suite for DELETE /podcasts/:id
#   describe 'DELETE /podcasts/:id' do
#     before { delete "/podcasts/#{podcast_id}" }

#     it 'returns status code 204' do
#       expect(response).to have_http_status(204)
#     end
#   end
# end