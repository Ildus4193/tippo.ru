require 'rvm/capistrano' # Для работы rvm
require 'bundler/capistrano' # Для работы bundler. При изменении гемов bundler автоматически обновит все гемы на сервере, чтобы они в точности соответствовали гемам разработчика. 

set :application, "tippo.ru"
set :rails_env, "production"
set :domain, "78.108.83.225" # Это необходимо для деплоя через ssh. Именно ради этого я настоятельно советовал сразу же залить на сервер свой ключ, чтобы не вводить паролей.
set :deploy_to, "/var/sites/#{application}"
set :use_sudo, false
set :unicorn_conf, "#{deploy_to}/current/config/unicorn.rb"
set :unicorn_pid, "#{deploy_to}/shared/pids/unicorn.pid"
set :user, 'root'
ssh_options[:forward_agent] = true
default_run_options[:pty] = true

before 'deploy:setup', 'rvm:install_rvm'
before 'deploy:setup', 'rvm:install_ruby'
set :rvm_ruby_string, 'ruby-1.9.3-p194' # Это указание на то, какой Ruby интерпретатор мы будем использовать.
#set :rvm_ruby_string, :local
#set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"")



set :scm, :git # Используем git. Можно, конечно, использовать что-нибудь другое - svn, например, но общая рекомендация для всех кто не использует git - используйте git. 
set :repository,  "git@github.com:Ildus4193/tippo.ru.git" # Путь до вашего репозитария. Кстати, забор кода с него происходит уже не от вас, а от сервера, поэтому стоит создать пару rsa ключей на сервере и добавить их в deployment keys в настройках репозитария.
set :branch, "master" # Ветка из которой будем тянуть код для деплоя.
set :deploy_via, :remote_cache # Указание на то, что стоит хранить кеш репозитария локально и с каждым деплоем лишь подтягивать произведенные изменения. Очень актуально для больших и тяжелых репозитариев.

role :web, "78.108.83.225"
role :app, "78.108.83.225"
role :db,  "78.108.83.225", :primary => true

before 'deploy:setup', 'rvm:install_rvm', 'rvm:install_ruby' # интеграция rvm с capistrano настолько хороша, что при выполнении cap deploy:setup установит себя и указанный в rvm_ruby_string руби.

after 'deploy:update_code', :roles => :app do
    # Здесь для примера вставлен только один конфиг с приватными данными - database.yml. Обычно для таких вещей создают папку /srv/myapp/shared/config и кладут файлы туда. При каждом деплое создаются ссылки на них в нужные места приложения.
  run "rm -f #{current_release}/config/database.yml"
  run "ln -s #{deploy_to}/shared/config/database.yml #{current_release}/config/database.yml"
end

# Далее идут правила для перезапуска unicorn. Их стоит просто принять на веру - они работают.
# В случае с Rails 3 приложениями стоит заменять bundle exec unicorn_rails на bundle exec unicorn
namespace :deploy do
  task :restart do
    run "if [ -f #{unicorn_pid} ] && [ -e /proc/$(cat #{unicorn_pid}) ]; then kill -USR2 `cat #{unicorn_pid}`; else cd #{deploy_to}/current && bundle exec unicorn -c #{unicorn_conf} -E #{rails_env} -D; fi"
  end
  task :start do
    run "bundle exec unicorn -c #{unicorn_conf} -E #{rails_env} -D"
  end
  task :stop do
    run "if [ -f #{unicorn_pid} ] && [ -e /proc/$(cat #{unicorn_pid}) ]; then kill -QUIT `cat #{unicorn_pid}`; fi"
  end
end


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
#end

#        require './config/boot'
#        require 'airbrake/capistrano'
