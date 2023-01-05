
# Device Suspension Status Request

Request to return service suspension information about one or more devices.

## Structure

`DeviceSuspensionStatusRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_ids` | [`Array<DeviceId>`](../../doc/models/device-id.md) | Optional | The devices that you want to include in the request, specified by device identifier. You only need to provide one identifier per device. |
| `filter` | [`DeviceFilterWithoutAccount`](../../doc/models/device-filter-without-account.md) | Optional | Filter for devices without account. |
| `account_name` | `String` | Optional | The name of a billing account. |

## Example (as JSON)

```json
{
  "filter": {
    "groupName": "suspended devices"
  },
  "accountName": "1223334444-00001"
}
```

