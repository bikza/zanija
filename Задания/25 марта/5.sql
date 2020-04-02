--5
SELECT sabirzhan_user.last_name,  sabirzhan_user.first_name, sabirzhan_user.patronomic, sabirzhan_gruppa.name, sabirzhan_course.name
 FROM sabirzhan_student INNER JOIN sabirzhan_gruppa ON sabirzhan_student.gruppa_id = sabirzhan_gruppa.gruppa_id
                        INNER JOIN sabirzhan_user ON sabirzhan_student.user_id = sabirzhan_user.User_id
                        INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.gruppa_id = sabirzhan_gruppa.gruppa_id
                        INNER JOIN sabirzhan_course ON sabirzhan_graduate.course_id = sabirzhan_course.course_id




  