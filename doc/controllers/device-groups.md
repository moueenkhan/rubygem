# Device Groups

```ruby
device_groups_controller = client.device_groups
```

## Class Name

`DeviceGroupsController`

## Methods

* [Create Device Group](../../doc/controllers/device-groups.md#create-device-group)
* [List Device Groups](../../doc/controllers/device-groups.md#list-device-groups)
* [Get Device Group Information](../../doc/controllers/device-groups.md#get-device-group-information)
* [Update Device Group](../../doc/controllers/device-groups.md#update-device-group)
* [Delete Device Group](../../doc/controllers/device-groups.md#delete-device-group)


# Create Device Group

Create a new device group and optionally add devices to the group. Device groups can make it easier to manage similar devices and to get reports on their usage.

```ruby
def create_device_group(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateDeviceGroupRequest`](../../doc/models/create-device-group-request.md) | Body, Required | A request to create a new device group. |

## Response Type

[`ConnectivityManagementSuccessResult`](../../doc/models/connectivity-management-success-result.md)

## Example Usage

```ruby
body = CreateDeviceGroupRequest.new
body.account_name = '10001234-0001'
body.devices_to_add = []


body.devices_to_add[0] = DeviceId.new
body.devices_to_add[0].id = '990003420535537'
body.devices_to_add[0].kind = 'imei'

body.group_description = 'Nevada tank level monitors.'
body.group_name = 'NV tanks'

result = device_groups_controller.create_device_group(body)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# List Device Groups

Returns a list of all device groups in a specified account.

```ruby
def list_device_groups(aname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |

## Response Type

[`Array<DeviceGroup>`](../../doc/models/device-group.md)

## Example Usage

```ruby
aname = '0252012345-00001'

result = device_groups_controller.list_device_groups(aname)
```

## Example Response *(as JSON)*

```json
[
  {
    "name": "Unassigned Devices",
    "description": "All devices that are not in another device group.",
    "isDefaultGroup": true,
    "extendedAttributes": []
  },
  {
    "name": "West Coast Devices",
    "description": "",
    "isDefaultGroup": false,
    "extendedAttributes": []
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Get Device Group Information

When HTTP status is 202, a URL will be returned in the Location header of the form /groups/{aname}/name/{gname}/?next={token}. This URL can be used to request the next set of groups.

```ruby
def get_device_group_information(aname,
                                 gname,
                                 mnext: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |
| `gname` | `String` | Template, Required | Group name. |
| `mnext` | `Integer` | Query, Optional | Continue the previous query from the pageUrl pagetoken. |

## Response Type

[`DeviceGroupDevicesData`](../../doc/models/device-group-devices-data.md)

## Example Usage

```ruby
aname = '0252012345-00001'
gname = 'gname2'

result = device_groups_controller.get_device_group_information(aname, gname, )
```

## Example Response *(as JSON)*

```json
{
  "name": "Nebraska Trucks",
  "description": "All service trucks in Nebraska.",
  "hasMoreData": false,
  "devices": [
    {
      "deviceIds": [
        {
          "id": "12345",
          "kind": "meid"
        },
        {
          "id": "54321",
          "kind": "mdn"
        }
      ]
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Update Device Group

Make changes to a device group, including changing the name and description, and adding or removing devices.

```ruby
def update_device_group(aname,
                        gname,
                        body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |
| `gname` | `String` | Template, Required | Group name. |
| `body` | [`DeviceGroupUpdateRequest`](../../doc/models/device-group-update-request.md) | Body, Required | Request to update device group. |

## Response Type

[`ConnectivityManagementSuccessResult`](../../doc/models/connectivity-management-success-result.md)

## Example Usage

```ruby
aname = '0252012345-00001'
gname = 'gname2'
body = DeviceGroupUpdateRequest.new
body.devices_to_add = []


body.devices_to_add[0] = DeviceId.new
body.devices_to_add[0].id = '990003420535537'
body.devices_to_add[0].kind = 'imei'

body.new_group_description = 'All western region tank level monitors.'
body.new_group_name = 'Western region tanks'

result = device_groups_controller.update_device_group(aname, gname, body)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Delete Device Group

Deletes a device group from the account. Devices in the group are moved to the default device group and are not deleted from the account.

```ruby
def delete_device_group(aname,
                        gname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |
| `gname` | `String` | Template, Required | Group name. |

## Response Type

[`ConnectivityManagementSuccessResult`](../../doc/models/connectivity-management-success-result.md)

## Example Usage

```ruby
aname = '0252012345-00001'
gname = 'gname2'

result = device_groups_controller.delete_device_group(aname, gname)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |

