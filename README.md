# ETL_Customer_Behavior

## Problem Description
The data engineering project focuses on building a data pipline that analyzes the behavior of users using the service for 1 month. User behavior is what TV shows they watched and how much time they watched
## About Dataset
 - Data is nested data and store in  data lake consist of 30 csv files, each file contains data for 1 day. Shcema of data: 
    - _index: string (nullable = true)
    - _score: long (nullable = true)
    - _source: struct (nullable = true)
        - Appname: string (nullable = true) 
        - Contract: string (nullable = true)
        - Mac: string (nullable = true)
        - TotalDuration: long (nullable = true)
    - _type: string (nullable = true)
  - Data cần tìm chứa trong  field _source có format là sutruct. Sau khi xử lý ta có được data như sau:
     - Appname: loại chương trình  truyền hình 
     - Contract: Mã người dùng 
     - Mac: Mã thiết bị của người dùng
     - TotalDuration: Thời lượng xem chương trình  của người dùng
## Main objective
- Output of the problem: Data 
    - Contract: 
    - MovieDuration: 
    - SportDuration
    - ChilDuration
    - RelaxDuration
    - TvDuration
    - TotalDuration
    - MostWatch
    - Tase
    - Activeness:
    - Date: 
  - Step by Step project:
  -  Extract: get raw data from data lake
  -  Transform: Transform data from input to output
  -  Load: save data to data wareshoues for analyzes
  -  Visualzation: create dashboard
## Technologies  
  - Programing language: Python(pyspark), SQL
  - Data Lake: Hadoop HDFS
  - Data Wareshouse: MySQL
  - Data Visualization: Tableau
## Architecture
![Architecture](image/Architecture.png)
## Dasboard
![Dashboard](image/Dashboard.png)
