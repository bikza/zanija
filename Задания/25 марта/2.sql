--2
SELECT sabirzhan_user.last_name, sabirzhan_user.first_name, sabirzhan_user.patronomic, sabirzhan_gruppa.name, sabirzhan_special.name, sabirzhan_otdel.name
FROM sabirzhan_teacher INNER JOIN sabirzhan_user ON sabirzhan_teacher.user_id = sabirzhan_user.user_id
                       INNER JOIN sabirzhan_otdel ON sabirzhan_teacher.otdel_id = sabirzhan_otdel.otdel_id
                       INNER JOIN sabirzhan_special ON sabirzhan_special.otdel_id = sabirzhan_otdel.otdel_id
                       INNER JOIN sabirzhan_gruppa ON sabirzhan_gruppa.special_id = sabirzhan_special.special_id
WHERE sabirzhan_special.special_id=1