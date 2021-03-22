
 -- lấy ra tất cả các phòng ban
SELECT * FROM testingsystem.department;

-- lấy ra tất cả phòng ban có tên là sale
SELECT DepartmentID FROM testingsystem.department
where DepartmentName = 'sale';

-- lấy ra thông tin account có full name dài nhất
 SELECT * FROM testingsystem.account
  where length(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM `Account`);
  
  -- Lấy ra tên group đã tham gia trước ngày 20/12/2019
  SELECT GroupName FROM testingsystem.group
  where CreateDate < '2019-12-20;';
  
  -- Lấy ra ID của question có >= 4 câu trả lời
    SELECT questionID FROM testingsystem.answer
    having count(questionID)>=4;
    
    -- Lấy ra 5 group được tạo gần đây nhất
    SELECT * FROM testingsystem.group
    order by CreateDate DESC
    limit 5 ;
     -- Xóa tất cả các exam được tạo trước ngày 20/12/2019
     Delete from testingsystem.exam
     where CreateDate < '2019-12-20';
     
     -- Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
     UPDATE testingsystem.account
     SET Email= 'loc.nguyenba@vti.com.vn' , Fullname=' Nguyễn Bá Lộc '
     where AccountID= 5;
     
     -- Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
     select 
     a.Email,
     a.Username,
     a.FullName,
     a.DepartmentID,
     a.PositionID,
     b.DepartmentName
     
     from `account` a
     inner join department b on a.DepartmentID=b.DepartmentID;
      
      
      --  Viết lệnh để lấy ra tất cả các developer
  SELECT		*
FROM		`Account` A 
inner JOIN 	Position P ON A.PositionID = P.PositionID
WHERE		P.PositionName = 'Dev';

-- Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT * FROM testingsystem.group;
     
    



