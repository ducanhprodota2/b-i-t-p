USE TestingSystem;

-- Question 1: Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
CREATE  VIEW dsnv
AS
	SELECT		A.*, D.DepartmentName
	FROM 		`Account` A 
	INNER JOIN 	`Department` D ON A.DepartmentID = D.DepartmentID
	WHERE		D.DepartmentName = 'Sale';

SELECT 	* 
FROM 	dsnv;

-- Question 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất

CREATE  VIEW acc
AS
SELECT 		A.*, COUNT(GA.AccountID) AS 'SO LUONG'
FROM		`Account` A 
INNER JOIN 	GroupAccount GA ON A.AccountID = GA.AccountID
GROUP BY	A.AccountID
HAVING		COUNT(GA.AccountID) = (
									SELECT 		COUNT(GA.AccountID) 
									FROM		`Account` A 
									INNER JOIN 	GroupAccount GA ON A.AccountID = GA.AccountID
									GROUP BY	A.AccountID
									ORDER BY	COUNT(GA.AccountID) DESC
									LIMIT		1
								  );
								  
SELECT 	* 
FROM 	acc;


-- Question 3: Tạo view có chứa câu hỏi có những content quá dài và xóa nó đi
CREATE  VIEW longquestion
AS
	SELECT 	LENGTH(Content)
	FROM	Question
	WHERE	LENGTH(Content) > 18;
	
SELECT 	* 
FROM 	longquestion;


-- Question 4: Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất

CREATE  VIEW dspb
AS
	SELECT 		D.*, COUNT(A.DepartmentID)
	FROM		Department D 
	INNER JOIN 	`Account` A ON D.DepartmentID = A.DepartmentID
	GROUP BY	D.DepartmentID
	HAVING		COUNT(A.DepartmentID) = (
										SELECT 		COUNT(A.DepartmentID)
										FROM		Department D 
										INNER JOIN 	`Account` A ON D.DepartmentID = A.DepartmentID
										GROUP BY	D.DepartmentID
										HAVING		COUNT(A.DepartmentID)
										ORDER BY	COUNT(A.DepartmentID) DESC
										LIMIT		1
										);
										
SELECT 	* 
FROM 	dspb;

-- Question 5: Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo
CREATE VIEW nguyenqs
AS
	SELECT 		Q.*, A.FullName
	FROM 		Question Q 
	INNER JOIN 	`Account` A ON Q.AccountID = A.AccountID
	WHERE		SUBSTRING_INDEX(FullName,' ',1) = 'Nguyen';

SELECT 	* 
FROM 	nguyenqs;



