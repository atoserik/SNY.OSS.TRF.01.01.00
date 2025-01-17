variable "CREDENTIAL_FILE" {}
variable "VM_USERNAME" {}
variable "PROJECT_ID" {}
variable "REGION" {
    default="us-west1"
}

variable "ZONE" {
    default="a"
}
variable "VPC_NAME" {
     default="erik-vpc"
}
variable "PUBLIC_SUBNET_CDIR" {
    default="10.28.1.0/24"
}
variable "PRIVATE_SUBNET_CDIR" {
    default="10.28.2.0/24"
}
variable "APPSERVERS_COUNT" {
    default="1"
}

variable "IMAGE" {
    type="map"
    default={
        "us-west1-a"="debian-cloud/debian-9"
        "us-west2-a"="debian-cloud/debian-8"
    }
}