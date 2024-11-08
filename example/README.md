# Example Backend module

## Usage

The module assumes you have correctly configured your AWS credentials and they are available as environment variables.

The example module uses a `Makefile` which depends on the [1Password CLI](https://developer.1password.com/docs/cli/secrets-environment-variables/#step-2-pass-the-secrets-to-the-application)
to securely provide the AWS credentials to the Terraform commands.