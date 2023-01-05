# Device Management

```ruby
device_management_controller = client.device_management
```

## Class Name

`DeviceManagementController`

## Methods

* [Activate Service for Devices](../../doc/controllers/device-management.md#activate-service-for-devices)
* [Add Devices](../../doc/controllers/device-management.md#add-devices)
* [Update Devices Contact Information](../../doc/controllers/device-management.md#update-devices-contact-information)
* [Update Devices Custom Fields](../../doc/controllers/device-management.md#update-devices-custom-fields)
* [Deactivate Service for Devices](../../doc/controllers/device-management.md#deactivate-service-for-devices)
* [Delete Deactivated Devices](../../doc/controllers/device-management.md#delete-deactivated-devices)
* [List Devices Information](../../doc/controllers/device-management.md#list-devices-information)
* [List Devices With Imei Iccid Mismatch](../../doc/controllers/device-management.md#list-devices-with-imei-iccid-mismatch)
* [Move Devices Within Accounts of Profile](../../doc/controllers/device-management.md#move-devices-within-accounts-of-profile)
* [Update Devices State](../../doc/controllers/device-management.md#update-devices-state)
* [Change Devices Service Plan](../../doc/controllers/device-management.md#change-devices-service-plan)
* [Suspend Service for Devices](../../doc/controllers/device-management.md#suspend-service-for-devices)
* [Restore Service for Suspended Devices](../../doc/controllers/device-management.md#restore-service-for-suspended-devices)
* [Check Devices Availability for Activation](../../doc/controllers/device-management.md#check-devices-availability-for-activation)
* [Retrieve Device Connection History](../../doc/controllers/device-management.md#retrieve-device-connection-history)
* [Update Devices Cost Center Code](../../doc/controllers/device-management.md#update-devices-cost-center-code)
* [Get Device Extended Diagnostic Information](../../doc/controllers/device-management.md#get-device-extended-diagnostic-information)
* [List Devices Provisioning History](../../doc/controllers/device-management.md#list-devices-provisioning-history)
* [List Current Devices PRL Version](../../doc/controllers/device-management.md#list-current-devices-prl-version)
* [Get Device Service Suspension Status](../../doc/controllers/device-management.md#get-device-service-suspension-status)
* [List Devices Usage History](../../doc/controllers/device-management.md#list-devices-usage-history)
* [Retrieve Aggregate Device Usage History](../../doc/controllers/device-management.md#retrieve-aggregate-device-usage-history)
* [Update Device Id](../../doc/controllers/device-management.md#update-device-id)


# Activate Service for Devices

If the devices do not already exist in the account, this API resource adds them before activation.

```ruby
def activate_service_for_devices(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CarrierActivateRequest`](../../doc/models/carrier-activate-request.md) | Body, Required | Request for activating a service on devices. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = CarrierActivateRequest.new
body.account_name = '0868924207-00001'
body.custom_fields = []


body.custom_fields[0] = CustomFields.new
body.custom_fields[0].key = 'CustomField2'
body.custom_fields[0].value = 'SuperVend'

body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '990013907835573'
body.devices[0].device_ids[0].kind = 'imei'

body.devices[0].device_ids[1] = DeviceId.new
body.devices[0].device_ids[1].id = '89141390780800784259'
body.devices[0].device_ids[1].kind = 'iccid'


body.devices[1] = AccountDeviceList.new
body.devices[1].device_ids = []


body.devices[1].device_ids[0] = DeviceId.new
body.devices[1].device_ids[0].id = '990013907884259'
body.devices[1].device_ids[0].kind = 'imei'

body.devices[1].device_ids[1] = DeviceId.new
body.devices[1].device_ids[1].id = '89141390780800735573'
body.devices[1].device_ids[1].kind = 'iccid'


body.group_name = '4G West'
body.mdn_zip_code = '98801'
body.primary_place_of_use = PlaceOfUse.new
body.primary_place_of_use.address = Address.new
body.primary_place_of_use.address.address_line1 = '1600 Pennsylvania Ave NW'
body.primary_place_of_use.address.city = 'Washington'
body.primary_place_of_use.address.state = 'DC'
body.primary_place_of_use.address.zip = '20500'
body.primary_place_of_use.address.country = 'USA'
body.primary_place_of_use.customer_name = CustomerName.new
body.primary_place_of_use.customer_name.title = 'President'
body.primary_place_of_use.customer_name.first_name = 'Zaffod'
body.primary_place_of_use.customer_name.last_name = 'Beeblebrox'
body.service_plan = 'm2m_4G'

result = device_management_controller.activate_service_for_devices(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Add Devices

Use this API if you want to manage some device settings before you are ready to activate service for the devices.

```ruby
def add_devices(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AddDevicesRequest`](../../doc/models/add-devices-request.md) | Body, Required | Devices to add. |

## Response Type

[`Array<AddDevicesResult>`](../../doc/models/add-devices-result.md)

## Example Usage

```ruby
body = AddDevicesRequest.new
body.account_name = '0868924207-00001'
body.custom_fields = []


body.custom_fields[0] = CustomFields.new
body.custom_fields[0].key = 'CustomField2'
body.custom_fields[0].value = 'SuperVend'

body.devices_to_add = []


body.devices_to_add[0] = AccountDeviceList.new
body.devices_to_add[0].device_ids = []


body.devices_to_add[0].device_ids[0] = DeviceId.new
body.devices_to_add[0].device_ids[0].id = '990013907835573'
body.devices_to_add[0].device_ids[0].kind = 'imei'

body.devices_to_add[0].device_ids[1] = DeviceId.new
body.devices_to_add[0].device_ids[1].id = '89141390780800784259'
body.devices_to_add[0].device_ids[1].kind = 'iccid'


body.devices_to_add[1] = AccountDeviceList.new
body.devices_to_add[1].device_ids = []


body.devices_to_add[1].device_ids[0] = DeviceId.new
body.devices_to_add[1].device_ids[0].id = '990013907884259'
body.devices_to_add[1].device_ids[0].kind = 'imei'

body.devices_to_add[1].device_ids[1] = DeviceId.new
body.devices_to_add[1].device_ids[1].id = '89141390780800735573'
body.devices_to_add[1].device_ids[1].kind = 'iccid'


body.group_name = 'West Region'
body.state = 'preactive'

result = device_management_controller.add_devices(body)
```

## Example Response *(as JSON)*

```json
[
  {
    "deviceIds": [
      {
        "id": "89148000000800784259",
        "kind": "iccid"
      }
    ],
    "response": "Success"
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Update Devices Contact Information

Sends a CarrierService callback message for each device in the request when the contact information has been changed, or if there was a problem and the change could not be completed.

```ruby
def update_devices_contact_information(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ContactInfoUpdateRequest`](../../doc/models/contact-info-update-request.md) | Body, Required | Request to update contact information for devices. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = ContactInfoUpdateRequest.new
body.account_name = '0212345678-00001'
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '19110173057'
body.devices[0].device_ids[0].kind = 'ESN'

body.devices[0].device_ids[1] = DeviceId.new
body.devices[0].device_ids[1].id = '19110173057'
body.devices[0].device_ids[1].kind = 'ESN'


body.primary_place_of_use = JSON.parse('{"address":{"addressLine1":"9868 Scranton Rd","addressLine2":"Suite A","city":"San Diego","state":"CA","country":"USA","zip":"92121","zip4":"0001","phone":"1234567890","phoneType":"H","emailAddress":"zaffod@theinternet.com"},"customerName":{"firstName":"Zaffod","lastName":"Beeblebrox","middleName":"P","title":"President","suffix":"I"}}')

result = device_management_controller.update_devices_contact_information(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "24da9f9a-d110-4a54-86b4-93fb76aab83c"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Update Devices Custom Fields

Sends a CarrierService callback message for each device in the request when the custom fields have been changed, or if there was a problem and the change could not be completed.

```ruby
def update_devices_custom_fields(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CustomFieldsUpdateRequest`](../../doc/models/custom-fields-update-request.md) | Body, Required | Request to update custom field of devices. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = CustomFieldsUpdateRequest.new
body.custom_fields_to_update = []


body.custom_fields_to_update[0] = CustomFields.new
body.custom_fields_to_update[0].key = 'CustomField1'
body.custom_fields_to_update[0].value = 'West Region'

body.custom_fields_to_update[1] = CustomFields.new
body.custom_fields_to_update[1].key = 'CustomField2'
body.custom_fields_to_update[1].value = 'Distribution'

body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '89148000000800139708'
body.devices[0].device_ids[0].kind = 'iccid'



result = device_management_controller.update_devices_custom_fields(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Deactivate Service for Devices

Deactivating service for a device may result in an early termination fee (ETF) being charged to the account, depending on the terms of the contract with Verizon. If your contract allows ETF waivers and if you want to use one for a particular deactivation, set the etfWaiver value to True.

```ruby
def deactivate_service_for_devices(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CarrierDeactivateRequest`](../../doc/models/carrier-deactivate-request.md) | Body, Required | Request to deactivate service for one or more devices. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = CarrierDeactivateRequest.new
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '20-digit ICCID'
body.devices[0].device_ids[0].kind = 'iccid'


body.etf_waiver = true
body.reason_code = 'FF'

result = device_management_controller.deactivate_service_for_devices(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Delete Deactivated Devices

Use this API to remove unneeded devices from an account.

```ruby
def delete_deactivated_devices(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeleteDevicesRequest`](../../doc/models/delete-devices-request.md) | Body, Required | Devices to delete. |

## Response Type

[`Array<DeleteDevicesResult>`](../../doc/models/delete-devices-result.md)

## Example Usage

```ruby
body = DeleteDevicesRequest.new
body.devices_to_delete = []


body.devices_to_delete[0] = AccountDeviceList.new
body.devices_to_delete[0].device_ids = []


body.devices_to_delete[0].device_ids[0] = DeviceId.new
body.devices_to_delete[0].device_ids[0].id = '09005470263'
body.devices_to_delete[0].device_ids[0].kind = 'esn'


body.devices_to_delete[1] = AccountDeviceList.new
body.devices_to_delete[1].device_ids = []


body.devices_to_delete[1].device_ids[0] = DeviceId.new
body.devices_to_delete[1].device_ids[0].id = '85000022411113460014'
body.devices_to_delete[1].device_ids[0].kind = 'iccid'


body.devices_to_delete[2] = AccountDeviceList.new
body.devices_to_delete[2].device_ids = []


body.devices_to_delete[2].device_ids[0] = DeviceId.new
body.devices_to_delete[2].device_ids[0].id = '85000022412313460016'
body.devices_to_delete[2].device_ids[0].kind = 'iccid'



result = device_management_controller.delete_deactivated_devices(body)
```

## Example Response *(as JSON)*

```json
[
  {
    "deviceIds": {
      "id": "09005470263",
      "kind": "esn"
    },
    "status": "Success"
  },
  {
    "deviceIds": {
      "id": "85000022411113460014",
      "kind": "iccid"
    },
    "status": "Success"
  },
  {
    "deviceIds": [
      {
        "id": "85000022412313460016",
        "kind": "iccid"
      },
      {
        "id": "09005470263",
        "kind": "esn"
      }
    ],
    "status": "Failed",
    "message": "The device is not in deactive state."
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# List Devices Information

Returns information about a single device or information about all devices that match the given parameters. Returned information includes device provisioning state, service plan, MDN, MIN, and IP address.

```ruby
def list_devices_information(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`AccountDeviceListRequest`](../../doc/models/account-device-list-request.md) | Body, Required | Device information query. |

## Response Type

[`AccountDeviceListResult`](../../doc/models/account-device-list-result.md)

## Example Usage

```ruby
body = AccountDeviceListRequest.new
body.device_id = DeviceId.new
body.device_id.id = '20-digit ICCID'
body.device_id.kind = 'iccid'

result = device_management_controller.list_devices_information(body)
```

## Example Response *(as JSON)*

```json
{
  "hasMoreData": false,
  "devices": [
    {
      "accountName": "0000123456-00001",
      "billingCycleEndDate": "2020-05-09T20:00:00-04:00",
      "carrierInformations": [
        {
          "carrierName": "Verizon Wireless",
          "servicePlan": "m2m4G",
          "state": "active"
        }
      ],
      "connected": false,
      "createdAt": "2019-08-07T10:42:15-04:00",
      "deviceIds": [
        {
          "id": "10-digit MDN",
          "kind": "mdn"
        },
        {
          "id": "15-digit IMEI",
          "kind": "imei"
        }
      ],
      "groupNames": [
        "southwest"
      ],
      "ipAddress": "0.0.0.0",
      "lastActivationBy": "Joe Q Public",
      "lastActivationDate": "2019-08-07T10:42:34-04:00",
      "lastConnectionDate": "2020-03-12T04:23:37-04:00"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# List Devices With Imei Iccid Mismatch

Returns a list of all 4G devices with an ICCID (SIM) that was not activated with the expected IMEI (hardware) during a specified time frame.

```ruby
def list_devices_with_imei_iccid_mismatch(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceMismatchListRequest`](../../doc/models/device-mismatch-list-request.md) | Body, Required | Request to list devices with mismatched IMEIs and ICCIDs. |

## Response Type

[`DeviceMismatchListResult`](../../doc/models/device-mismatch-list-result.md)

## Example Usage

```ruby
body = DeviceMismatchListRequest.new
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '8914800000080078'
body.devices[0].device_ids[0].kind = 'ICCID'

body.devices[0].device_ids[1] = DeviceId.new
body.devices[0].device_ids[1].id = '5096300587'
body.devices[0].device_ids[1].kind = 'MDN'


body.filter = DateFilter.new
body.filter.earliest = '2020-05-01T15:00:00-08:00Z'
body.filter.latest = '2020-07-30T15:00:00-08:00Z'
body.account_name = '0342077109-00001'

result = device_management_controller.list_devices_with_imei_iccid_mismatch(body)
```

## Example Response *(as JSON)*

```json
{
  "devices": [
    {
      "accountName": "0212398765-00001",
      "mdn": "5096300587",
      "activationDate": "2011-01-21T10:55:27-08:00",
      "iccid": "89148000000800784259",
      "preImei": "990003420535573",
      "postImei": "987603420573553",
      "simOtaDate": "2017-12-01T16:00:00-08:00"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Move Devices Within Accounts of Profile

Move active devices from one billing account to another within a customer profile.

```ruby
def move_devices_within_accounts_of_profile(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`MoveDeviceRequest`](../../doc/models/move-device-request.md) | Body, Required | Request to move devices between accounts. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = MoveDeviceRequest.new
body.account_name = '0212345678-00001'
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '19110173057'
body.devices[0].device_ids[0].kind = 'ESN'


body.service_plan = 'M2M5GB'

result = device_management_controller.move_devices_within_accounts_of_profile(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "ec682a8b-e288-4806-934d-24e7a59ed889"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Update Devices State

Changes the provisioning state of one or more devices to a specified customer-defined service and state.

```ruby
def update_devices_state(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GoToStateRequest`](../../doc/models/go-to-state-request.md) | Body, Required | Request to change device state to one defined by the user. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = GoToStateRequest.new
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '990013907835573'
body.devices[0].device_ids[0].kind = 'imei'

body.devices[0].device_ids[1] = DeviceId.new
body.devices[0].device_ids[1].id = '89141390780800784259'
body.devices[0].device_ids[1].kind = 'iccid'


body.devices[1] = AccountDeviceList.new
body.devices[1].device_ids = []


body.devices[1].device_ids[0] = DeviceId.new
body.devices[1].device_ids[0].id = '990013907884259'
body.devices[1].device_ids[0].kind = 'imei'

body.devices[1].device_ids[1] = DeviceId.new
body.devices[1].device_ids[1].id = '89141390780800735573'
body.devices[1].device_ids[1].kind = 'iccid'


body.service_name = 'My Service'
body.state_name = 'My State'
body.service_plan = '87641'
body.mdn_zip_code = '94203'
body.public_ip_restriction = 'unrestricted'
body.group_name = '4G West'
body.primary_place_of_use = PlaceOfUse.new
body.primary_place_of_use.address = Address.new
body.primary_place_of_use.address.address_line1 = '1600 Pennsylvania Ave NW'
body.primary_place_of_use.address.city = 'Washington'
body.primary_place_of_use.address.state = 'DC'
body.primary_place_of_use.address.zip = '20500'
body.primary_place_of_use.address.country = 'USA'
body.primary_place_of_use.customer_name = CustomerName.new
body.primary_place_of_use.customer_name.title = 'President'
body.primary_place_of_use.customer_name.first_name = 'Zaffod'
body.primary_place_of_use.customer_name.last_name = 'Beeblebrox'

result = device_management_controller.update_devices_state(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Change Devices Service Plan

Changes the service plan for one or more devices.

```ruby
def change_devices_service_plan(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ServicePlanUpdateRequest`](../../doc/models/service-plan-update-request.md) | Body, Required | Request to change device service plan. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = ServicePlanUpdateRequest.new
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = 'A100003685E561'
body.devices[0].device_ids[0].kind = 'meid'


body.service_plan = 'new_service_plan_code'

result = device_management_controller.change_devices_service_plan(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "c8de7c1d-59b9-4cf3-b969-db76cb2ce509"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Suspend Service for Devices

Suspends service for one or more devices.

```ruby
def suspend_service_for_devices(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CarrierActionsRequest`](../../doc/models/carrier-actions-request.md) | Body, Required | Request to suspend service for one or more devices. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = CarrierActionsRequest.new
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '89148000000800139708'
body.devices[0].device_ids[0].kind = 'iccid'



result = device_management_controller.suspend_service_for_devices(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Restore Service for Suspended Devices

Restores service to one or more suspended devices.

```ruby
def restore_service_for_suspended_devices(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CarrierActionsRequest`](../../doc/models/carrier-actions-request.md) | Body, Required | Request to restore services of one or more suspended devices. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = CarrierActionsRequest.new
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '89148000000800139708'
body.devices[0].device_ids[0].kind = 'iccid'



result = device_management_controller.restore_service_for_suspended_devices(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Check Devices Availability for Activation

Checks whether specified devices are registered by the manufacturer with the Verizon network and are available to be activated.

```ruby
def check_devices_availability_for_activation(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceActivationRequest`](../../doc/models/device-activation-request.md) | Body, Required | Request to check if devices can be activated or not. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = DeviceActivationRequest.new
body.account_name = '0212345678-00001'
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = 'A100008385E561'
body.devices[0].device_ids[0].kind = 'meid'



result = device_management_controller.check_devices_availability_for_activation(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Retrieve Device Connection History

Each response includes a maximum of 500 records. To obtain more records, you can call the API multiple times, adjusting the earliest value each time to start where the previous request finished.

```ruby
def retrieve_device_connection_history(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceConnectionListRequest`](../../doc/models/device-connection-list-request.md) | Body, Required | Query to retrieve device connection history. |

## Response Type

[`ConnectionHistoryResult`](../../doc/models/connection-history-result.md)

## Example Usage

```ruby
body = DeviceConnectionListRequest.new
body.device_id = DeviceId.new
body.device_id.id = '89141390780800784259'
body.device_id.kind = 'iccid'
body.earliest = '2015-09-16T00:00:01Z'
body.latest = '2010-09-18T00:00:01Z'

result = device_management_controller.retrieve_device_connection_history(body)
```

## Example Response *(as JSON)*

```json
{
  "connectionHistory": [
    {
      "connectionEventAttributes": [
        {
          "key": "BytesUsed",
          "value": "0"
        },
        {
          "key": "Event",
          "value": "Start"
        }
      ],
      "extendedAttributes": [],
      "occurredAt": "2015-12-17T14:12:36-05:00"
    },
    {
      "connectionEventAttributes": [
        {
          "key": "BytesUsed",
          "value": "419863234"
        },
        {
          "key": "Event",
          "value": "Stop"
        },
        {
          "key": "Msisdn",
          "value": "15086303371"
        }
      ],
      "extendedAttributes": [],
      "occurredAt": "2015-12-19T01:20:00-05:00"
    }
  ],
  "hasMoreData": false
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Update Devices Cost Center Code

Changes or removes the CostCenterCode value or customer name and address (Primary Place of Use) for one or more devices.

```ruby
def update_devices_cost_center_code(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceCostCenterRequest`](../../doc/models/device-cost-center-request.md) | Body, Required | Request to update cost center code value for one or more devices. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = DeviceCostCenterRequest.new
body.cost_center = 'cc12345'
body.devices = []


body.devices[0] = AccountDeviceList.new
body.devices[0].device_ids = []


body.devices[0].device_ids[0] = DeviceId.new
body.devices[0].device_ids[0].id = '89148000000800139708'
body.devices[0].device_ids[0].kind = 'iccid'



result = device_management_controller.update_devices_cost_center_code(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Get Device Extended Diagnostic Information

Returns extended diagnostic information about a specified device, including connectivity, provisioning, billing and location status.

```ruby
def get_device_extended_diagnostic_information(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceExtendedDiagnosticsRequest`](../../doc/models/device-extended-diagnostics-request.md) | Body, Required | Request to query extended diagnostics information for a device. |

## Response Type

[`DeviceExtendedDiagnosticsResult`](../../doc/models/device-extended-diagnostics-result.md)

## Example Usage

```ruby
body = DeviceExtendedDiagnosticsRequest.new
body.account_name = '1223334444-00001'
body.device_list = []


body.device_list[0] = DeviceId.new
body.device_list[0].id = '10-digit MDN'
body.device_list[0].kind = 'mdn'


result = device_management_controller.get_device_extended_diagnostic_information(body)
```

## Example Response *(as JSON)*

```json
{
  "categories": [
    {
      "categoryName": "Connectivity",
      "extendedAttributes": [
        {
          "key": "Connected",
          "value": "false"
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


# List Devices Provisioning History

Returns the provisioning history of a specified device during a specified time period.

```ruby
def list_devices_provisioning_history(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceProvisioningHistoryListRequest`](../../doc/models/device-provisioning-history-list-request.md) | Body, Required | Query to obtain device provisioning history. |

## Response Type

[`Array<DeviceProvisioningHistoryListResult>`](../../doc/models/device-provisioning-history-list-result.md)

## Example Usage

```ruby
body = DeviceProvisioningHistoryListRequest.new
body.device_id = DeviceId.new
body.device_id.id = '89141390780800784259'
body.device_id.kind = 'iccid'
body.earliest = '2015-09-16T00:00:01Z'
body.latest = '2015-09-18T00:00:01Z'

result = device_management_controller.list_devices_provisioning_history(body)
```

## Example Response *(as JSON)*

```json
[
  {
    "provisioningHistory": [
      {
        "occurredAt": "2015-12-17T13:56:13-05:00",
        "status": "Success",
        "eventBy": "Harry Potter",
        "eventType": "Activation Confirmed",
        "servicePlan": "Tablet5GB",
        "mdn": "",
        "msisdn": "15086303371",
        "extendedAttributes": []
      }
    ],
    "hasMoreData": false
  }
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# List Current Devices PRL Version

4G and GSM devices do not have a PRL.

```ruby
def list_current_devices_prl_version(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DevicePrlListRequest`](../../doc/models/device-prl-list-request.md) | Body, Required | Request to query device PRL. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = DevicePrlListRequest.new
body.account_name = '101234-0001'
body.group_name = 'West Region'
body.service_plan = '3G 2MB'

result = device_management_controller.list_current_devices_prl_version(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "595f5c44-c31c-4552-8670-020a1545a84d"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Get Device Service Suspension Status

Returns DeviceSuspensionStatus callback messages containing the current device state and information on how many days a device has been suspended and can continue to be suspended.

```ruby
def get_device_service_suspension_status(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceSuspensionStatusRequest`](../../doc/models/device-suspension-status-request.md) | Body, Required | Request to obtain service suspenstion status for a device. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = DeviceSuspensionStatusRequest.new
body.filter = DeviceFilterWithoutAccount.new
body.filter.group_name = 'suspended devices'
body.account_name = '1223334444-00001'

result = device_management_controller.get_device_service_suspension_status(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "904dcdc6-a590-45e4-ac76-403306f6d883"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# List Devices Usage History

Returns the network data usage history of a device during a specified time period.

```ruby
def list_devices_usage_history(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceUsageListRequest`](../../doc/models/device-usage-list-request.md) | Body, Required | Request to obtain usage history for a specific device. |

## Response Type

[`DeviceUsageListResult`](../../doc/models/device-usage-list-result.md)

## Example Usage

```ruby
body = DeviceUsageListRequest.new
body.earliest = '2018-03-20T00:00:01Z'
body.latest = '2020-12-31T00:00:01Z'

result = device_management_controller.list_devices_usage_history(body)
```

## Example Response *(as JSON)*

```json
{
  "hasMoreData": false,
  "usageHistory": [
    {
      "bytesUsed": 4096,
      "extendedAttributes": [
        {
          "key": "MoSms",
          "value": "0"
        }
      ],
      "smsUsed": 0,
      "source": "Raw Usage",
      "timestamp": "2020-12-01T00:00:00Z"
    }
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Retrieve Aggregate Device Usage History

The information is returned in a callback response, so you must register a URL for DeviceUsage callback messages using the POST /callbacks API.

```ruby
def retrieve_aggregate_device_usage_history(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`DeviceAggregateUsageListRequest`](../../doc/models/device-aggregate-usage-list-request.md) | Body, Required | A request to retrieve aggregated device usage history information. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
body = DeviceAggregateUsageListRequest.new
body.device_ids = []


body.device_ids[0] = DeviceId.new
body.device_ids[0].id = '84258000000891490087'
body.device_ids[0].kind = 'ICCID'

body.account_name = '9992330389-00001'
body.start_time = '2021-08-01T06:00:00+00:00'
body.end_time = '2021-08-30T06:00:00+00:00'

result = device_management_controller.retrieve_aggregate_device_usage_history(body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "1631e200-7398-4609-b1f8-398341229176"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |


# Update Device Id

Changes the identifier of a 3G or 4G device to match hardware changes made for a line of service. Use this request to transfer the line of service and the MDN to new hardware, or to change the MDN.

```ruby
def update_device_id(service_type,
                     body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_type` | `String` | Template, Required | Identifier type. |
| `body` | [`ChangeDeviceIdRequest`](../../doc/models/change-device-id-request.md) | Body, Required | Request to update device id. |

## Response Type

[`DeviceManagementResult`](../../doc/models/device-management-result.md)

## Example Usage

```ruby
service_type = 'serviceType6'
body = ChangeDeviceIdRequest.new
body.change4g_option = 'ChangeICCID'
body.device_ids = []


body.device_ids[0] = DeviceId.new
body.device_ids[0].id = '42590078891480000008'
body.device_ids[0].kind = 'iccid'

body.device_ids_to = []


body.device_ids_to[0] = DeviceId.new
body.device_ids_to[0].id = '89148000000842590078'
body.device_ids_to[0].kind = 'iccid'

body.service_plan = '4G 2GB'
body.zip_code = '98802'

result = device_management_controller.update_device_id(service_type, body)
```

## Example Response *(as JSON)*

```json
{
  "requestId": "a28892ea-6503-4aa7-bfa2-4cd45d42f61b"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error response. | [`ConnectivityManagementResultException`](../../doc/models/connectivity-management-result-exception.md) |

