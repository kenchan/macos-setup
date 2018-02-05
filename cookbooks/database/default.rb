%w(mysql postgresql sqlite influxdb).each do |pkg|
  package pkg do
    action :install
  end
end

package 'percona-toolkit' do
  action :install
end
