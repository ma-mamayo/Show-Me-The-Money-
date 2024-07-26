# Cloud budget (AWS)
## Infrastructure Components
- Compute: Virtual machines to run the desktop application backend.
- Database: Managed database service for storing financial data and audit trails.
- Storage: Persistent storage for backups and audit logs.
- Networking: Virtual network and related components for secure communication.
- Security: Services for authentication, authorization, and encryption.
## Infrastructure
### 1. Compute

Service: Amazon EC2

Instance Type: t3.medium (2 vCPUs, 4 GB RAM)

Count: 2 instances (for redundancy)

### 2. Database

Service: Amazon RDS (PostgreSQL)

Instance Type: db.t3.medium (2 vCPUs, 4 GB RAM)

### 3. Storage

Service: Amazon S3

Usage: 100 GB

### 4. Networking

Service: Amazon VPC, Elastic Load Balancer

### 5. Security

Service: AWS IAM, AWS Key Management Service (KMS)

## AWS Cost Estimation
### EC2 t3.medium

Price per instance: $0.0416 per hour

Monthly cost per instance: $0.0416 * 24 * 30 = $29.95

Total for 2 instances: $29.95 * 2 = $59.90

### RDS db.t3.medium

Price: $0.038 per hour

Monthly cost: $0.038 * 24 * 30 = $27.36

### S3 Storage

Price per GB: $0.023

Monthly cost for 100 GB: $0.023 * 100 = $2.30

### Networking and Security

VPC and ELB: Estimated at $20 per month
### Total Cost
Total Cost per month: $59.90 + $27.36 + $2.30 + $20 = $109.56