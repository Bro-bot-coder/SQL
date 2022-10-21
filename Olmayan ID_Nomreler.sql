with  
   seq as (select top 1000 row_number() over(order by Badgenumber) as NonUserID
            from dbo.USERINFO) 
         select seq.NonUserID 
		    from seq left outer join userinfo u 
			  on (seq.NonUserID = u.badgenumber) 
     where u.badgenumber is null;