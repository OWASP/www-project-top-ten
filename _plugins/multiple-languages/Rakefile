require "bundler/gem_tasks"
require "html-proofer"


#######################################
# default
#######################################
task :default => [:test]



#######################################
# test
#######################################
# A simple test which buils the example site
# and checks all links are valid.
desc "Run HTMLProofer"
task :test do
  cd "example" do
    sh "bundle exec jekyll build"
    options = { empty_alt_ignore: true, enforce_https: true }
    HTMLProofer.check_directory("./_site", options).run
  end
end
