%w(
caskroom/drivers
caskroom/versions
thoughtbot/formulae
wagoodman/dive
).each do |pkg|
  execute "install brew tap: #{pkg}" do
    command "brew tap #{pkg}"
    not_if "brew tap | grep -q #{pkg}"
  end
end
