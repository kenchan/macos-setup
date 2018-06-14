%w(visual-studio-code).each do |pkg|
  cask pkg
end

%w(vim neovim).each do |pkg|
  package pkg do
    action :install
  end
end
