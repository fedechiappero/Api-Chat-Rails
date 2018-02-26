# Chat (backend)

This project was made as final project of the course Technology Seminary. A private chat room thought to be used by an enterprise for their internal communication. Backend Ruby on Rails APIRest, Frontend on [Ionic](https://github.com/fedechiappero/ionic_chat).

## Functionality (expected)

* Registration/Login.
* Private chat rooms, only personal.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites (in my case)

```
Ruby 2.3.1p112

Rails 5.1.3

PostgreSQL 9.5.10
```

### Installing

```
bundle install

rails db:create db:migrate
```  

### Running  

```
sudo service postgresql start

rails s -b yourIp -p yourPort
```

## Useful links

* [Postman](https://www.getpostman.com/) to test the API without a client.

## Authors

* **Viktor Shmigol** - *Initial work* - [repo](https://github.com/viktor-shmigol/ng2-cable-example) extracted from [this post](https://blog.active-bridge.com/how-easily-integrate-rails-actioncable-into-your-angular2-ionic2-application)
* **Chiappero Federico** - *Improve and expand project*
