execute 'brew services start all' do
  command 'brew services start --all'
  only_if 'brew services list | grep -q stopped'
end
