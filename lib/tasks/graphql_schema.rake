namespace :graphql_schema do
  desc 'Track GraphQL Schema Changes'
  task dump: :environment do
  schema_defn = DailyDozenApiSchema.to_definition
  schema_path ='app/graphql/daily_dozen_api_schema.graphql'
  File.write(Rails.root.join(schema_path), schema_defn)
  puts "Updated #{schema_path}"
  end
end
