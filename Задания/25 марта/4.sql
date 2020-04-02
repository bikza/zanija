--4
SELECT sabirzhan_user.first_name, sabirzhan_user.last_name, sabirzhan_user.patronomic, sabirzhan_gruppa.name  
  FROM sabirzhan_student INNER JOIN sabirzhan_gruppa ON sabirzhan_student.gruppa_id=sabirzhan_gruppa.gruppa_id
      INNER JOIN sabirzhan_special ON sabirzhan_gruppa.special_id = sabirzhan_special.special_id
      INNER JOIN sabirzhan_course ON sabirzhan_course.special_id = sabirzhan_special.special_id
      INNER JOIN sabirzhan_user ON sabirzhan_student.user_id = sabirzhan_user.user_id
      WHERE sabirzhan_course.course_id=4
