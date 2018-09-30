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
global
heroku
hub
imagemagick
jid
jq
mozjpeg
nkf
peco
pssh
rcm
redis
ripgrep
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
).each do |pkg|
  package pkg do
    action :install
  end
end

package 'gnu-sed' do
  action :install
  options '--with-default-names'
end
