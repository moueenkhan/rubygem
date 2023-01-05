
# Engagement

The engagements associated with the account.

## Structure

`Engagement`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `engagement_id` | `String` | Optional | The engagement ID. |
| `charging_group` | `String` | Optional | The charging group name. |
| `services` | [`Array<AccountService>`](../../doc/models/account-service.md) | Optional | The services associated with the account. |

## Example (as JSON)

```json
{
  "engagementId": "1234",
  "chargingGroup": "Engagement1234",
  "services": [
    {
      "name": "Svc1",
      "description": "Usage Segmentation - Main Line.",
      "states": [
        {
          "name": "Svc1 Activate",
          "workflowSequenceNumber": 1,
          "servicePlans": [
            "4523aef7250f67205fd5",
            "4d4090c0f2d48814c94d"
          ]
        },
        {
          "name": "Svc1 No Telematics",
          "workflowSequenceNumber": 3,
          "servicePlans": [
            "4523aef7250f67205fd5",
            "4d4090c0f2d48814c94d"
          ]
        },
        {
          "name": "Svc1 Deactivate",
          "workflowSequenceNumber": 2,
          "servicePlans": [
            "4523aef7250f67205fd5",
            "4d4090c0f2d48814c94d"
          ]
        }
      ]
    },
    {
      "name": "WIFI",
      "description": "Usage Segmentation - WiFi.",
      "states": [
        {
          "name": "WIFI Redirect",
          "workflowSequenceNumber": 2,
          "servicePlans": [
            "4d4090c0f2d48814c94d"
          ]
        },
        {
          "name": "WIFI Trial",
          "workflowSequenceNumber": 4,
          "servicePlans": [
            "4d4090c0f2d48814c94d"
          ]
        },
        {
          "name": "WIFI Goodwill",
          "workflowSequenceNumber": 6,
          "servicePlans": [
            "4d4090c0f2d48814c94d"
          ]
        },
        {
          "name": "WIFI Disable",
          "workflowSequenceNumber": 3,
          "servicePlans": [
            "4d4090c0f2d48814c94d"
          ]
        }
      ]
    }
  ]
}
```

