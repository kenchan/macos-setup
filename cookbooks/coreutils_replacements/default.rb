%w[
  bat
  prettyping
  htop
  fd
  tldr
  exa
].each do |pkg|
  package pkg do
    action :install
  end
end
