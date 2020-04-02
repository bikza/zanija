SELECT sabirzhan_user.last_name, sabirzhan_user.first_name, sabirzhan_user.patronomic, sabirzhan_otdel.name, sabirzhan_gender.name
FROM sabirzhan_teacher INNER JOIN sabirzhan_otdel ON sabirzhan_teacher.otdel_id = sabirzhan_otdel.otdel_id
                       INNER JOIN sabirzhan_user ON sabirzhan_teacher.user_id = sabirzhan_user.User_id
                       INNER JOIN sabirzhan_gender ON sabirzhan_user.gender_id = sabirzhan_gender.gender_id