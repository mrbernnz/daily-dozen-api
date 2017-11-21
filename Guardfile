# Guard-Rails supports a lot options with default values:
# daemon: false                        # runs the server as a daemon.
# debugger: false                      # enable ruby-debug gem.
# environment: 'development'           # changes server environment.
# force_run: false                     # kills any process that's holding the listen port before attempting to (re)start Rails.
# pid_file: 'tmp/pids/[RAILS_ENV].pid' # specify your pid_file.
# host: 'localhost'                    # server hostname.
# port: 3000                           # server port number.
# root: '/spec/dummy'                  # Rails' root path.
# server: thin                         # webserver engine.
# start_on_start: true                 # will start the server when starting Guard.
# timeout: 30                          # waits untill restarting the Rails server, in seconds.
# zeus_plan: server                    # custom plan in zeus, only works with `zeus: true`.
# zeus: false                          # enables zeus gem.
# CLI: 'rails server'                  # customizes runner command. Omits all options except `pid_file`!

# guard :rails, CLI: 'rails server -b "ssl://localhost:4000?key=/Users/mrbernz/.ssh/server.key&cert=/Users/mrbernz/.ssh/server.crt"' do
guard :rails, port: ENV['PORT'] do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end

guard :minitest,  spring: true, CLI: 'rails test -f -d' do
  watch(%r{^app/controllers/(?<path>.+)\.rb$})     { |m| "test/controllers/#{m[:path]}_test.rb" }
  watch(%r{^app/models/(?<path>.+)\.rb$})     { |m| "test/models/#{m[:path]}_test.rb" }
  watch(%r{^test/(.*)\/?_test(.*)\.rb$})
  watch(%r{^test/factories\.rb$})       { 'test' }
  watch(%r{^test/test_helper\.rb$})      { 'test' }
end
