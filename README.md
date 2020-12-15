# README

## Running in local environment
* Depencencies:
  * Postgresql
  * Yarn
  * NodeJS
  * Ruby 2.6
  * Rails 6

```
git clone git@github.com:Janee/belvo-demo.git
cd belvo-demo
bundle install
rake db:setup
```

**Make sure to add your own Belvo credentials**
```
EDITOR='vim --wait' rails credentials:edit
```

On editor:
```
belvo:
  secret_id: <YourSecretId>
  secret_pass: <YourSecretPassword>
```

___
> **This integration works with sandbox**, you may need to change the URL (for `https://api.belvo.co`) inside `app/services/` for the service you need if you want to play with production.
___

### Instructions for testing
Ruby on Rails application deployed in Heroku Server.

* Enter to [Heroku Demo App](https://desolate-crag-63710.herokuapp.com/)
* Click in **Open Widget** button and link your account.
  _(You can use a dummy username and dummy password)_
* Button **Account data**: Gets the account information related to the link; if the link is not in the list of current accounts retrieves it.
* Button **All Data**: Gets all the data related to the sandbox account:
  * Pie charts per currency.
  * List of all Owners.
  * List of all Accounts.
  * Column Chart of Transactions types.

___

### Feedback to Belvo:

Please write to hello@belvo.com and share your experience and how we can improve our product. 
