USE quan_ly_sinh_vien; 
SELECT *
FROM student
WHERE `status` = true;
SELECT *
FROM Subject
WHERE credit < 10;
SELECT s.student_id, s.student_name, c.class_name
FROM student S join class C on s.class_id =c.class_id
WHERE c.class_name='A1';
SELECT s.student_id, s.student_name, c.class_name
FROM student S join Class C on s.class_id = c.class_id
WHERE c.class_name = 'A1';
SELECT s.student_id, s.student_name, Sub.sub_name, m.mark
FROM Student S join Mark M on S.student_id = M.student_id join Subject Sub on M.sub_id = Sub.sub_id;
SELECT S.student_id, S.student_name, Sub.sub_name, M.Mark
FROM Student S join mark M on S.student_id = M.student_id join Subject Sub on M.sub_id = Sub.sub_id
WHERE Sub.sub_name = 'CF';