# ETL_Customer_Behavior

## Problem Description
The data engineering project focuses on building a data pipline that analyzes the behavior of users using the service for 1 month. User behavior is what TV shows they watched and how much time they watched
## Architecture
![Architecture](image/Architecture.png)
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
  - Data cần tìm chứa trong  field _source có format là sutruct. Sau khi xử lý . The dataset has the following columns:
     - Appname: loại chương trình  truyền hình 
     - Contract: Mã người dùng 
     - Mac: Mã thiết bị của người dùng
     - TotalDuration: Thời lượng xem chương trình  của người dùng
## Main objective
- The following steps were performed to analyze customer behavior in month:
  -  Extract: get raw data from data lake
  -  Transform: Transform data from input to output
  -  Load: save data to data wareshoues for analyzes
  -  ELT to data mart
  -  Visualzation: create dashboard
## Experiment:
- ETL:
  - Output of the problem: output data has the following columns:
      - Contract: Mã người dùng
      - MovieDuration: thời lượng người dùng xem phim
      - SportDuration: thời lượng người dùng xem thể thao
      - ChilDuration: thời lượng người dùng xem thiếu nhi
      - RelaxDuration: thời lượng người dùng xem thư giãn
      - TvDuration: thời lượng người dùng xem Tv show
      - TotalDuration :Tổng thời lượng xem các chương trình truyền hình của người dùng
      - MostWatch: người dùng xem loại chương trình nào nhiều nhất
      - Tase: các loại chương trình truyền hình người dùng xem
      - Activeness: trong 1 tháng người dùng sử dụng dịch vụ bao nhiêu ngày
      - Date: Ngày thực hiện việc ETL 
- ELT: sau khi có dữ liệu trong data wareshouse, tiếp tục thực hiện ELT tới database khác trong Data warehouse. 
     - Output of the problem: output data has the following columns:
        - Total User: Tổng số lượng người dùng
        - Total_MovieDuration: Tổng thời lượng xem 1 tháng của chương trình movie
        - Total_SportDuration: Tổng thời lượng xem trong 1 tháng của chương trình sport
        - Total_ChilDuration: Tổng thời lượng xem trong 1 tháng của chương trình child
        - Total_RelaxDuration: Tổng thời lượng xem trong 1 tháng của chương trình Relax
        - Total_TvDuration: Tổng thời lượng xem trong 1 tháng của chương trình TV
        - TotalDuraion:  Tổng thời lượng xem của tất cả chương trình truyền hình trong 1 tháng
## Technologies  
  - Programing language: Python(pyspark), SQL
  - Data Lake: Hadoop HDFS
  - Data Wareshouse: MySQL
  - Data Visualization: Tableau

## Dasboard
![Dashboard](image/Dashboard.png)
