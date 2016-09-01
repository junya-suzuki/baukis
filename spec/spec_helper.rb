RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true

  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    FactoryGirl.reload
  end
end
