# Generated by Sideko (sideko.dev)
# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = 'postman_api'
  spec.summary     = 'postman_api 1.0.0'
  spec.version     = '1.0.0'
  spec.description = 'The Postman API enables you to programmatically access data stored in your Postman account.

For a comprehensive set of examples of requests and responses, see the [**Postman API** collection](https://www.postman.com/postman/workspace/postman-public-workspace/documentation/12959542-c8142d51-e97c-46b6-bd77-52bb66712c9a).

## Important

- You must pass an &#x60;Accept&#x60; header with the &#x60;application/vnd.api.v10+json&#x60; value to use v10 and higher endpoints. While some of these endpoints may appear the same as the deprecated Postman v9 endpoints, they will use the v10 behavior when you send this &#x60;Accept&#x60; header. For more information, see [About v9 and v10 APIs](https://learning.postman.com/docs/developer/postman-api/intro-api/#about-v9-and-v10-apis).
- To use the **API** endpoints, you must first [update your APIs to the v10 format](https://learning.postman.com/docs/designing-and-developing-your-api/creating-an-api/#upgrading-an-api).

## Getting started

You can get started with the Postman API by [forking the Postman API collection](https://learning.postman.com/docs/collaborating-in-postman/version-control/#creating-a-fork) to your workspace. You can then use Postman to send requests.

## About the Postman API

- You must use a valid API Key to send requests to the API endpoints.
- The API has [rate and usage limits](https://learning.postman.com/docs/developer/postman-api/postman-api-rate-limits/).
- The API only responds to HTTPS-secured communications. Any requests sent via HTTP return an HTTP &#x60;301&#x60; redirect to the corresponding HTTPS resources.
- The API returns requests responses in [JSON format](https://en.wikipedia.org/wiki/JSON). When an API request returns an error, it is sent in the JSON response as an error key.
- The request method (verb) determines the nature of action you intend to perform. A request made using the &#x60;GET&#x60; method implies that you want to fetch something from Postman. The &#x60;POST&#x60; method implies you want to save something new to Postman.
- For all requests, API calls respond with their corresponding [HTTP status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes). In the Postman client, the status code also provides help text that details the possible meaning of the response code.

### IDs and UIDs

All items in Postman, such as collections, workspaces, and APIs, have IDs and UIDs:

- An ID is the unique ID assigned to a Postman item. For example, &#x60;ec29121c-5203-409f-9e84-e83ffc10f226&#x60;.
- The UID is the **full** ID of a Postman item. This value is the item&#x27;s unique ID concatenated with the user ID. For example, in the &#x60;12345678-ec29121c-5203-409f-9e84-e83ffc10f226&#x60; UID:
    - &#x60;12345678&#x60; is the user&#x27;s ID.
    - &#x60;ec29121c-5203-409f-9e84-e83ffc10f226&#x60; is the item&#x27;s ID.

### 503 response

An HTTP &#x60;503 Service Unavailable&#x60; response from our servers indicates there is an unexpected spike in API access traffic. The server is usually operational within the next five minutes. If the outage persists or you receive any other form of an HTTP &#x60;5XX&#x60; error, [contact support](https://support.postman.com/hc/en-us/requests/new/).

## Authentication

Postman uses API keys for authentication. The API key tells the API server that the request came from you. Everything that you have access to in Postman is accessible with your API key. You can [generate](https://learning.postman.com/docs/developer/postman-api/authentication/#generate-a-postman-api-key) a Postman API key in the [**API keys**](https://postman.postman.co/settings/me/api-keys) section of your Postman account settings.

You must include an API key in each request to the Postman API with the &#x60;X-Api-Key&#x60; request header. In Postman, you can store your API key as an [environment variable](https://www.getpostman.com/docs/environments). The Postman API [collection](https://www.getpostman.com/docs/collections) will use it to make API calls.

### Authentication error response

If an API key is missing, malformed, or invalid, you will receive an HTTP &#x60;401 Unauthorized&#x60; response code.

### Using the API key as a query parameter

Requests that accept the &#x60;X-Api-Key&#x60; request header also accept the API key when you send it as the &#x60;apikey&#x60; query parameter. An API key sent as part of the header has a higher priority when you send the key as both a request header and a query parameter.

## Rate and usage limits

API access [rate limits](https://learning.postman.com/docs/developer/postman-api/postman-api-rate-limits/) apply at a per-API key basis in unit time. The limit is **300 requests per minute**. Also, depending on your [plan](https://www.postman.com/pricing/), you may have usage limits. If you exceed either limit, your request will return an HTTP &#x60;429 Too Many Requests&#x60; status code.

Each API response returns the following set of headers to help you identify your use status:

| Header | Description |
| ------ | ----------- |
| &#x60;X-RateLimit-Limit&#x60; | The maximum number of requests that the consumer is permitted to make per minute. |
| &#x60;X-RateLimit-Remaining&#x60; | The number of requests remaining in the current rate limit window. |
| &#x60;X-RateLimit-Reset&#x60; | The time at which the current rate limit window resets in UTC epoch seconds. |

## Support

For help regarding accessing the Postman API, you can:

- Visit [Postman Support](https://support.postman.com/hc/en-us) or our [Community and Support](https://www.postman.com/community/) sites.
- Reach out to the [Postman community](https://community.postman.com/).
- Submit a help request to [Postman support](https://support.postman.com/hc/en-us/requests/new/).

## Policies

- [Postman Terms of Service](http://www.postman.com/legal/terms/)
- [Postman Privacy Policy](https://www.postman.com/legal/privacy-policy/)
'
  spec.authors     = ['Sideko']
  spec.email       = 'team@sideko.dev'
  spec.license     = 'MIT'
  spec.files       = ['lib/postman_api.rb', 'lib/schemas.rb']

  spec.add_runtime_dependency 'http', '~> 5.1.1'
  spec.add_runtime_dependency 'dry-struct', '~> 1.6'
  spec.add_runtime_dependency 'dry-types', '~> 1.7', '>= 1.7.1'
end