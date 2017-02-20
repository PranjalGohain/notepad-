NTP.rb
apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'ntp'

service 'ntp' do
  supports :status => true
  action [:enable, :start]
end