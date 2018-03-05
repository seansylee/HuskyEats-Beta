# HuskyEats-Beta

Created to get comfortable with Firebase + Xcode. 

## Getting Started
1. Install CocoaPods, if you don't already have them.

```
$ sudo gem install cocoapods
```
Detailed installation instructions[Here](https://guides.cocoapods.org/using/getting-started.html#getting-started)
(but the above should be fine.)

### This repository

Clone the repo 
```
$ git clone git@github.com:seansylee/HuskyEats-Beta.git
```
**note** : Be sure to open the `.xcworkspace` file *NOT* the `.xcodeproj` file as it will not contain the 
necessary pod files.

## Current implementations.
Note that nothing made here has to stay!

### Sign In
* Email and password required to log in. 
* Necessary error handling regarding the sign in informationa and format will be done via Firebase and logged on the console.

### Sign Up
* Name, Email, Password required to create an account. 
* *Name field is currently not utilized.*
* Errors and requirements displayed above `Sign Up` button.

### Home
* Directed here, when user successfully signs in,
* If the user has not logged out, this page will appear first skipping the sign in view
* Log out function implemented. 

### Some errors to try,
* Signing up/in with previously existing account email.
  * i.e. test@email.com
* Wrong password.
* Password and confirmation do not match on sign up.
* etc,,
