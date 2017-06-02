#!/usr/bin/env sh

echo "logging in to azure"
az login -u "$username" -p "$password" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"

echo "checking for existing resource group"
if [ "$(az group show --name "$name")" != "" ]
then
    echo "deleting resource group"
    az group delete \
    --name "$name" \
    --yes
else
    echo "existing resource group not found"
fi
