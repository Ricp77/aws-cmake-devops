[![CMake CI-CD](https://github.com/Ricp77/aws-cmake-devops/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/Ricp77/aws-cmake-devops/actions/workflows/ci-cd.yml)

Production-Grade C++ CI/CD Pipeline & Automated Deployment on AWS

Stack: C++17, CMake, GitHub Actions, Docker, AWS ECR, AWS Systems Manager (SSM), Bash, jq

Architected an end-to-end multi-stage GitHub Actions pipeline enforcing automated unit testing (CTest), artifact packaging, and immutable Docker container releases to AWS ECR.

Implemented zero-ingress secure continuous delivery to EC2 via AWS Systems Manager (SSM Run Command), eliminating the need for open SSH ports (port 22) and static bastion hosts.

Engineered automated post-deployment smoke testing and instant zero-downtime rollback routines in Bash, validating container exit codes before committing releases.
