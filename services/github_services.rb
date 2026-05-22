require 'octokit'

class GithubService
  def initialize
    @client = Octokit::Client.new(
      access_token: ENV['GITHUB_TOKEN']
    )
  end

  def workflow_runs(owner, repo)
  response = @client.get("/repos/#{owner}/#{repo}/actions/runs")

  response[:workflow_runs].map do |run|
    {
      name: run[:name],
      status: run[:status],
      conclusion: run[:conclusion],
      branch: run[:head_branch],
      commit: run[:head_sha][0..6],
      actor: run[:actor][:login],
      updated_at: run[:updated_at],
      url: run[:html_url]
    }
  end
end
end