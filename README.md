# README

# MyGolf Application

## – Identification of problem and why it needs to be solved 

Golf is popular sport in Australia and around the world. According to the 2019 AusPlay State of Play Report commissioned by Sport Australia, nearly 5% of all Australians play golf. The dominant motivations for Australian players to participate in golf were fun and enjoyment (58%) and social reasons (46%). However, golf has a reputation for being an exclusive and expensive sport as illustrated by the $985+ million spent on adult golf participation in 2019. This averages out as $730 per adult participant per annum, which is higher than the median for all other sporting/physical activities in Australia. Despite this, there is a prediction for strong net growth market opportunity in the sport in the coming years. With more than 75% of golfers being over the age of 45, the increase in the aging demographic in Australia is likely to be good news for market growth.

With a likely increase in market growth fuelled by an aging population, there is a foreseeable opportunity to take advantage of the increasing number of prospective golfers. However, the current market places dedicated to golf equipment are falling short. The main commercial offerings come from the major brands, including Drummond Golf and Golf World. But these peddle full priced equipment and merchandise and fail to provide a second hand resale option. A single new club can cost hundreds of dollars and a brand new full set enters into the thousands. Some second hand market places for golf do exist in Australia, including Golf Market, Golf Traders and I Trade Golf. These all offer a similar platform where Users can buy second hand golf equipment and accessories. However, Golf Traders only facilitates selling and trading of golf clubs between Users, whilst selling new clothing and equipment. I Trade Golf does not allow User to User sales or trade, only buying back User’s clubs and equipment before selling it on. Golf Market is the only platform to allow Users to sell their own clubs and equipment, but also fail to provide any rental service. The problem that persists is that all the current available platforms do not provide a true two way marketplace where golfers can sell, buy and rent second hand clubs and equipment at affordable prices set by the Users.

The problem is further exacerbated by the fact that no current platform provides a sense of community for its Users in any capacity. This is a clearly missed opportunity considering that 46% of all golfers in Australia are motivated by the social aspects of the game. The authentication mechanisms of each platform exists for the sole purpose of collating items to purchase or to list prospective sale items. There are no profile options, no community forums, no structure for organising games or events and no recording of individual player or course statistics.

It is clear by the statistics that golfers are lacking a sufficient platform to cater to their needs. Namely, affordable overheads that ensure beginner and intermediate golfers alike are able to acquire the necessary equipment, and a sense of belonging and involvement within their local and national golfing community. The MyGolf marketplace application aims to provide a solution to these failings by delivering a platform that not only allows Users to buy, rent or sell golf clubs and equipment but also fosters a golfing community through various social features.

https://www.sportaus.gov.au/
https://www.clearinghouseforsport.gov.au/__data/assets/pdf_file/0009/821988/State_of_Play_Report_-_Golf.pdf
https://www.golfindustrycentral.com.au/golf-industry-news/australian-2018-national-golf-club-participation-report-released/

## MyGolf URL

https://ca-mygolf.herokuapp.com/
 
## MyGolf GitHub Repository

https://github.com/EdgarScar/MyGame_Golf 

## Describe the following parts of the app:
- Purpose

  - The purpose of the MyGolf application is to provide a one stop shop for everything golf related that is affordable and socially driven in order to foster better connections between people in local communities. It will offer a platform for anyone who has an interest in the sport, whether beginner or advanced, to obtain any necessary equipment at a reasonable price and hassle free. It will also bring people from all over Australia together on a platform that is geared toward fostering community spirit, both online and on the course. MyGolf will strive to promote the game in local communities with the purpose of bringing people together through the sport. 
- Functionality/Features
    - Buy/Rent/Sell
      - Users of the MyGolf application will have access to a two way market place from which they can choose to Buy, Rent or Sell second hand golf clubs and equipment. Users will not be required to sign in to view items for sale or rent within the market place, but will be required to sign in to post an advertisement to loan or sell an item. The market place will be searchable via various categories and attributes associated with an item a User wishes to buy or rent. Large buttons and simple criteria will help guide a User through the necessary steps to find items that are suitable to their needs. A primary photo will be displayed for each item currently available in the market place accompanied by a description of the most pertinent information. Also visible will be details of the User selling or renting the item, along with their rating as a seller or renter. When an item is selected, the User will be shown a page specific to that item that will include any additional photos and information. This page will also show any past reviews that the seller/loaner’s has received from other Users who have bought or rented from them. From here, the User may also choose to send a message to the seller/loaner and select to make a purchase or rent the item (depending on the listing). If the User elects to purchase or rent, they will be taken to a page confirming all the details and whether they wish to proceed. The User will then be connected with Stripe to finalise their payment. Once the transaction is confirmed, the payment will be held in waiting. The User who posted the item will be emailed an alert to inform them that a User wishes to purchase or rent their item. They must then approve the rent or purchase before the transaction is finalised.

      - An unmistakable button will feature on the market place page alerting the User to their ability to post an item for sale or rent. Once again, the User will be stepped through the necessary criteria to be filled in to be able to make a posting. A User will also be able to upload up to ten photos of their item. A list will automatically be created that contains any items the User has currently posted for sale or rent. A link to this list will be located within the marketplace but will only be accessible to the User who has posted the items. From this list, the User will also be able to remove any of their own postings from the market place.
  - Internal Messaging
    - Users will be able to communicate with one another through an internal messaging feature within the MyGolf application. Prospective buyers/renter will be able to inquire with the seller/loaner of an item to query any specific details they wish to know about the item, delivery or price. In the marketplace, each item posted will have a link that connects to the seller/loaner’s profile page, from which a prospective buyer/renter can choose to send a private message.
    - Additionally, Users will be able to use the messaging platform to send private messages to any User on the platform that has an account. This is to facilitate stronger connections between Users by allowing for easy communication. Any User will have the option to not receive private messages from other Users or report any inappropriate behaviour or abuse.

  - Personalised Profiles

    - Once a User creates a log in, a profile page will be created for them. From their profile page, a link to which will be located in the top navigation bar of the application, a User can add a profile photo and a short bio about themselves. This page will also contain a personalised list of courses the User has played, their respective scores on each course as entered by the User and any courses the User has selected as wanting to play in the future.
  - Record of courses played and statistics for each round
    - On a User’s profile page will be their personalised course list. Each course, if it has been played by the User, will display the scores they have achieved for each round. These statistics will be compiled to create a User’s overall handicap that will also be displayed on their profile page. A User can select any course from their personalised course list or from the course list page and view all the scores of other Users who have also played that course. This will be a leader board style page showing the highest to lowest average score of each User who has played that course. 
  - Courses List page (inc ratings and a featured course)
    - A list of all golf courses in Australia will be contained on the MyGolf application. A User will be able to search any course by name or other relevant criteria including location, difficulty, facilities, price or rating. An individual course may be selected to open a new page that displays images of the course and additional details, including the length, difficulty, facilities, price and a map of its location. It will also display the collective average of the MyGolf Users’ ratings for that course. On this page, a User may choose to select whether they have played the particular course, enter the score they obtained, and save it to their personalised course list contained within their profile page. A User can also opt to add any course from the course list page to their personalised course list as a course they wish to play in the future.

  - Review system for Sellers/Renters/Courses

    - When an item is purchased or rented from the market place within the MyGolf application, the User who purchased or rented the item will be able to rate and review the User who sold or loaned them the item. Only Users who have had dealings with the seller or loaner will be eligible to rate and review them. A User will also be limited to one rating and review of another User per purchase or rent from that User. In order to facilitate this, the User, upon confirmation of their purchase, will automatically be sent an email containing a link to a rating and review page within the MyGolf application. They can choose to rate and review immediately or have the option to wait until they have received their item. This will ensure that if there is any issue with the item or its delivery, it can be noted in the review.
    - A User who loans an item to another User will also be able to rate and review them as a renter. Once confirmation of the rental purchase has been received, the loaner will receive an email with a link to the rate and review page specific to the User who has rented the item. Again, the User can elect to wait until they have received their item back before opening the link and entering their rating and review.
    - Each User, if they have sold/loaned or rented an item, will have a rating specific to their performance. A User’s rating as a seller/loaner will be separate from any rating they have as a renter. These ratings will all be out of 5, with the average displayed to one decimal place. A User’s ratings will be displayed in the marketplace will not be able to be changed or hidden from other Users. If a User has a problem with their rating or a particular review, there will be a link next to each review, only accessible by them, connecting them to a page where they can report the review and explain why they believe it to be unjust.
    - Users will also be able to rate and review any of the courses listed in the Course page of the application. This will be similar to the User ratings feature as it will be out of 5, with the average of all User reviews displayed as the overall rating. The User reviews of each course will also be accessible through a link next to each course in the course list. A User will only be able to rate a course once and leave one review per course. However, a User may change their rating or edit their review for each course.

  - Golf News, Live Scores and Upcoming Events

    - On the home page of the application there will be a list of the latest headlines from around the world related to golf. When there is a major tournament on there will also be a display with the current live scores. These will all be implemented using an API to pull headlines from various news online news outlets and sport broadcasters. Additionally, there will be information about upcoming events in Australia displayed and links to information about purchasing tickets. Users will be attracted to the application as they will be able to keep up to date with all the current news, scores and events in the world of golf all in the one place.

  - Meet Ups/Organise matches locally
    - Users will be able to access a page called ‘Meet Ups’. Within this page, Users can create a posting seeking other Users to join them in a round of golf. A User will enter a date and time, their own skill level, how many players they wish to play with and the courses they are willing to play. Other Users can view these postings and select one that they wish to participate in. Both Users can communicate via the internal messaging system to confirm the time and location for their upcoming shared round. Users will also be able to search the postings in this page by locations, times or courses to find a suitable playing partner. Once all Users involved are content with the arrangement, they will confirm this through a button on the posting. The posting will then be removed from the public Meet Ups page and a replication will be posted in Users’ profile pages reminding them of their arrangement.
  - Community Forum
    - A community forum will be implemented within the MyGolf application to provide Users with a platform to discuss anything golf related. It will be accessible through the main menu top navigation. The forum will consist of a main page with a general discussion board, with a text field below for Users to enter their own content. Users can also create sub forums for different topics they would like to discuss, or post a query on an existing forum that is related to their topic. These sub forums will be accessible from a list menu on the side of the page, and will also be searchable by topic.
- Target Audience
    - 76% of Australians who participate in golf are aged 45 years and over, while 81% of participants are male. Therefore, the target audience for the MyGolf application is primarily males over the age of 45 years. The platform will target beginner and intermediate golfers, or any community members with an interest in the sport. Due to the focus on acquiring affordable second hand clubs and equipment and fostering community involvement, MyGolf is not intended to target professional golfers.

      Because the platform will primarily be aimed at an older audience, it is designed with a specific focus on simplicity and ease of use. This means that, although males over 45 years are the primary target audience, the nature of the design means the application will also be accessible to a wide demographic, including younger golfing participants and women. This is why features, such as news updates, live scores and event information will focus on both men’s and women’s professional golf. A colour scheme reflecting the colours typically associated with golf will also form part of the gender natural aesthetic appeal, while easy to navigate layouts, large buttons and accessible design practices will also be implemented with the target audience’s age in mind. 

https://www.clearinghouseforsport.gov.au/__data/assets/pdf_file/0009/821988/State_of_Play_Report_-_Golf.pdf

- Tech Stack

  - MyGolf is buit with:
    - Ruby on Rails
    - HTML
    - CSS & SCSS
    - Bootstrap
    - Heroku 
    - Github 

## User stories for the app
### **Epic**
    As a golfer,

      I want a hub online for everything golf related,

        so I can see and do all I want to in one central place.

### User Story (buyer)

    As a beginner golfer,
    
      I want to buy an affordable set of clubs,
      
        so I can learn to play golf.

### User Story (renter)

    As a member of the community,
    
      I want to try playing golf and being social without having to spend a lot of money,
      
        so I can get exercise and meet people.

### User Story (buyer)

    As an amateur golfer,
      
      I want to buy golf clothing and accessories that I would like to try,
          
        so I can feel like a golfer and enjoy the game more.

### User Story (renter)

    As an intermediate golfer,
      
      I want to experiment and try out different clubs and equipment,
        
        so I have a better understanding of what I want to upgrade to.

### User Story (buyer)

    As a purchaser,
      
      I want to know that what I’m buying is legitimate,
        
        so I don’t get ripped off.

### User Story (renter)

    As a tourist,
    
      I want to play a round of golf on a local course but I don’t want to pack my clubs,
      
        so I can experience golf in Australia and meet some locals.

### User Story (seller)

    As a golf equipment owner,

      I never play and I need to make money,

        so I can afford other priorities.

### User Story (loaner)
    
    As a social golfer,
      
      I don’t get time to play as often as I would like to,
        
        so my equipment is gathering dust but I need to make my money back.

### User Story (loaner)

    As a loaner of equipment,
      
      I need to know that it will be returned to me in a similar and undamaged way,
        
        so I can use them again myself or rent them out again.

### User Story (loaner)

    As an amateur golfer,
    
      I have multiple sets of clubs and equipment that I rarely use,
      
        But I need to keep in case I need them.

### **Epic**
    As a member of the public,
    
      I want an online community that I can be a part of,
      
        so I can connect and socialise with other likeminded people in my local area.

### User Story (User)

    As a member of the public,
    
      I want to feel connected to my local community and socialise outdoors,
      
        so I can build relationships and keep fit and healthy.

### User Story (User)
    
    As a social golfer,
      
      I want to find other people to play with and be able to easily organise a round,
        
        so I can make new friends.

### User Story (User)

    As a member of the public,
      
      I want to know which golf courses are available for venue hire or have function facilities,
        
        so I can organise a local event at a suitable location.

### User Story (User)

    As a tourist,
      
      I want to find a local course that is suitable to my skill level and price,
        
        so I can enjoy what the local community has to offer.

### User Story (User)

    As a local golfer,
      
      I want to have a record of the courses I’ve played,
      
        so I can remember them and tell others whether they are good or bad. 

### User Story (User)

    As a golfer,
    	
      I want to have a record of my scores from the courses I’ve played,
        
        so I can easily track and show off my handicap to my friends.

### User Story (User)

    As a golfer,
      
      I want to easily find the live scores of current events, read the latest updates and watch the recent highlights,
        
        so I know what is happening in the world of golf.

### User Story (User)

    As an aspiring golfer,
      
      I want a platform where I can ask others about different topics or give out advice on golf,
          
        so I can improve my game and support my local community.
 
## Explanation of High Level Components 

  - Buy/Rent/Sell

    - The marketplace component of the MyGolf app was created using three models, Item, Subcategory and Category. Categories and Subcategory data was seeded as no User input is necessary. An Item controller was generated to handle the routing requests for the marketplace. This controller utilises a get request and the index action to display the items, a get request and the show action to display details of an individual item, a get request and the new action to create a form for to post a new item and a post request and the create action to create a new instance of the item entity. Additionally, a delete request and the destroy action were also used to allow a user who owns the listing to remove it from the marketplace. Each action, excluding destroy and create, generates its own view page. 
    - Additionally, a model for Order was created and an Order controller was generated. This model records the ID of a particular User and the ID of the item they purchased. The Order controller utilises a get request and the new action to create a view page for the checkout of an item from the marketplace. This controller, through the new action, links to Stripe for payment and confirmation. It also then, through the webhook action, confirms the transaction and, if successful, records the transaction data into the Order model in the database. Finally, the controller, through the complete action, generates a view that confirms to the User that their purchase was successful.

  - Courses List page 

    - The course list page was implemented using the Course model. A course controller was generated. A get request with the index action was used to display all the seeded courses on a view called index. A get request and the show action was used to display more detailed information of a particular course on its own separate view page. The data in the Review model that relates to a particular course is also displayed below the course on its show page. This is done using a get request, in conjunction with the add action, to allow a User to add a course to their profile list of courses. 

- Review system for Sellers/Renters/Courses

    - The Review model and controller are also utilised for the courses page. As a polymorphic model, the Review model saves the type of review, being a course, and the course ID. A get request and the new action was used to generate a form from which the User could write a review of a particular course. A post request and the create action was used, through the Review controller, to save a course review to the Review model in the database.
    - The Review model was created as polymorphic so that it can store reviews of both courses and other User’s who are selling/renting items in the marketplace. Due to time restraints in the first sprint, the ability to leave User reviews will not be available until the next iteration of development. 

- Personalised Profiles

  - The User profile page uses data from the User and the Profile_Course models. The Profile controller was generated. A get request and the index action were implemented to display the current User’s personal details on the index view. A get request and an action named courses was also implemented and used to display all the courses the User has saved in their Profile_Course model instance on a seperate view named courses. 
  - Additionally, a get request and an action called listings was implemented through the Profile controller. This action is used to retrieve the items that the current user has for sale or rent in the marketplace. A view page, through the Profile controller and listings action, was created to display the User’s current items.  

- Golf News, Live Scores and Upcoming Events

  - A controller called Home was generated. Through the root route and the index action, the gem HTTParty was used to fetch API data from news headlines from around the world. The data is then translated into JSON format in the index action. In the index view, the API data is filtered through an if/else statement to only display content that includes the word “golf” in the headlines or description. After this sprint, the MVP only includes API data of golf news. In future iterations, the live scores of tournaments and information for upcoming events will be implemented using the same API method through the index action. 

## Third party services

  - Amazon Web Services

    - Amazon web services, specifically S3, is used in the MyGolf application as a cloud storage for images. These images are primarily the profile images that Users’ upload when creating or customising their My Golf account. This service is used to accommodate data space as local storage does not have to be utilised.

  - Heroku

    - Heroku is used to deploy the MyGolf application in conjunction with GitHub. The application will be deployed early in production, with automated deployment occurring periodically thereafter. This is to ensure that as updates to the application and GitHub are made, the application is still able to be deployed successfully. Any errors that do arise can be addressed immediately because they will stem most likely from the most recent update. Once the MyGolf application is complete, the final deployment will ideally run smoothly because any early errors will have already been rectified.

  - HTTParty

    - HTTParty gem is used as a means of obtaining data from APIs through a get request, directing into the MyGolf application in Rails and converting it into a usable JSON format. This will be used to retrieve news, scores and player data from around the world through selected APIs and then displayed on the ‘Latest’ page within the MyGolf application.
  
  - Bootstrap

    - Bootstrap is used to design and implement the front end design. In conjunction with SCSS, different components from the bootstrap framework will be utilised to features including the main navigation bar, the layouts of the market place and the courses plage and organisation of the administration data into a table. Bootstrap makes front end design easier to implement that simple HTML and CSS alone. 

  - Devise

    - Devise gem is used for authentication purposes within the MyGolf app. The User model is created using the devise gem to create all the user views already established by devise. The user controller is also established through devise to manage control over the entity. The devise methods, such as current_user and user_signed_in?, are used to check whether a certain user is logged in and the content and information is filtered accordingly. This is most relevant for the administration page, from which only the current user with the administrator's email address will be able to view the data.

## Models in terms of their relationships (active record associations) they have with each other

The User model was created using Devise to enable the built in authentication methods to be used throughout the app. The User model has many Orders, Items and Profile_Courses. It has many Courses through Profile_Courses and many Reviews through the polymorphic Review model. It has only one Address through the Address polymorphic model and only one Image. 

The Category model has many Subcategories. Subcategories are also dependent on the Category model instance, meaning that if a Category instance is deleted, the dependent Subcategory instances linked are also deleted. 

A Subcategory model instance belongs to a Category model instance. If the parent Category is deleted, the Subcategory is also deleted. The Subcategory model also has many Items. 

An instance of the Item model belongs to an instance of the Subcategory model and the User model. It has many Orders, but only one Image. 

An instance of the Order model belongs to both the User and Item models. 

An instance of the Course model has one Image. It has many Profile_Courses and many Reviews, through the polymorphic Review model. It has one Address through the Address polymorphic model. 

An instance of the Review model only belongs to the User model. 

An instance of the Profile_Course model belongs to both the User and Course models. 

The Address model, as a polymorphic model, only belongs to itself. Users and Courses have one address, but an instance of the Address model does not belong to any particular model. 

## Database relations to be implemented

A Category has many Subcategories, and Subcategories belong to many items. This is why the Category foreign key is stored in the Subcategory model. Each item in the marketplace will have one Category and one Subcategory. It will only have a Category through the Subcategory. As it is a many to one relationship, the Subcategory foreign key will be stored in the Item model instance. 

An Item has only one User as its seller or loaner. Their User ID is stored as foreign in the Item model to denote this. An Item can have many Images, which are stored in the polymorphic Image model. An item, if being rented, only has one Duration, which is also stored as a foreign key in the Item model. 

The Order model maintains a record of all transactions between Users. Although many items can be sold, one item can only be sold once. Therefore, the Order model has many to one relationship with the Item model, storing the Item’s ID as a foreign key. The seller of the item can be determined by the foreign key in the Item instance, which is stored in the Order model. Similarly, only one User can purchase an item. The buyer’s ID is also stored in the Order model as a foreign key. 

A User can have many Orders, as they are free to purchase any Item available in the store. Similarly, a User also has many Items, as they are free to list many Items in the marketplace. A User has only one profile photo and therefore has a one to one relationship with the polymorphic Image model. A User can make a review of any Course or any other User (as a seller/loaner), but each Review belongs to only one User. Therefore, the relationship between User and Review is many to one, with the User being stored as a foreign key in the Review model. A User also only has one Address, and one address can only belong to one User. This relationship is therefore one to one and the User type and ID are stored in the Address model as polymorphic foreign keys. A User can play many different courses and save them in their own course list. The instance of a Profile Course only belongs to one User though as it also contains their data for that particular round. Therefore, a User has a many to one relationship with the Profile Course model. The foreign key of the User is stored in the Profile Course model instance. 

A Course can have many images, be stored as many Users’ profile courses and can be reviewed many times. But a Review is only about one Course, a Profile Course instance is the data for one Course and the specific images all belong to one Course. Therefore, a Course has a many to one relationship with these models, with its ID stored as a foreign key in each one. Similarly to a User, a Course only has one Address and an Address belongs to only one course. This is a one to one relationship with the Course type and ID being stored in the polymorphic Address model. 

## Tasks allocated and tracked 

In the initial stages of development, the User Stories determined the initial overview of tasks that needed to be allocated and implemented. As per the below diagram, the stories on the left side of the vertical line are the tasks allocated to this sprint that will form part of the MVP. The stories on the right side of the line comprise the tasks allocated to the additional features that are intended to form part of the application but are not the priority for this sprint. 

Trello Board was then utilised as the main tool for tracking tasks throughout the development of the application. The User Stories were broken down into specific tasks that each would require to be completed. These were then transferred into Trello to maintain a constant understanding of the progress of the application. This process of using User Stories and Trello worked successfully to allocate and track each task for the MVP of the application. 

