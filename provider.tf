provider "google" {
 credentials = "${file("C:/profili/U357314/Documents/Software/Terraform/Lab/SNY.OSS.TRF.01.01.00/SNY-OSS-TRF-01-01-00-870577b1e676.json")}"
 project     = "sny-oss-trf-01-01-00"
 region      = "us-west1-a"
}