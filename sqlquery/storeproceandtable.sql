


Create procedure SignUpDetails

(

 @Firstname varchar(20),

 @Lastname varchar(20),

 @Email varchar(40),

 @Phoneno bigint,

 @Password varchar(15)

)

as

begin try

     declare @Count int

     declare @ReturnCode int

     select @Count = count(Email) from Signuptable where Email = @Email

     if(@Count>0)

        begin

        set @ReturnCode = -1

        end

     else

        begin

        set @ReturnCode = 1

        insert into Signuptable(FirstName,LastName,Email,Phoneno,Password) values ( @FirstName, @LastName , @Email, @Phoneno, @Password)

        end

     select @ReturnCode as ReturnValue

end try

begin catch

select

    ERROR_NUMBER() as ErrorNumber,

    ERROR_STATE() as ErrorState,

    ERROR_PROCEDURE() as ErrorProcedure,

    ERROR_LINE() as ErrorLine,

    ERROR_MESSAGE() as ErrorMessage;

End catch


create table Signuptable(
id int identity primary key,
Firstname varchar(100),
Lastname varchar(100),
Email varchar(100),
Phoneno bigint,
Password varchar(100))




Create procedure LogInCredentialsss

(

 @Email varchar(20),

 @Password varchar(15)

)

as

declare @count int

begin try     

     select @count = count(Email) from Signuptable where (Email=@Email and Password=@Password) 

     if(@count = 1)

     begin

        insert into Logintable (Email,Password) values ( @Email, @Password)

        select * from Signuptable where (Email=@Email and Password=@Password)

        select 1 as ReturnCode

     end

     else

     begin

        select -1 as ReturnCode

     end

end try

begin catch

select

    ERROR_NUMBER() as ErrorNumber,

    ERROR_STATE() as ErrorState,

    ERROR_PROCEDURE() as ErrorProcedure,

    ERROR_LINE() as ErrorLine,

    ERROR_MESSAGE() as ErrorMessage;

End catch


exec SignUpDetailss 'himanshu','singh','hs010397@gmail.com',666666666666,'qwertyui'


exec LogInCredentialsss 'hs010397@gmail.com','qwertyui'