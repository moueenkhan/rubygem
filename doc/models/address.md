
# Address

The customer address for the line's primary place of use, for line usage taxation.

## Structure

`Address`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address_line_1` | `String` | Required | The street address for the line's primary place of use. This must be a physical address for taxation; it cannot be a P.O. box. |
| `address_line_2` | `String` | Optional | Optional additional street address information. |
| `city` | `String` | Required | The city for the line's primary place of use. |
| `state` | `String` | Required | The state for the line's primary place of use. |
| `zip` | `String` | Required | The ZIP code for the line's primary place of use. |
| `zip_4` | `String` | Optional | The ZIP+4 for the line's primary place of use. |
| `country` | `String` | Required | Either “US” or “USA” for the country of the line's primary place of use. |
| `phone` | `String` | Optional | A phone number where the customer can be reached. |
| `phone_type` | `String` | Optional | A single letter to indicate the customer phone type. |
| `email_address` | `String` | Optional | An email address for the customer. |

## Example (as JSON)

```json
{
  "addressLine1": "1600 Pennsylvania Ave NW",
  "city": "Washington",
  "state": "DC",
  "zip": "20500",
  "country": "USA"
}
```

