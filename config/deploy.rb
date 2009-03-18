# SOURCES
# setup users: http://www.viget.com/extend/building-an-environment-from-scratch-with-capistrano-2/
# setup deploy: http://www.capify.org/getting-started/from-the-beginning/

default_run_options[:pty] = true  
set :application, "calclab"
set :deploy_to, "/home/deploy/#{application}"
set :user, "deploy"
set :use_sudo, false

set :scm, "git"
set :repository,  "git@github.com:misspi/calclab.git"
set :branch, "master"
set :deploy_via, :remote_cache
#set :git_shallow_clone, 1
#set :git_enable_submodules, 1

role :app, "toami.net"
role :web, "toami.net"
role :db,  "toami.net", :primary => true

