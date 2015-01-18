== README
README for open_24hrs app
open_24hrs in SF, donuts, diners and more.

*********WORKSPACE**********
This workspace uses rails -v 4.2.0.rc2
if you don't have it run: 
    $ gem install rails -v 4.2.0.rc2
    
so you can do the following to ensure that version 4.2.0.rc2 is used:
    $ rails _4.2.0.rc2_ new app_name

********SERVER*********
Running rails server on c9.io:
    $ rails server -b $IP -p $PORT
    

********GEMFILE*******
using heroku must bundle intall without production:
    $bundle install --without production
    
to make sure versions match run especially if you intalled a version of a gem different from the gem file:
    $ bundle update
    
******GIT*********
add ssh key:
    https://help.github.com/articles/generating-ssh-keys/
    
Set up
$ git config --global user.name "Your Name"
$ git config --global user.email your.email@example.com
$ git config --global push.default matching #ensure forward compatibility
$ git config --global alias.co checkout #use co instead of checkout
    
initialize repository:
    $ git init
    $ git add -A
    $ git commit -m "Initialize repository"
create repo on github or bitbucket if it doesn't exist yet

push to git:
    
branches
    $ git checkout -b [branch name]
    $ git checkout master
    $ git merge [branch name]

******Database*********
https://preview.c9.io/amylinow/rails-projects/
    

