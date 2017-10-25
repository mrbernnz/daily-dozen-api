namespace :factory_bot do
  desc 'Verify that all FactoryBot factories are valid'
  task lint: :environment do
    if Rails.env.test?
      DatabaseCleaner.cleaning do
        FactoryBot.lint
      end
    else
      system("bundle exec rake factory_bot:lint rails_env='test'")
      exit $?.exitstatus
    end
  end
end
