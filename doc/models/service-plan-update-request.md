
# Service Plan Update Request

Request to update service plan.

## Structure

`ServicePlanUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | The name of a billing account. |
| `current_service_plan` | `String` | Optional | The name of a service plan, if you want to only include devices that have that service plan. |
| `custom_fields` | [`Array<CustomFields>`](../../doc/models/custom-fields.md) | Optional | Custom field names and values, if you want to only include devices that have matching values. |
| `devices` | [`Array<AccountDeviceList>`](../../doc/models/account-device-list.md) | Optional | A list of the devices that you want to change, specified by device identifier. |
| `group_name` | `String` | Optional | The name of a device group, if you want to restore service for all devices in that group. |
| `service_plan` | `String` | Optional | The service plan code that you want to assign to all specified devices. |

## Example (as JSON)

```json
{
  "devices": [
    {
      "deviceIds": [
        {
          "id": "A100003685E561",
          "kind": "meid"
        }
      ]
    }
  ],
  "servicePlan": "new_service_plan_code"
}
```

