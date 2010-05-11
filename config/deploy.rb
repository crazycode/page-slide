set :application, "slideshow"
set :repository,  "git@github.com:crazycode/page-slide.git"


# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/srv/slideshow.5173dev.com"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git

default_run_options[:pty] = true
set :scm_password, Proc.new { Capistrano::CLI.password_prompt "SCM Password: "}

role :app, "slideshow.5173dev.com"
role :web, "slideshow.5173dev.com"
role :db,  "slideshow.5173dev.com", :primary => true

set :user, "tanglq"
set :use_sudo, true

desc "Link in the production database.yml"
task :after_update_code do
  sudo "ln -nfs #{deploy_to}/#{shared_dir}/config/database.yml #{release_path}/config/database.yml"
  run "cd #{release_path} && ruby -rconfig/environment -e ‘Sass::Plugin.updatestylesheets'"
  sudo "chown -R www-data:www-data #{release_path}"
  #sudo "chown -R www-data:www-data #{release_path}/tmp"
end

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    sudo "touch #{current_path}/tmp/restart.txt"
    sudo "chown -R www-data:www-data #{release_path}/tmp"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end
