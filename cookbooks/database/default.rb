%w(mysql postgresql sqlite3 influxdb).each do |pkg|
  package pkg do
    action :install
  end
end
