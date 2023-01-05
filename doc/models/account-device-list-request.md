
# Account Device List Request

Request for listing account devices.

## Structure

`AccountDeviceListRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Optional | The billing account for which a list of devices is returned. If you don't specify an accountName, the list includes all devices to which you have access. |
| `device_id` | [`DeviceId`](../../doc/models/device-id.md) | Optional | An identifier for a single device. |
| `filter` | [`AccountDeviceListFilter`](../../doc/models/account-device-list-filter.md) | Optional | Filter for a list of devices. |
| `current_state` | `String` | Optional | The name of a device state, to only include devices in that state. |
| `custom_fields` | [`Array<CustomFields>`](../../doc/models/custom-fields.md) | Optional | Custom field names and values, if you want to only include devices that have matching values. |
| `earliest` | `String` | Optional | Only include devices that were added after this date and time. |
| `group_name` | `String` | Optional | Only include devices that are in this device group. |
| `latest` | `String` | Optional | Only include devices that were added before this date and time. |
| `service_plan` | `String` | Optional | Only include devices that have this service plan. |

## Example (as JSON)

```json
{
  "accountName": "0786890242-00001",
  "filter": {
    "deviceIdentifierFilters": [
      {
        "kind": "iccid",
        "contains": "4259"
      }
    ]
  }
}
```

