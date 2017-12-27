%w(visual-studio-code atom-beta).each do |pkg|
  execute "install cask package: #{pkg}" do
    command "brew cask install #{pkg}"
    not_if "brew cask list | grep -q #{pkg}"
  end
end

%w(vim neovim).each do |pkg|
  package pkg do
    action :install
  end
end
