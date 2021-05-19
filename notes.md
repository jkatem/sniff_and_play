Models:

User
    - has many dogs
    - has many comments
    - has many photos, through comments
    - attributes:
        0. username
        1. email
        2. password_digest 

Photo
    - belongs to a dog
    - has many comments
    - has many users, through comments
    - attributes
        1. caption/title
        2. stars 

dog
    - belongs to a user
    - has many photos
    - attributes:
        1. name
        2. age
        3. breed
        4. hobbies
        5. Bio
        

Comment
    - belongs to user
    - belongs to photo
    - belongs to dog 
    - attributes:
        1. content

Thursday, 7/16/20:

- Todo:
    1. Build controllers, models, routes
    2. Make sure models are connected and all associations are correct
7/19/20: 
    3. Build my welcome, login, signup page
    4. After I have my sign up page, I want to take user to page to create dog profile
    5. After user log in, want user to see dog's profile page 






