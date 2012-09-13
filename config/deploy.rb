require 'capistrano_colors'
require 'bundler/capistrano'
# require 'capistrano_database_yml'
require 'config/deploy/capistrano_database_yml'

# set :scm_hostname, proc{Capistrano::CLI.ui.ask("Subversion host: ")}
set :scm_hostname, "subversion.ncs.local"
# set :scm_hostname, "localhost:6690"
set :application, "property_management"
set :repository,  "svn://#{scm_hostname}/ncs/trunk/rails/#{application}"

set :scm, :subversion
set :scm_user, "aaron"
# set :scm_password, "password"
# set :scm_password, proc{Capistrano::CLI.password_prompt("Subversion password:")}
set :scm_prefer_prompt, true
# set :scm_verbose, true

set :use_sudo, false
set :user, "t1adm"
set :domain, "ncschri.ncs.local"
# set :domain, "172.17.20.25" # tasdist
# set :domain, "localhost:3022"

set :deploy_to, "/u/apps/#{application}"
set :deploy_via, :copy
set :copy_strategy, :export

role :web, domain
role :app, domain
role :db,  domain, :primary => true

# Passenger mod_rails
namespace :deploy do
  task :migrate do ; end

  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path, 'tmp', 'restart.txt')}"
  end

  # naming tasks with before_ and after_ is deprecated, see the new before()
  # and after() methods
  # task :after_symlink, :roles => :app, :except => { :no_release => true } do
  task :link_db, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} ln -nfs #{File.join(shared_path, 'config', 'database.yml')} #{File.join(current_path, 'config', 'database.yml')}"
  end
end

namespace :ncsweb do
  task :symlink_public, :roles => :app, :except => { :no_release => true } do
    # ln -nfs /u/apps/property_management/current/public /u/ncsweb/property_management
    run "#{try_sudo} ln -nfs #{File.join(current_path, 'public')} #{File.join('/u', 'ncsweb', application)}"
  end
end

# after "deploy:setup", "deploy:migrations"
after "deploy:finalize_update", "ncsweb:symlink_public"
