case node['platform']
when "debian", "ubuntu"
  # install the mongodb pecl
  php_pear "mongo" do
    action :install
  end
end
