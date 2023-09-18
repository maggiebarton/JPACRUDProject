# JPACRUDProject
## Overview
Maggie Covers Songs (MCS): A database that allows CRUD operations to help keep track of cover songs I'm learning to play. From the homepage, cover projects I'm currently working on are displayed, with links to view more details about each song. The top navigation bar allows users to return to the homepage from any page by pressing the MCS Logo, as well as add a cover, view covers, and search for a cover by ID. While viewing covers, users have 3 options: View by Key, View by Status, or View All. When a single cover's details are displayed, users have the option to update or delete.

## Technologies Used
- Git/Github
- SpringToolSuite4/Spring/Spring Boot
- HTML/JSP
- Bootstrap/CSS
- MAMP
- MySQL/MySQL Workbench
- Gradle/Hibernate/JPA
- Java

## Lessons Learned
This project was my first opportunity building a full-stack application using my own database. MySQL Workbench is a great tool for modeling the tables, columns and inserts in a database. This tool also generates the SQL Script when forward engineering, so I found creating a database to be one of the easier parts of this project; however, I did hit a speed bump with my original column names. Since I wanted to inlcude the key of each cover song as a column in my cover table, I initially named the column "key." *Makes sense, right?* Well, the word "key" is a reserved word in MySQL. My database was created without errors, so I didn't find the problem until later when working on CRUD operations.

Moreover, I think this project really solidified request mappings and DAO methods for me. I worked through that part of the project with minimal issues and rather quickly, compared to last week when writing an update mapping/method took upwards of two hours.

I also used this project to work on my front-end styling, and I'm really happy with the results. A few areas I'm particulary proud of:
1. Using custom CSS for background images to automatically resize for desktop views and larger, while disappearing for smaller views and instead using a solid color background. This helps pages load faster on mobile.
2. Using custom logos in navbars as a link back to the homepage. Eventually I'd like to take this a step further and add a hover effect to the logo so it's more obvious to interact with it.
3. Creating a table as a child element to the accordian component of the "View By Key" page. This really saved me some screen real estate.
4. Using Bootstrap icons to create the star ratings for the "View By Status" titles, as well as a favicon.
