                        Reflective Report for Data Management Fundamentals Assessment

StudentID 
INTRODUCTION:
This assessment was to test our knowledge in relational database management, I ensured to attend all classes, gaining the necessary knowledge to complete each component. Weekly lessons provided essential insights into tackling the tasks. My first step was carefully studying the brief to understand each part's requirements. I will be reflecting on
COMPONENT 1 (ER Diagram and Database Design)
Challenges Encountered:
Designing the Entity-Relationship (ER) Diagram and determining the required tables was a significant challenge. Structuring the database and populating tables initially proved difficult. I identified three key tables: Constituency, Station, and Reading (AirQualityMeasurement), along with an optional Schema table for visualization.
Overcoming Challenges/Experience Gained:
Understanding the relationships between tables was crucial. Constituencies have many stations, and each station has multiple readings, forming a one-to-many relationship. The Constituency ID became a foreign key in the Station table. However, the Constituency table had four rows, while the Station table had 19 rows. Using Google Maps, I assigned each station to its constituency by searching its coordinates (latitude and longitude). This revealed that Bristol West has 11 stations, Bristol South has 4, Bristol North West has 2, and Bristol East has 1. With this information, I successfully created the ER Diagram.

COMPONENT 2 (Forward Engineer the ER Model)
While designing my ER model, I generated an SQL script by forward engineering it. This approach was simpler and less error-prone compared to manually writing the script. I then moved on to cropping and cleaning my data. Conceptual models tie together many ideas to explain a phenomenon or event.

COMPONENT 3 (Cropping the Dataset)
Challenges Encountered:
Cropping the Air Quality dataset for data from January 1, 2015, to October 23, 2023, was challenging. When I initially tried cleaning the data by removing rows with missing values, the entire dataset disappeared.
Using Python to crop the dataset was intentional as I wanted hands-on experience and extra marks. However, after running the script, my result differed from my classmates'. The original dataset had 1,603,492 rows, while my cropped version had 400,000 rows, raising concerns about the script’s accuracy.
Overcoming Challenges/Experience Gained:
On closer inspection, I noticed some columns had very few or no values. I adjusted my focus to cropping the dataset for values from January 1, 2015, onwards and cleaning it to ensure it captured data up to October 23, 2023.
I re-ran the script and obtained row count of 517,245. The earlier issue stemmed from not allowing the cropping process to complete due to an interruption.

COMPONENT 4 (Importing Tables into the Database)
Manually importing the Constituency, Station, and Schema tables into phpMyAdmin was straightforward due to their small size. However, importing the large Reading table required Python.
An alternative approach would have ben to just create a csv file for each of the table using excel then just import straight to phpMyAdmin using the import,
Challenges Encountered:
When creating the ER Diagram, the Site_ID foreign key in the Reading table was renamed to Station_Site_ID and moved to the last column. In the cropped dataset, it appeared as the second column, causing a mismatch. This created errors while i was running the python script which took a long while to import.
Overcoming Challenges/Experience Gained:
I edited the cropped dataset, moving the Site_ID column to the end, and updated my Python script to rename it to Station_Site_ID. This alignment ensured consistency between the dataset and the schema. This experience improved my skills in data manipulation and importing large datasets. The time it took to import was based on the volume and velocity of the dataset.
COMPONENT 5 (Querying the Data)

Querying the data was manageable due to the exercises provided during class and resources like W3Schools. For query-a, I identified the highest value of NO for about eight stations using JOIN and GROUP BY functions. For query-b, I calculated mean values of PM2.5 for AURN St Paul’s and Parson Street School but limited the output to prevent crashes. I applied the same method to the third query, ensuring efficiency and accuracy.

LESSONS LEARNED.
This assessment taught me database design, time-series data manipulation, and Python-based database management. I realized the importance of data integrity and enrichment tools like Google Maps as it helped to determine which stations belonged to which constituency.

CONCLUSION.
Despite initial challenges, I completed the tasks successfully by exploring multiple methods and seeking clarity during classes. This experience enhanced my understanding of database systems and Python, preparing me for future projects. Screen Captures of all my results are located in the files.
