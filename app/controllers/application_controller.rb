class ApplicationController < ActionController::Base
  before_action :repo_name
  
  def repo_name
    @repo = GithubSearch.repo_name
  end
end
