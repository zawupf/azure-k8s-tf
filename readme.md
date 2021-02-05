## Terraform

```bash
# <appId>: Your service principal appId
# <pw>: Your service principal password

$ terraform init
$ terraform plan -var 'client_id=<appId>' -var 'client_secret=<pw>'
$ terraform apply -var 'client_id=<appId>' -var 'client_secret=<pw>'
$ terraform destroy -var 'client_id=<appId>' -var 'client_secret=<pw>'
```

## Service Principal

```bash
# <subscription_id>: Your Azure Account subscription id
# <sp_name>: Your name for the Service Principal

$ az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription_id>" --name "<sp_name>"
```

## Azure Account

```bash
$ az account show
$ az account list --query "[].{name:name, subscriptionId:id}"
$ az account set --subscription="<subscription_id>"
```
