execute "sudo apt-get update && sudo apt-get upgrade" do
  action :nothing
end

template "/etc/apt/sources.list.d/compulab.list" do
  source "compulab.list.erb"
end

execute "sudo apt-get update && sudo apt-get install linux-image-2.6.35-34-fitpc2 linux-headers-2.6.35-34-fitpc2 xserver-xorg-video-poulsbo mplayer-vaapi mplayer-skins && sudo apt-get purge linux-generic linux-image-generic linux-headers-generic linux-image-$(uname -r) linux-headers-$(uname -r) && sudo apt-get autoremove" do
  action :nothing
end

package "linux-image-2.6.35-34-fitpc2" do
  action :install
end

package "linux-headers-2.6.35-34-fitpc2" do
  action :install
end


package "xserver-xorg-video-poulsbo" do
  action :install
end


package "mplayer-vaapi" do
  action :install
end

package "mplayer skins" do
  action :install
end

package "linux-generic" do
  action :remove
end

package "linux-image-generic" do
  action :remove
end

package "linux-headers-generic" do
  action :remove
end

package "linux-image-$(uname -r)" do
  action :remove
end

package "linux-headers-$(uname -r)" do
  action :remove
end

execute "sudo apt-get autoremove" do
  action :nothing
end

#install xfce and poulsbo video driver
package "xfce4" do
  action :install
end

package "alsa-base" do
  action :install
end

package "pulseaudio" do
  action :install
end

package "flashplugin-nonfree" do
  action :install
end

package "wpasupplicant" do
  action :install
end

package "python-software-properties" do
  action :install
end

package "firefox" do
  action :install
end

package "unclutter" do
  action :install
end

package "apache2" do
  action :install
end

package "php5" do
  action :install
end

