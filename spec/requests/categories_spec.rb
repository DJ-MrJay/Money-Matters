require 'rails_helper'

RSpec.describe CategoriesController, type: :request do
  let(:user) do
    User.create(
      name: 'Jane Doe',
      email: 'janedoe@yahoo.com',
      password: '123456'
    )
  end

  before do
    # Stub the authenticate_user! and current_user methods
    allow_any_instance_of(CategoriesController).to receive(:authenticate_user!).and_return(true)
    allow_any_instance_of(CategoriesController).to receive(:current_user).and_return(user)
  end

  context 'GET #index' do
    before(:example) { get categories_path }

    it 'responds with success' do
      expect(response).to have_http_status(:ok)
    end

    context 'index template' do
      it 'is rendered' do
        expect(response).to render_template('categories/index')
      end

      it 'includes the correct placeholder text in the response body' do
        expect(response.body).to include('CATEGORIES')
      end
    end
  end

  context 'GET #new' do
    before(:example) { get new_category_path }

    it 'responds with success' do
      expect(response).to have_http_status(:ok)
    end

    context 'new template' do
      it 'is rendered' do
        expect(response).to render_template('categories/new')
      end

      it 'includes the correct placeholder text in the response body' do
        expect(response.body).to include('ADD CATEGORY')
      end
    end
  end
end
