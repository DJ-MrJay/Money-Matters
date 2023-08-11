require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  before(:example) do
    @user = User.create(
      name: 'Jane Doe',
      email: 'janedoe@yahoo.com',
      password: '123456'
    )

    # Stub the authenticate_user! method
    allow_any_instance_of(CategoriesController).to receive(:authenticate_user!).and_return(true)

    @category = Category.create!(
      name: 'Entertainment',
      author_id: @user.id
    )
  end

  context 'index page' do
    before { visit categories_path }

    it 'shows category name' do
      expect(page).to have_content(@category.name)
    end

    it 'shows "Add Category" button' do
      expect(page).to have_link('Add Category', href: new_category_path)
    end
  end

  context 'new page' do
    before { visit new_category_path }

    it 'shows correct heading' do
      expect(page).to have_content('ADD CATEGORY')
    end
  end
end
