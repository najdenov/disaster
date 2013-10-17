load 'deploy/assets'

require "rvm/capistrano"
require "bundler/capistrano"

set :application, "disaster"
set :repository,  "git@github.com:nonsense/disaster.git"

set :rvm_path, "/usr/local/rvm/"
set :rvm_bin_path, "/usr/local/rvm/bin/"
set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"")

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :keep_releases, 5

server "beta.team-disaster.com", :app, :web, :db, :primary => true

set :deploy_to, "/var/www/#{application}"

set :user, "root"

namespace :deploy do
  task :link_db do
    run "ln -s #{shared_path}/config/database.yml #{latest_release}/config/database.yml"
  end

  namespace :assets do
    task :precompile, :roles => :web, :except => { :no_release => true } do
      from = source.next_revision(current_revision)
      if capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
        run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
      else
        logger.info "Skipping asset pre-compilation because there were no asset changes"
      end
    end
  end

   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end

before "deploy:assets:precompile", "deploy:link_db"

after "deploy:restart", "deploy:cleanup"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

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
