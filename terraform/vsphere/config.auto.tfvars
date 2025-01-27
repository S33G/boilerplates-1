#===============================================================================
# VMware vSphere configuration
#===============================================================================

# vCenter IP or FQDN #
vsphere_vcenter = "172.16.16.6"

# vSphere datacenter name where the infrastructure will be deployed #
vsphere_datacenter = "The Outlands"

# Skip the verification of the vCenter SSL certificate (true/false) #
vsphere_unverified_ssl = "true"

# vSphere cluster name where the infrastructure will be deployed #
vsphere_cluster = "Eduardo"

#===============================================================================
# Virtual machine parameters
#===============================================================================

# The name of the virtual machine #
vm_name = "deb-x11-terraform"

# The datastore name used to store the files of the virtual machine #
vm_datastore = "nvme-30A"

# The vSphere network name used by the virtual machine #
vm_network = "LAN"

# The IP address of the virtual machine #
vm_ip = "172.16.16.65"

# The netmask used to configure the network card of the virtual machine (example: 24) #
vm_netmask = "24"

# The network gateway used by the virtual machine #
vm_gateway = "172.16.16.1"

# The DNS server used by the virtual machine #
vm_dns = ["172.16.16.1"]

# The domain name used by the virtual machine #
vm_domain = ""

# The domain search list
dns_suffix = ["local.chkpwd.com"]

# The vSphere template the virtual machine is based on #
vm_template = "deb-x11-template"

# The ssh username for the guest system
ssh_username = "hyoga"

instance_count = "1"

folder_id = "cattles"