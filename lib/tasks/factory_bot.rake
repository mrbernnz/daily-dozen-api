namespace :factory_bot do
  desc 'Verify that all FactoryBot factories are valid'
  task lint: :environment do
    if Rails.env.test?
      DatabaseCleaner.cleaning do
        FactoryBot.lint
      end
    else
      system("RAILS_ENV='test' bundle exec rake factory_bot:lint")
      exit $?.exitstatus
    end
  end
end
