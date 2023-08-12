require 'rails_helper'

RSpec.describe 'expenses', type: :feature do
  before(:example) do
    @user = User.create(
      name: 'Jane Doe',
      email: 'janedoe@gmail.com',
      password: '123456'
    )

    # Stub the authenticate_user! method
    allow_any_instance_of(ExpensesController).to receive(:authenticate_user!).and_return(true)

    @category = Category.create!(
      name: 'Entertainment',
      author_id: @user.id
    )

    @expense = Expense.create!(
      name: 'Concert',
      amount: 35,
      author_id: @user.id
    )

    CategoryExpense.create!(
      category_id: @category.id,
      expense_id: @expense.id
    )

    # Assuming @expenses_sum and @expenses are populated as needed for the tests
    @expenses_sum = @category.expenses.sum(:amount)
    @expenses = @category.expenses
  end

  context 'index page' do
    before { visit category_expenses_path(@category) }

    it 'shows correct heading' do
      expect(page).to have_content('TRANSACTIONS')
    end

    it 'shows category name' do
      expect(page).to have_content(@category.name)
    end

    it 'shows total expenses amount' do
      expect(page).to have_content("$#{number_with_delimiter(@expenses_sum, delimiter: ',')}0")
    end

    it 'shows expense name' do
      expect(page).to have_content(@expense.name)
    end

    it 'shows expense amount' do
      expect(page).to have_content("$#{number_with_delimiter(@expense.amount, delimiter: ',')}0")
    end
  end

  context 'new page' do
    before { visit new_category_expense_path(@category) }

    it 'shows correct heading' do
      expect(page).to have_content('ADD TRANSACTION')
    end

    it 'shows back button' do
      within 'nav' do
        expect(page).to have_link('', href: category_expenses_path(@category)) do |back_link|
          expect(back_link).to have_selector('i.material-icons.md-36', text: 'arrow_back')
        end
      end
    end

    it 'shows transaction name field' do
      expect(page).to have_field('Transaction Name', type: 'text')
    end

    it 'shows amount field' do
      expect(page).to have_field('Amount', type: 'number')
    end

    it 'shows save button' do
      expect(page).to have_button('SAVE')
    end
  end
end
