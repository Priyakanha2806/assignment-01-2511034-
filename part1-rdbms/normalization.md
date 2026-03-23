Anomaly Analysis
Insert Anomaly

In the dataset, a new customer cannot be inserted independently without creating an order. For example, customer "CUST028" appears only in association with order "ORD2001". This shows that customer data is stored together with order records, making it impossible to add a customer unless an order exists.

Update Anomaly

Customer "CUST048" appears multiple times across different orders such as ORD2011, ORD2014, ORD2069, ORD2070, ORD2086, and ORD2087. If any customer information (like city or contact details) needs to be updated, it must be changed in multiple rows. This increases the risk of inconsistencies if all records are not updated correctly.

Delete Anomaly

Deleting an order can result in loss of important data. For example, removing order "ORD2001" would also remove all information related to customer "CUST028" in that record. If this is the only occurrence of that customer, their data will be completely lost.

Normalization Justification

The dataset contains redundancy because customer IDs such as "CUST048" and "CUST004" appear multiple times across different orders. This leads to duplication of data and increases storage requirements. It also creates update anomalies, where changes to customer information must be made in several places, increasing the chance of errors.

Additionally, the structure does not allow independent insertion of data. New customers or products cannot be added unless they are linked to an order, which reduces flexibility. Delete anomalies are also present, as removing a record can lead to loss of related information.

By normalizing the data into separate tables such as Customers, Orders, and Products, redundancy is reduced and data integrity is maintained. Each entity is stored only once and connected using foreign keys. This improves consistency, reduces data duplication, and makes the database more efficient and scalable. Therefore, normalization is necessary and beneficial.
