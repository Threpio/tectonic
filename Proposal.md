# Tectonic Proposal.

A service that periodically validates terraform states to ensure nothing has changed.

This aims to do the following:

- Notify Users if there is a change in the state.
- Notify Users if there has been configuration drift.
- Raise alarms for security failures and best practises using inbuilt checkov tests.
- Validate configuration drift against OPA policies defined or custom policies.

Example commands:

```
tectonic check  # Runs a terraform init and plan to check if anything has been changed.
tectonic reg    # Register a terraform state with the tectonic service.
tectonic unreg  # Unregister a terraform state with the tectonic service.
tectonic secure # Runs security checks against the terraform code and state.
```

## Problems:

("they" meaning the users)

How is this meant to be hosted?

How are they meant to register the service principles required for it to track the state?

If this is not part of their CI/CD pipeline, how are they meant to be able to run the security checks?

How are they to link it up to the alerting system?