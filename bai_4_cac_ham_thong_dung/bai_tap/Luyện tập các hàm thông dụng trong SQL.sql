use quan_ly_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
SELECT *
FROM `subject`
GROUP BY sub_id
HAVING MAX(credit) = (SELECT MAX(credit) FROM `subject`);
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT S.sub_id, S.sub_name, S.credit, MAX(mark)
FROM `subject` S JOIN mark M ON S.sub_id = M.sub_id
GROUP BY sub_id
HAVING MAX(mark) = (SELECT Max(mark) FROM mark); 
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT S.student_id, S.student_name, AVG(M.mark)
FROM student S JOIN mark M on S.student_id = M.student_id
GROUP BY student_id
ORDER BY AVG(mark) DESC, student_name;