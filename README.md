# problem statement
deletes an azure resource group (if it exists)

# example usage

> note: in examples, VERSION represents a version of the azure.group.delete pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/azure.group.delete#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/azure.group.delete#VERSION
```

## compose

```yaml
run:
  op:
    pkg: { ref: github.com/opspec-pkgs/azure.group.delete#VERSION }
    inputs:
      subscriptionId:
      loginId:
      loginSecret:
      name:
      # begin optional args
      loginTenantId:
      loginType:
      # end optional args
```
