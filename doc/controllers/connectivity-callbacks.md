# Connectivity Callbacks

```ruby
connectivity_callbacks_controller = client.connectivity_callbacks
```

## Class Name

`ConnectivityCallbacksController`

## Methods

* [List Registered Callbacks](../../doc/controllers/connectivity-callbacks.md#list-registered-callbacks)
* [Register Callback](../../doc/controllers/connectivity-callbacks.md#register-callback)
* [Deregister Callback](../../doc/controllers/connectivity-callbacks.md#deregister-callback)


# List Registered Callbacks

Returns the name and endpoint URL of the callback listening services registered for a given account.

```ruby
def list_registered_callbacks(aname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |

## Response Type

[`Array<ConnectivityManagementCallback>`](../../doc/models/connectivity-management-callback.md)

## Example Usage

```ruby
aname = '0252012345-00001'

result = connectivity_callbacks_controller.list_registered_callbacks(aname)
```

## Example Response *(as JSON)*

```json
[
  {
    "accountName": "0252012345-00001",
    "serviceName": "CarrierService",
    "url": "http://10.120.102.147:50569/CallbackListener/Carrier.asmx"
  },
  {
    "accountName": "0252012345-00001",
    "password": "drowssap",
    "serviceName": "DeviceUsage",
    "url": "http://10.120.102.147:50569/CallbackListener/Usage.asmx",
    "username": "zaffod"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Register Callback

You are responsible for creating and running a listening process on your server at that URL.

```ruby
def register_callback(aname,
                      body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |
| `body` | [`RegisterCallbackRequest`](../../doc/models/register-callback-request.md) | Body, Required | Request to register a callback. |

## Response Type

[`CallbackActionResult`](../../doc/models/callback-action-result.md)

## Example Usage

```ruby
aname = 'TestAccount-2'
body = RegisterCallbackRequest.new
body.name = 'CarrierService'
body.url = 'http://10.120.102.183:50559/CallbackListener/CarrierServiceMessages.asmx'

result = connectivity_callbacks_controller.register_callback(aname, body)
```

## Example Response *(as JSON)*

```json
{
  "accountName": "122333444-00002",
  "serviceName": "CarrierService"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Deregister Callback

Stops ThingSpace from sending callback messages for the specified account and service.

```ruby
def deregister_callback(aname,
                        sname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |
| `sname` | `String` | Template, Required | Service name. |

## Response Type

[`CallbackActionResult`](../../doc/models/callback-action-result.md)

## Example Usage

```ruby
aname = '1223334444-00001'
sname = 'CarrierService'

result = connectivity_callbacks_controller.deregister_callback(aname, sname)
```

## Example Response *(as JSON)*

```json
{
  "accountName": "1223334444-00001",
  "serviceName": "CarrierService"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |

