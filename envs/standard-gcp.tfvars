environment = "env-zp5p7"

cluster = {
  display_name = "standard-inventory"
  availability = "SINGLE_ZONE"
  cloud        = "GCP"
  region       = "europe-west3"
  type         = "STANDARD" # BASIC / STANDARD
}

service_account_manager = "mcolomer-sa-man"

service_accounts = ["mcolomer-producer-sa", "mcolomer-consumer-sa", "mcolomer-producer-customer-sa"]

topics = [
  {
    name     = "mcolomer-orders"
    producer = "mcolomer-producer-sa",
    consumer = "mcolomer-consumer-sa"
  },
  {
    name     = "mcolomer-inventory"
    producer = "mcolomer-producer-sa",
    consumer = "mcolomer-consumer-sa"
  },
  {
    name     = "mcolomer-customers"
    producer = "mcolomer-producer-customer-sa",
    consumer = "mcolomer-consumer-sa"
  }
]

