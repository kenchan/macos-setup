package 'tmux' do
  action :install
end

git "#{ENV['HOME']}/.tmux/plugins/tpm" do
  repository 'https://github.com/tmux-plugins/tpm'
end
