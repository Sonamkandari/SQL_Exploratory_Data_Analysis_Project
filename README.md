# SQL_Exploratory_Data_Analysis_Project
<img width="581" height="483" alt="image" src="https://github.com/user-attachments/assets/ac99aeee-3c7b-4a7f-9c3b-538c0e6c51da" />

---
<img width="888" height="533" alt="image" src="https://github.com/user-attachments/assets/2b0cbea6-3600-4662-8149-e120c7a87343" />

---
## EDA (Exploratory Data Analysis 
- **Database Exploration**
```
use DataWarehouse

select * from gold.dim_customers;
-- EXPLORE ALL THE OBJECTS IN THE DATABASE
select * from INFORMATION_SCHEMA.TABLES;

-- EXPLORE ALL COLUMNS IN THE DATABASE
select * from  INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='dim_customers'
```
---
## Dimensions Exploration
- Identifying the unique values or categories in each dimension, recognizing how data might be grouped or segmented, which is useful for later data analysis. 
<img width="708" height="462" alt="image" src="https://github.com/user-attachments/assets/a64e0243-c8b8-4ad0-9a2e-53edccc57867" />

---
- Explore  all countries our customers come from
- 
