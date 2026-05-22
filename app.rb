require 'sinatra'
require 'dotenv/load'
require_relative './services/github_services'

set :bind, '0.0.0.0'
set :port, 4567

get '/' do
  service = GithubService.new

  @runs = service.workflow_runs(
    ENV['GITHUB_OWNER'],
    ENV['GITHUB_REPO']
  )

  puts @runs.inspect

  erb :index

end