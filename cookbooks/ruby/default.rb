package 'rbenv' do
  action :install
end

git "#{ENV['HOME']}/.rbenv/plugins/ruby-build" do
  repository 'https://github.com/rbenv/ruby-build.git'
  revision 'master'
end

git "#{ENV['HOME']}/.rbenv/plugins/gem-src" do
  repository 'https://github.com/amatsuda/gem-src.git'
end