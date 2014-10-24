# Title

This is a **learning project**. I built this app as an exercise to further expose myself to the statelessness of HTTP. **Sinatra is used** in contrast to Rails because it is closer to the metal and therefore makes stateless nature of HTTP more clear. A **cookie is used as the model**, and allows for some persitence.

## Deployed at

View the app live on Heroku [here](/)

## Skills Required

- Planning the flow of a web app to a defined end-point (persisting dogs with each dog having different state).
- Ruby
- Understanding of HTTP
- Sinatra
- HTML
- CSS/Twitter Bootstrap

## App Design

### Routes needed

- **GET**
  - '/'
  - '/dogs'
  - '/new_dog'
  - '/dog_profile'

- **POST**
  - '/new_dog'
  - '/dogs'

### App flow

**Flow one**

1. If there are no dogs in the shelter, ask the user to add a dog.
2. Display all of the dogs in the shelter.
3. User clicks on link of a dog.
4. User is shown the profile of that dog.

**Flow two**

1. Display all of the dogs in the shelter.
2. User clicks on 'add new dog' button.
3. User is taken to a form to add a new dog.
4. Once completed user is taken back to the list of all of the dogs in the shelter.

### High-level Design Strategy

- Three separate pages:
  1. Page with form to enter a new dog.
  2. Page to display a list of all dogs in the shelter.
  3. Page for viewing the profile a dog.

- All pages include a navigation bar which allows the player to view all dogs at any time.

- There is currently no option to delete a dog.

### Edge cases

- No name or ID number is entered for a new dog. No empty strings for either of these to be considered valid.

###

Creating a unique form and button for each dog to go to the correct profile.

The solution to this problem was...

## Notes

  1. Make sure the 'sinatra' gem is installed.
  2. From the command line, you can start the server by 'ruby main.rb'
  3. If you have the 'shotgun' gem installed, you can instead run 'shotgun main.rb'
  4. ctrl+c to stop the server
