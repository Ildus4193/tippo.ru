require "bundler/capistrano"

set :application, "tippo"

set :scm, :git
set :repository,  "git@github.com:ktlabs/tippo.git"
set :deploy_via, :remote_cache
set :deploy_env, 'production'
set :user, "deploy"

set :keep_releases, 2


role :web, "badger.ktlabs.ru"
role :app, "badger.ktlabs.ru"
role :db,  "badger.ktlabs.ru", :primary => true

set :deploy_to, "/var/www/#{application}-production"
set :branch, "master"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

namespace :deploy do
  task :restart do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :copy_initial_files do
    run "cp #{File.join(current_path,'config','database.yml.example')} #{File.join(shared_path,'database.yml')}"
  end
  
  task :fix_perms do
    try_sudo "chown #{user}:#{user} #{deploy_to} -R"
  end  
  
  task :show_public_key do
    run "cat ~/.ssh/id_rsa.pub"
  end
  
  desc "Copy database config"
  task :copy_db_config, :roles => :db do
    run "cp #{File.join(shared_path,'database.yml')} #{current_path}/config/"
  end
  
  after "deploy:symlink", "deploy:copy_db_config"


#  task :create_nginx_record do
# => call to server script for creating config file from template given paths
#  end
  
#  task :enable_nginx_record do
# => call to server script for creating symlink and restaring nginx with test:
# => cd ...
# => ln -s dest orig
# => service nginx restart
#  end

#  task :disable_nginx_record do
# => call to server script for deleting symlink and restarting nginx:
# => cd ...
# => rm symlink
# => service nginx restart
#  end

# first app deployment
# cap deploy:setup
# cap deploy:fix_perms
# cap deploy:update_code
# TODO:
# cap deploy:create_nginx_record
# cap deploy:enable_nginx_record
## bundle install
## copy files into places
## create database
## migrate
end

#        require './config/boot'
#        require 'airbrake/capistrano'
