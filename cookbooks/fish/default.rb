package 'fish' do
  action :install
end

execute 'install fisherman' do
  command 'curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher'
  not_if "test -f ~/.config/fish/functions/fisher.fish"
end

file '/etc/shells' do
  action :edit
  block do |content|
    content << %x(which fish)
  end
  not_if 'grep -q fish /etc/shells'

  # error occuers /home/mruby/code/mrblib/mitamae/recipe_executor.rb:24:Permission denied - /tmp/#{timestamp}.{id} (Errno::EACCES)
  user 'root'
  group 'wheel'
end
