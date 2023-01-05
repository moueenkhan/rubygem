# Account Requests

```ruby
account_requests_controller = client.account_requests
```

## Class Name

`AccountRequestsController`


# Get Current Asynchronous Request Status

Returns the current status of an asynchronous request that was made for a single device.

```ruby
def get_current_asynchronous_request_status(aname,
                                            request_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `aname` | `String` | Template, Required | Account name. |
| `request_id` | `String` | Template, Required | UUID from synchronous response. |

## Response Type

[`AsynchronousRequestResult`](../../doc/models/asynchronous-request-result.md)

## Example Usage

```ruby
aname = '0252012345-00001'
request_id = '86c83330-4bf5-4235-9c4e-a83f93aeae4c'

result = account_requests_controller.get_current_asynchronous_request_status(aname, request_id)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "86c83330-4bf5-4235-9c4e-a83f93aeae4c",
  "status": "Success"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |

