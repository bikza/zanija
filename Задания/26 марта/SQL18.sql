SELECT sabirzhan_user.user_id, sabirzhan_user.last_name, sabirzhan_user.first_name, sabirzhan_gruppa.name, sabirzhan_special.name
FROM sabirzhan_user
INNER JOIN sabirzhan_student ON sabirzhan_student.user_id = sabirzhan_user.user_id
INNER JOIN sabirzhan_gruppa ON sabirzhan_gruppa.gruppa_id = sabirzhan_student.gruppa_id
INNER JOIN sabirzhan_special ON sabirzhan_special.special_id = sabirzhan_gruppa.special_id
INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.gruppa_id = sabirzhan_gruppa.gruppa_id
INNER JOIN sabirzhan_course ON sabirzhan_graduate.course_id = sabirzhan_course.course_id AND sabirzhan_course.hours > '95'