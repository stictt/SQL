Select Tab1.Name 
From (Select Top 1 sum(EMPLOYEE.SALARY) as SalaryAvg ,DEPARTMENT.Name
From DEPARTMENT inner Join EMPLOYEE on EMPLOYEE.DEPARTMENT_ID = DEPARTMENT.ID
Group By DEPARTMENT.Name 
Order By SalaryAvg Desc) as Tab1