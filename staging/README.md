The environmental variables must be initialised before perfoerming a plan. This
includes the user and vault credentials as follows:
    TF_VAR_VAULT_ADDR
    TF_VAR_VAULT_TOKEN
    etc etc






To obtain the list of subnet-id, execute the following on the cli:
    az network vnet subnet list --resource-group "YOUR RESOURCE GROUP" --vnet-name "YOUR VNET NAME"

To run terraform plan and apply commands, pass tfvars file etc:
    i.e terraform plan -var-file="tcw-stage-web-test.tfvars"  OR terraform apply -var-file="tcw-stage-web-test.tfvars" -auto-approve

