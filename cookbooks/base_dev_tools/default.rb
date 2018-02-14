# cli tools
# dev tools
# languages
%w(
ansible
awscli
direnv
envchain
ghq
gibo
git
heroku
hub
imagemagick
mozjpeg
peco
redis
terraform
the_platinum_searcher
tmux

cmake
libxml2
openssl
readline

composer
elixir
go
php71
python3
).each do |pkg|
  package pkg do
    action :install
  end
end

package 'gnu-sed' do
  action :install
  options '--with-default-names'
end
