%w(mysql postgresql sqlite influxdb).each do |pkg|
  package pkg do
    action :install
  end
end
