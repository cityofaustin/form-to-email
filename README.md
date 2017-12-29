# Form-to-email microservice

[Example](https://coa-test-form-client.herokuapp.com/email_form)

This application recieves a JSON `POST` from the [form dispatcher](https://github.com/cityofaustin/form-dispatcher) and delivers an email to the addresses provided in the `deliver_to` parameter. The initial version of this implementation assumes that the value will be provided in the original submission from the browser.

## AWS Simple Email Service

The application uses Amazon's Simple Email Service to handle message delivery. The SES services are procured under the CTM AWS account.

### Sender white-listing

Any *from* address must be white-listed by AWS. Attempting to send from a non-white-listed email address will result in a delivery error and failure message.

## Required parameters

The applicatin expects these paramters to be included in the `POST` from the dispatch service.

- `deliver_to` specifies the email address to send the submission to.
- `email_subject` specifies the subject line for the email that gets sent.

## Heroku

The application is deployed on Heroku as a Personal application.