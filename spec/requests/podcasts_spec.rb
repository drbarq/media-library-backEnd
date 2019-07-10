require 'rails_helper'

RSpec.describe 'Podcasts API' do
  # Initialize the test data
  let!(:user) { create(:user) }
  let!(:group) { create(:group) }
  let!(:podcasts) { create_list(:podcast, 20, user_id: user.id) }
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
        # expect(response.body).to match(/Validation failed: episodeName can't be blank, showName can't be blank, Url can't be blank, Comment can't be blank/)
        expect(response.body).to match(/Couldn't find Podcast /)
      end
    end
  end

  # Test suite for PUT /users/:user_id/podcast
  describe 'POST /users/:user_id/podcasts' do
    let(:valid_attributes) { { episodeName: 'Visit Narnia', showName: 'joe', url: 'www.hello.com', comment: 'so sick' } }

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
        expect(response.body).to match(/Validation failed: episodeName can't be blank, showName can't be blank, Url can't be blank, Comment can't be blank/)
      end
    end
  end

  # Test suite for PUT /users/:user_id/podcasts/:id
  describe 'PUT /users/:user_id/podcasts/:id' do
    let(:valid_attributes) { { episodeName: 'Mozart' } }

    before { put "/users/#{user_id}/podcasts/#{id}", params: valid_attributes }

    context 'when item exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the podcast' do
        updated_podcast = Podcast.find(id)
        expect(updated_podcast.episodeName).to match(/Mozart/)
      end
    end

    context 'when the podcast does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Podcast/)
      end
    end
  end

  # Test suite for DELETE /todos/:id
  describe 'DELETE /users/:id' do
    before { delete "/users/#{user_id}/podcasts/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end