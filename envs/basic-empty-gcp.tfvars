environment = "env-gwg3m"

clusters = [
  {
    display_name = "basic-env-2"
    availability = "SINGLE_ZONE"
    cloud        = "GCP"
    region       = "europe-west3"
    type         = "BASIC" # BASIC / STANDARD / DEDICATED 

    serv_account_admin = {
      name = "akoh-sa-demo"
      role = "CloudClusterAdmin"
    }
  }
]
