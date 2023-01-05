
# Account

Returns information about a specified account.

## Structure

`Account`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | The name of the account. |
| `account_number` | `String` | Optional | The billing number of the account. |
| `organization_name` | `String` | Optional | The name of the organization that the account is part of. |
| `is_provisioning_allowed` | `TrueClass\|FalseClass` | Optional | True if devices can be added to the account and activated with a single request. False if devices must be added to the account before they can be activated. |
| `carriers` | `Array<String>` | Optional | The names of all carriers for the account. |
| `features` | `Array<String>` | Optional | The names of features that are enabled for the account. |
| `i_p_pools` | [`Array<IPPool>`](../../doc/models/ip-pool.md) | Optional | Array of IP pools that are available to the account. |
| `service_plans` | [`Array<ServicePlan>`](../../doc/models/service-plan.md) | Optional | Array of service plans that are available to the account. |

## Example (as JSON)

```json
{
  "accountName": "Chintan_CPNStaticBulk",
  "accountNumber": "1234567890-77777",
  "organizationName": "ChintanCPNBulk",
  "isProvisioningAllowed": true,
  "carriers": [
    "Verizon Wireless"
  ],
  "features": [
    "Static IP",
    "Dynamic IP",
    "Customer PN"
  ],
  "iPPools": [
    {
      "poolName": "ACMESTATIC001",
      "poolType": "Static IP",
      "isDefaultPool": true
    },
    {
      "poolName": "ACMEDYNAMIC001",
      "poolType": "Dynamic IP",
      "isDefaultPool": false
    }
  ],
  "servicePlans": [
    {
      "name": "",
      "code": "92876",
      "sizeKb": 1,
      "carrierServicePlanCode": "",
      "extendedAttributes": []
    },
    {
      "name": "",
      "code": "92876",
      "sizeKb": 1,
      "carrierServicePlanCode": "",
      "extendedAttributes": []
    }
  ]
}
```

