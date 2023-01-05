
# Custom Fields Update Request

Request to assign or change custom field values for one or more devices.

## Structure

`CustomFieldsUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | The name of a billing account.This parameter is only required if the UWS account used for the current API session has access to multiple billing accounts.An account name is usually numeric, and must include any leading zeros. |
| `custom_fields` | [`Array<CustomFields>`](../../doc/models/custom-fields.md) | Optional | Custom field names and values, if you want to only include devices that have matching values. |
| `custom_fields_to_update` | [`Array<CustomFields>`](../../doc/models/custom-fields.md) | Optional | The names and new values of any custom fields that you want to change. |
| `devices` | [`Array<AccountDeviceList>`](../../doc/models/account-device-list.md) | Optional | The devices that you want to change. |
| `group_name` | `String` | Optional | The name of a device group, if you want to only include devices in that group. |
| `service_plan` | `String` | Optional | The name of a service plan, if you want to only include devices that have that service plan. |

## Example (as JSON)

```json
{
  "devices": [
    {
      "deviceIds": [
        {
          "id": "89148000000800139708",
          "kind": "iccid"
        }
      ]
    }
  ],
  "customFieldsToUpdate": [
    {
      "key": "CustomField1",
      "value": "West Region"
    },
    {
      "key": "CustomField2",
      "value": "Distribution"
    }
  ]
}
```

