execute 'install Homebrew' do
  command 'yes "" | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  not_if 'test -e /usr/local/bin/brew'
end
