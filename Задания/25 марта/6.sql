--6
SELECT sabirzhan_user.last_name, sabirzhan_user.first_name, sabirzhan_user.patronomic, sabirzhan_course.name, sabirzhan_course.hours, sabirzhan_gruppa.name
FROM sabirzhan_teacher INNER JOIN sabirzhan_user ON sabirzhan_teacher.user_id = sabirzhan_user.User_id
                      INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.user_id = sabirzhan_teacher.user_id
                      INNER JOIN sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id = sabirzhan_graduate.graduate_id
                      INNER JOIN sabirzhan_lesson_num ON sabirzhan_graduate_time.lesson_num_id = sabirzhan_lesson_num.lesson_num_id
                      INNER JOIN sabirzhan_course ON sabirzhan_graduate.course_id = sabirzhan_course.course_id
                      INNER JOIN sabirzhan_gruppa ON sabirzhan_graduate.gruppa_id = sabirzhan_gruppa.gruppa_id
WHERE sabirzhan_lesson_num.time_lesson between '08:30:00' AND '15:00:00'