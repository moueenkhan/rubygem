
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `vz_m_2_m_token` | `String` | M2M Session Token |
| `o_auth_client_id` | `String` | OAuth 2 Client ID |
| `o_auth_client_secret` | `String` | OAuth 2 Client Secret |
| `environment` | Environment | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `o_auth_token` | `OAuthToken` | Object for storing information about the OAuth token |

The API client can be initialized as follows:

```ruby
client = ThingSpaceConnectivityManagementApi::Client.new(
  vz_m2_m_token: 'VZ-M2M-Token',
  o_auth_client_id: 'OAuthClientId',
  o_auth_client_secret: 'OAuthClientSecret',
  environment: Environment::PRODUCTION,
)
```

## ThingSpace Connectivity Management API Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| device_management | Gets DeviceManagementController |
| accounts | Gets AccountsController |
| device_groups | Gets DeviceGroupsController |
| sms | Gets SMSController |
| session_management | Gets SessionManagementController |
| connectivity_callbacks | Gets ConnectivityCallbacksController |
| account_requests | Gets AccountRequestsController |
| service_plans | Gets ServicePlansController |
| o_auth_authorization | Gets OAuthAuthorizationController |

