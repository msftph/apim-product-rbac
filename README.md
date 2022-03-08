# Azure API Management - Multi Tenant

In Azure API Management, the users, subscriptions and group sections only serve to restrict developers to specific apis. There is no current way to provide multi-tenant adminstration of Azure API Management. 

Assume there are several product groups within an organization that want to share a specific instance of Azure API Management. These users want only to modify their own APIM products and do not want users from other groups to modify their products. 

This repo is based off of the following blog post https://www.sanganakauthority.com/2019/08/azure-api-management-restrict-users-to.html

## Domains

| Domain  | Description                     | Roles         |
|---------|---------------------------------|---------------|
| Finance | Financials for the company      | Finance Admin |
| HR      | Human Resources for the company | HR Admin      |

## How

Azure API Management exposes the concept of custom RBAC Roles. 