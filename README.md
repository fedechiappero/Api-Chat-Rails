# Chat (WIP)

This project was made as final project of the course Technology Seminary. A private chat room thought to be used by an enterprise for their internal communication. Backend Ruby on Rails APIRest, Frontend Ionic.

## Functionality (expected)

* Token-based autentication with Devise.
* Registration is only with an email provided by the enterprise email server (@yourdomain.com by default).
* Online/Offline indicator inside chat room.
* Private chat rooms, only personal.
* All the messages are encrypted in the server-side.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

```
Ruby 2.3.1p112

Rails 5.1.3
```

### Installing

```
bundle install

rails db:create db:migrate
```    

## Useful links

* [Postman](https://www.getpostman.com/) to test the API without a client.

## Authors

* **Viktor Shmigol** - *Initial work* - [repo](https://github.com/viktor-shmigol/ng2-cable-example) extracted from [this post](https://blog.active-bridge.com/how-easily-integrate-rails-actioncable-into-your-angular2-ionic2-application)
* **Chiappero Federico** - *Improve and expand project*