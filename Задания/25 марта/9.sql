--9
SELECT DISTINCT sabirzhan_user.last_name, sabirzhan_user.first_name, sabirzhan_user.patronomic
FROM sabirzhan_teacher INNER JOIN sabirzhan_otdel ON sabirzhan_teacher.otdel_id = sabirzhan_otdel.otdel_id
                      INNER JOIN sabirzhan_special ON sabirzhan_special.otdel_id = sabirzhan_otdel.otdel_id
                      INNER JOIN sabirzhan_user ON sabirzhan_teacher.user_id = sabirzhan_user.User_id
                      INNER JOIN sabirzhan_course ON sabirzhan_course.special_id = sabirzhan_special.special_id
WHERE sabirzhan_course.special_id 