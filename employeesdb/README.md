# EmployeeDetails CRUD operation

1. Get all employees: 

curl --location --request GET 'localhost:8081/employees'

2. Get employee by Employee Id:

curl --location --request GET 'localhost:8081/employee?EmpId=1'

3. Get employee by Email:

curl --location --request GET 'localhost:8081/EmployeesByEmail?Email=abcd@gmail.com'

4. Insert data if Email is not already present:

curl --location --request POST 'localhost:8081/employee' \
--header 'Content-Type: application/json' \
--data-raw '{
     "Name":"payal",
      "Email": "payal@gmail.com",
      "designation": "associate L1"
    }'
    
5. Update designation and email on the basis of employee Id:

curl --location --request PATCH 'localhost:8081/updateEmployee/4' \
--header 'Content-Type: application/json' \
--data-raw '{
	"designation":"senior technology",
	"Email":"aishwarya34@gmail.com"
}'

6. Delete data on the basis of employee ID:

curl --location --request DELETE 'localhost:8081/deleteEmployee/5'
