# Infrastructure Automation Platform

A multi-cloud infrastructure automation framework for AWS, Azure, and Google Cloud Platform (GCP).

## Project Structure

```text
├── README.md
├── .gitignore
├── docs/                                 # Centralized documentation
│   ├── BACKEND_SETUP.md
│   └── MODULES.md
├── aws/                                  # All AWS infrastructure
├── azure/                                # All Azure infrastructure
└── gcp/                                  # All GCP infrastructure
```

## Getting Started

1.  Refer to `docs/BACKEND_SETUP.md` to configure your remote state.
2.  Choose your cloud provider directory (`aws/`, `azure/`, or `gcp/`).
3.  Customize modules in the respective `modules/` folders.
4.  Run `terraform init` and `terraform apply`.

## Documentation
-   [Backend Setup](docs/BACKEND_SETUP.md)
-   [Infrastructure Modules](docs/MODULES.md)
