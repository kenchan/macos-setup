package 'm-cli' do
  action :install
end

execute 'configure Dock' do
  command 'm dock autohide YES'
end

execute 'configure Finder' do
  command 'm finder showhidefiles YES'
end
