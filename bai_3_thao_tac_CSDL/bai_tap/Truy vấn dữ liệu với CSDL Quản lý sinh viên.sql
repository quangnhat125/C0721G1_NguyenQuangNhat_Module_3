USE quan_ly_sinh_vien;
SELECT *
FROM student
WHERE student_name LIKE 'h%';
SELECT *
FROM class
WHERE MONTH(start_date) = 12;
SELECT *
FROM `subject`
WHERE credit BETWEEN 3 AND 5;
SET SQL_SAFE_UPDATES = 0;
UPDATE student 
SET class_id = 2
WHERE student_name = 'Hung';
SELECT  S.student_name, Sub.sub_name, M.mark
from student S join mark M on S.student_id=M.student_id join `subject` Sub on M.sub_id=Sub.sub_id
ORDER BY mark DESC, student_name;