describe "user creation" do
  it "asks the new user to enter their loan information" do
    visit '/'
    page.should have_content "What are you paying off this year?"
    page.should have_content "Amount you'll pay off in 2013"
    page.should have_content "How it Works:"
    fill_in 'name', with: 'my student loan'
    fill_in 'amount', with: '25,000'
    click_on 'Start Payoff Year!'
    page.should have_content "You'll need to pay off at least $2,083.33 per month to reach your goal in 2013"
    page.should have_content "Sign up for PayOff Year to keep track of your goal progress"
  end
end