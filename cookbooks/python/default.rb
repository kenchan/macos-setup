%w(
python2
python3
pipenv
).each do |pkg|
  package pkg do
    action :install
  end
end
