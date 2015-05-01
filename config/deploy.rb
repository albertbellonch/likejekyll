# Application
set :application, "likejekyll.com"

# Repo & connection
set :scm, :git
set :repo_url, "git@github.com:albertbellonch/likejekyll-site.git"
set :user, :deployer
set :port, 8622
set :ssh_options, { user: fetch(:user), port: fetch(:port), forward_agent: true }

# Misc
set :keep_releases, 5
set :format, :pretty
set :pty, false

# Roles
server "moroder.bellonch.com", roles: %i{ web }, primary: true

# Hooks
after "deploy:publishing", "jekyll:install"
