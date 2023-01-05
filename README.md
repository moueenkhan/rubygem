
# Getting Started with ThingSpace Connectivity Management API

## Introduction

The ThingSpace Connectivity Management API allows you to add and activate devices, check their status, monitor their usage, monitor their reachability for Data and SMS communication as well as their connection status, and perform other device connectivity management tasks through a RESTful API. You can use the API to add connectivity management to anything from small apps to enterprise software systems, such as enterprise resource planning (ERP), supply chain management and customer service management. The API provides a secure, standards-compliant REST interface to the web services at the ThingSpace Data Center. You can download the <a href="/content/dam/thingspace-portal/resources/documentation/swagger/m2m-all.json" download = "Connectivity_Management.json">JSON file here</a>.

## Building

The generated code depends on a few Ruby gems. The references to these gems are added in the gemspec file. The easiest way to resolve the dependencies, build the gem and install it is through Rake:

1. Install Rake if not already installed: `gem install rake`
2. Install Bundler if not already installed: `gem install bundler`
3. From terminal/cmd navigate to the root directory of the SDK.
4. Invoke: `rake install`

Alternatively, you can build and install the gem manually:

1. From terminal/cmd navigate to the root directory of the SDK.
2. Run the build command: `gem build thing_space_connectivity_management_api.gemspec`
3. Run the install command: `gem install thing_space_connectivity_management_api-5.12.0.gem`

![Installing Gem](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&gemVer=5.12.0&gemName=thing_space_connectivity_management_api&step=buildSDK)

## Installation

The following section explains how to use the thing_space_connectivity_management_api ruby gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting `File -> Close Project`. Next, click on `Create New Project` to create a new project from scratch.

![Create a new project in RubyMine - Step 1](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&step=createNewProject0)

Next, provide `TestApp` as the project name, choose `Rails Application` as the project type, and click `OK`.

![Create a new Rails Application in RubyMine - Step 2](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&step=createNewProject1)

In the next dialog make sure that the correct Ruby SDK is being used (>= 2.6 and < 3.1) and click `OK`.

![Create a new Rails Application in RubyMine - Step 3](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&step=createNewProject2)

### 2. Add reference of the gem

In order to use the Tester gem in the new project we must add a gem reference. Locate the `Gemfile` in the Project Explorer window under the `TestApp` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: `gem 'thing_space_connectivity_management_api', '5.12.0'`

![Add new reference to the Gemfile](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&gemVer=5.12.0&gemName=thing_space_connectivity_management_api&step=addReference)

### 3. Adding a new Rails Controller

Once the `TestApp` project is created, a folder named `controllers` will be visible in the *Project Explorer* under the following path: `TestApp > app > controllers`. Right click on this folder and select `New -> Run Rails Generator...`.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&gemVer=5.12.0&gemName=thing_space_connectivity_management_api&step=addCode0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the `controller` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&step=addCode1)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide `Hello` and include an action named `Index` and click `OK`.

![Add a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&gemVer=5.12.0&gemName=thing_space_connectivity_management_api&step=addCode2)

A new controller class named `HelloController` will be created in a file named `hello_controller.rb` containing a method named `Index`. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?workspaceFolder=ThingSpaceConnectivityManagementApi&gemName=thing_space_connectivity_management_api&step=addCode3)

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](doc/client.md)

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

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| Production | **Default** |
| Staging | - |

## Authorization

This API uses `OAuth 2 Client Credentials Grant`.

## Client Credentials Grant

Your application must obtain user authorization before it can execute an endpoint call in case this SDK chooses to use *OAuth 2.0 Client Credentials Grant*. This authorization includes the following steps

The `authorize()` method will exchange the OAuth client credentials for an *access token*. The access token is an object containing information for authorizing client requests and refreshing the token itself.

```ruby
begin
  client.auth.authorize()
rescue OAuthProviderException => ex
  # handle exception
rescue APIException => ex
  # handle exception
end
```

The client can now make authorized endpoint calls.

### Storing an access token for reuse

It is recommended that you store the access token for reuse.

```ruby
# store token
save_token_to_database(client.config.o_auth_token)
```

### Creating a client from a stored token

To authorize a client from a stored access token, just set the access token in Configuration along with the other configuration parameters before creating the client:

```ruby
# load token later...
client.config.o_auth_token = load_token_from_database

# Set other configuration, then instantiate client
client = Client.new
```

### Complete example

```ruby
require 'thing_space_connectivity_management_api'

include thing_space_connectivity_management_api

# function for storing token to database
def save_token_to_database(token)
  # code to save the token to database
end

# function for loading token from database
def load_token_from_database
  # load token from database and return it (return nil if no token exists)
end

# create a new client
client = ThingSpaceConnectivityManagementApi::Client.new(
  vz_m2_m_token: 'VZ-M2M-Token',
  o_auth_client_id: 'OAuthClientId',
  o_auth_client_secret: 'OAuthClientSecret',
  environment: Environment::PRODUCTION,
)

# obtain access token, needed for client to be authorized
previous_token = load_token_from_database
if previous_token
  # restore previous access token
  client.config.o_auth_token = previous_token
else
  # obtain new access token
  begin
    token = client.auth.authorize()
    save_token_to_database(token)
  rescue OAuthProviderException => ex
    # handle exception
  rescue APIException => ex
    # handle exception
  end
end

# the client is now authorized; you can use client to make endpoint calls
```

## List of APIs

* [Device Management](doc/controllers/device-management.md)
* [Device Groups](doc/controllers/device-groups.md)
* [Session Management](doc/controllers/session-management.md)
* [Connectivity Callbacks](doc/controllers/connectivity-callbacks.md)
* [Account Requests](doc/controllers/account-requests.md)
* [Service Plans](doc/controllers/service-plans.md)
* [O Auth Authorization](doc/controllers/o-auth-authorization.md)
* [Accounts](doc/controllers/accounts.md)
* [SMS](doc/controllers/sms.md)

## Classes Documentation

* [Utility Classes](doc/utility-classes.md)
* [HttpResponse](doc/http-response.md)
* [HttpRequest](doc/http-request.md)

