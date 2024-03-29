# Terraform
Terraform at ITYOURWAY

# Directory Structure

Our approach to creating an infrastructure is to avoid creating a single monolithic resource collection, instead opting for logical separators to accommodate unique application configurations per environment. For instance, a Development environement will have their own configuration, as well as resource modules, whilst Production environemnt will have a separate one too. This approach promotes clarity and flexibility in managing infrastructure resources.

    ├── <Resource-Type>_<descriptor-part1-...>_<ityourway...>
    |   ├── README.md
    |   └── <environment>  
    |       ├── _config.tf
    |       ├── resource1.tf
    |       ├── resource2.tf
    |       ├── outputs.tf
    |       └── variables.tf
    ├── app_<appname>_<ityourway>
    |   ├── README.md
    |   ├── dev
    |   |   ├── _config.tf
    |   |   ├── resource1.tf
    |   |   ├── resource2.tf
    |   |   ├── outputs.tf
    |   |   └── variables.tf
    |   ├── prod
    |   |   ├── _config.tf
    |   |   ├── resource1.tf
    |   |   ├── resource2.tf
    |   |   ├── outputs.tf
    |   |   └── variables.tf
    |   └── qa
    |       ├── README.md
    |       ├── _config.tf
    |       ├── resource1.tf
    |       ├── resource2.tf
    |       ├── outputs.tf
    |       └── variables.tf
    ├── vpc_shared_<ityourway>
    |   ├── README.md
    |   ├── dev
    |   |   ├── _config.tf
    |   |   ├── instance1.tf
    |   |   ├── instance2.tf
    |   |   ├── outputs.tf
    |   |   └── variables.tf  
    |   ├── prod
    |   |   ├── _config.tf
    |   |   ├── instance1.tf
    |   |   ├── instance2.tf
    |   |   ├── outputs.tf
    |   |   └── variables.tf  
    |   └── qa
    |       ├── _config.tf
    |       ├── instance1.tf
    |       ├── instance2.tf
    |       ├── outputs.tf
    |       └── variables.tf   
    ├── ec2_shared_<ityourway>
    |   ├── README.md
    |   ├── dev
    |   |   ├── _config.tf
    |   |   ├── instance1.tf
    |   |   ├── instance2.tf
    |   |   ├── outputs.tf
    |   |   └── variables.tf
    |   ├── prod
    |   |   ├── _config.tf
    |   |   ├── instance1.tf
    |   |   ├── instance2.tf
    |   |   ├── outputs.tf
    |   |   └── variables.tf
    |   └── qa
    |       ├── _config.tf
    |       ├── instance1.tf
    |       ├── instance2.tf
    |       ├── outputs.tf
    |       └── variables.tf



# Resource Collection Naming Convention:

Resources structure will be heavily dependent upon the cloud provider and the way that they structure their resources internally. All known examples will be documented in the provider folder's README.md. See links below.

###### Cloud Providers:
| __short code__      | __provider__        |
|---------------------|---------------------|
| aws                 | Amazon Web Services |
| gcp                 | Google Cloud Platform|
| azure               | Azure               |


# Terraform Module 
Example: 
    
    └── modules
        ├── aws-vpc
        |   ├── README.md
        |   ├── main.tf
        |   ├── outputs.tf
        |   └── variables.tf    
        └── aws-s3-buckets
            ├── README.md
            ├── main.tf
            ├── outputs.tf
            └── variables.tf



