node[:cask_packages].each do |pkg|
  execute "install cask package: #{pkg}" do
    command "brew cask install #{pkg}"
    not_if "brew cask list | grep -q #{pkg}"
  end
end
