# IBM Cloud credentials

# Region and zone
region = "us-south"
zone   = "dal10"

# PowerVS instance parameters
prefix                     = "si14"
pi_existing_workspace_guid = "3dd85d97-1033-490e-98bb-f1445a889503"

pi_aix_image_name              = "7300-03-01"
pi_rhel_image_name             = "RHEL9-SP6"
pi_rhel_management_server_type = "s1022"

pi_networks = [
  {
    name = "ora_net"
    id   = "c38d18ad-b39f-4ba0-94f0-ada107ab64df"
  }
]

pi_ssh_public_key_name = "id_rsa_dal-vpc-vm-1"

pi_aix_instance = {
  memory_size       = 16
  number_processors = 0.25
  cpu_proc_type     = "shared"
  server_type       = "s1022"
  pin_policy        = "hard"
  health_status     = "OK"
}

# Oracle installation storage configuration

pi_oravg_volume = {
  name  = "oravg"
  size  = "100"
  count = "2"
  tier  = "tier1"
}

pi_data_volume = {
  name  = "DATA"
  size  = "10"
  count = "2"
  tier  = "tier1"
}

pi_redo_volume = {
  name  = "REDO"
  size  = "10"
  count = "2"
  tier  = "tier1"
}

ibmcloud_cos_configuration = {
  cos_region                  = "us-south"
  cos_bucket_name             = "oracle-sw-123"
  cos_oracle_database_sw_path = "V982583-01_193000_db.zip"
  cos_oracle_grid_sw_path     = ""
  cos_oracle_ru_file_path     = "p37641958_190000_AIX64-5L.zip"
  cos_oracle_opatch_file_path = "p6880880_190000_AIX64-5L.zip"
}


# Oracle installation and configuration
bastion_host_ip     = "52.118.254.241"
squid_server_ip     = "10.240.64.6"

ora_sid             = "orcl"
oracle_install_type    = "ASM"
pi_user_tags        = ["tag-001", "tag-002"]

no_proxy_list = "localhost,127.0.0.1,10.0.0.0/8"
deployment_type = "public"
redolog_size_in_mb = 1536
