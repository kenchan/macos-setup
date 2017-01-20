node[:brew_taps].each do |tap|
  execute 'install brew tap' do
    command "brew tap #{tap}"
    not_if "brew tap | grep -q #{tap}"
  end
end
