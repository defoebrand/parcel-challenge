> This project is a Rails based app built as an interview challenge project. Its intention is to maintain up-to-date data using a given resource and manipulate the received data into human readable formats for viewing online or in print.

# Parcel Challenge

## Project Description

The challenge was to synchronize a JSON object from an external source on a nightly basis and display this data to the User. In order to do so, a database must be established to allow the User to view it asynchronously, instead of calling for the data at the User's discretion. Users need no interaction with the database, aside from viewing, so no functionality exists at this time that allows Users to change the stored data. From the display, Users should be able to view, filter, and select any parcel machine to be viewed online or exported in excel format.

![screenshot](public/images/screenshot1.png)
![screenshot](public/images/screenshot2.png)

#### Features
-   Daily data update
-   Index view of all parcel machines
-   Display view of individually selected parcel machine
-   Option to export filtered data to excel format

###### Coming Features
-   Button to refresh parcel machine data

## Built With
-   Node.js / yarn
-   Ruby / Ruby on Rails
-   JavaScript ES6 / HTML / SCSS
-   Bootstrap

### To Use The App
Enter filter parameters to find the parcel by name, address, or....
Once your desired parcel is found, click the link to view more information.

## Live Demo
#### Deployed on: HEROKU
Try it out [here](https://parcel-challenge.herokuapp.com)


## Getting Started Locally
### Prerequisities
To get this project up and running locally, you must have the packages necessary to run Ruby on Rails already installed on your computer or be able to install them.

**To get this project set up on your local machine, follow these simple steps:**

**Step 1**<br>
Navigate to the local folder where you want the repository to be cloned and run
`git clone https://github.com/defoebrand/parcel-challenge.git`.<br>

**Step 2**<br>
Then, run `cd parcel-challenge`.<br>

**Step 3**<br>
Next, run `rails db:setup`.<br>

**Step 4**<br>
After which, run `rails s` to begin the server.<br>

**Step 5**<br>
Finally, navigate to `http://localhost:3000/` in a browser of your choice to see the application running.<br>

### Testing
This project uses RSpec for testing Rails features.
> To run tests, open a terminal inside the project's root directory and enter `rspec`

## Authors

👤 **Brandon Defoe**

-   Github: [@defoebrand](https://github.com/defoebrand)
-   LinkedIn: [@defoebrand](https://www.linkedin.com/in/defoebrand/)
-   Gmail: <mailto:defoe.brand@gmail.com>

## 🤝 Contributing

Our favorite contributions are those that help us improve the project, so please leave an issue or a feature request if you have any suggestions!

Feel free to check the [issues page](https://github.com/defoebrand/parcel-challenge/issues) to either create an issue or help us out by fixing an existing one.

## Show your support

If you've read this far....give us a ⭐️
