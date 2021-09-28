use quan_ly_sinh_vien;

SELECT address, COUNT(student_id) as 'Số lượng học viên'
FROM student
GROUP BY address;
/* 
hiển thị điểm trung bình các môn học của mỗi học viên
*/
SELECT S.student_id, S.student_name, AVG(mark)
FROM student S join Mark M on S.student_id = M.student_id
GROUP BY S.student_id, S.student_name;
/* 
hiển thị điểm trung bình các môn học phải lớn hơn 15
*/
SELECT S.student_id, S.student_name, AVG(mark)
FROM student S join Mark M on S.student_id = M.student_id
GROUP BY S.student_id, S.student_name
HAVING AVG(mark) > 15;
/* 
Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
*/
SELECT S.student_id, S.student_name, AVG(mark)
FROM student S join Mark M on S.student_id = M.student_id
GROUP BY S.student_id, S.student_name
HAVING AVG(mark) >= ALL (SELECT AVG(mark) FROM mark GROUP BY mark.student_id);