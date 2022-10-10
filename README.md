
![❂_Clean_Architeture_Mobile_Project](https://user-images.githubusercontent.com/32853995/194926761-cde35a20-dce5-401c-8665-43ae0392fb5c.png)
[![GitHub forks](https://img.shields.io/github/forks/pedrohso7/mobileCleanProjectTemplate)](https://github.com/pedrohso7/mobileCleanProjectTemplate/network)

#Overview

##This repository was created to be a mobile project that uses the Reso Coder's Flutter Clean Architecture Proposal™ with GetX support to make an project with authentication features and good practices as the clean code, SOLID and conventional commits. This project must be a base for my future projects.

![clean_diagram](https://user-images.githubusercontent.com/32853995/194931703-4ba7e856-fe0f-4a4f-b3d8-04372c3a4441.png)

##Presentation

###The above diagram explain how each elements work and the call stack flow. Anyway, in the top of the flow, we have the presentation layer that is responsable for get and show data information from/to users through UI/UX. 

###In this project, each view have your own GetXController that manage all states and actions it has, encapsulating all logic and behaviour from the Widgets as exemplified in the image from splash feature below:

![getx_controller](https://user-images.githubusercontent.com/32853995/194935614-da1a0060-40f6-4e13-9815-c3a9c07d4c01.png)

##Domain

###Under the presentation layer we've the domain layer, responsable for contain our usecases, entities and repositories. But, of course, our presentation can only "see" the usecases. The usecases in turn can use repositories and entities (but without known what is implemented, just as contracts, it keeps our project clean.) futhermore is responsable for contain our core logic to their own context. The entities are an abstract representation of our objects. The repositorie are at the same time on the domain layer and data layer but, in the domain, we just implement the contract, it defines the repository interface that should be used on usecases.

##Data

###The data layer is composed for all data fetch mechanisms as repositories, view models and local and remote datasources. The repository in this layer have to implement the domain interface and override the previously declared functions and decide where to use the remote and local datasources futhermore threat exceptions. Our view models extends our entities and implement parser functions like Json to Object, it helps to return always what we want from repositories. Finally, our datasources fetch the data, in other words, we explicity do the requisitions from cache or remote client and return the result or throw an error.

##Core

###Besides the features, I created a core path that contains all shared content between features as errors, mixins, routes and widgets.

##Dependency Injection

###The dependency injection follows the diagram, in other words, datasources are injected on repositories, repositories are injected on usecases and usecases are injected on the presentation controller. GetX made it easy, fortunately.

##Feature example (Splash)

###It is coincidence? jaja!!

![splash_feature](https://user-images.githubusercontent.com/32853995/194959994-3e9ae1da-b1e6-45dc-ba18-f055387069a6.png)

#The project

##In this template was implemented register, login and splash features and the views below:
###Splash
![Screenshot_20221010-151814](https://user-images.githubusercontent.com/32853995/194957946-f535df7c-7659-4af1-830c-05ad4d55ee50.png)
###Login
![Screenshot_20221010-151705](https://user-images.githubusercontent.com/32853995/194957972-60fbb7e6-0667-4e6b-9570-730d5a51bc56.png)
###Register
![Screenshot_20221010-151710](https://user-images.githubusercontent.com/32853995/194958005-a07e5648-d03b-41c3-9b19-afd9a425ad86.png)




