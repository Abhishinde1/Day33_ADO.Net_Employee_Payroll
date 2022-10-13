


 Create database PpayRoll_Service
 use PpayRoll_Service

 --create table---
create table Payroll_Service
(
 EmployeeId int primary key identity,
 EmployeeName varchar(255),
 PhoneNumber bigint,
 Address varchar(200),
 Department varchar(200),
 Gender char(1),
 BasicPay float,
 Deduction float,
 TaxablePay float,
 Tax float,
 NetPay float,
 City varchar(200),	
 Country varchar(200)
 );
 select * from Payroll_Service

 create procedure SPAddEployeedetails
 (
 @EmployeeId varchar(255),
 @EmployeeName varchar(155),
 @PhoneNumber bigint,
 @Address varchar(200),
 @Department varchar(200),
 @Gender char(1),
 @BasicPay float,
 @Deduction float,
 @TaxablePay float,
 @Tax float,
 @NetPay float,
 @City varchar(200),	
 @Country varchar(200)
 )
 as 
 begin
     insert into Payroll_Service(EmployeeName,PhoneNumber,Address,Department,Gender,
	BasicPay,Deduction,TaxablePay,Tax,NetPay,City,Country)
	values(@EmployeeName , @PhoneNumber,@Address,@Department,@Gender,
	@BasicPay,@Deduction,@TaxablePay,@Tax,@NetPay,@City,@Country)
end
 

