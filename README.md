# Multimedia Retrieval - Browsing web interface

In this project, a web interface has developed, based on which users are able to browse the available images in the database to reach their intended content. By either uploading an image or clicking on the images below, the browsing process will be initiated.

# Project Setup

The website is developed using Ruby on Rails 6.0.3. All the Gem libraries and their exact versions that required to setup this project are presented in the *Gemfile* in the root of the project.  

This project is deployed/tested in a machine with ubuntu 18.04 operating system. This link https://gorails.com/deploy/ubuntu/18.04 can be useful for step-by-step deployment of the project in a development mode.    

All the modules regarding the CNN network, training, validation, and similarity searches are developed in python version 3.8 and existed in the */root/python_codes* directory. The path to these python files as well as the dataset of this project must be also included in the Rails application. In */root/config/settings.yml*, all the necessary variables are available and should be adjusted to the proper locations.  

