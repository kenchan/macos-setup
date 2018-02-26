package 'fish' do
  action :install
end

execute 'install fisherman' do
  command 'curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher'
  not_if "test -f ~/.config/fish/functions/fisher.fish"
end
