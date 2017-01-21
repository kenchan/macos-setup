execute "setup ghq" do
  command "git config --global ghq.root '~/src'"
  not_if "git config --global ghq.root"
end
