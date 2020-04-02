SELECT sabirzhan_user.user_id, sabirzhan_user.last_name, sabirzhan_user.first_name
FROM sabirzhan_user
INNER JOIN sabirzhan_student ON sabirzhan_student.user_id = sabirzhan_user.user_id
INNER JOIN sabirzhan_gruppa ON sabirzhan_student.gruppa_id = sabirzhan_gruppa.gruppa_id
INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.gruppa_id = sabirzhan_gruppa.gruppa_id
INNER JOIN sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id = sabirzhan_graduate.graduate_id
INNER JOIN sabirzhan_day ON sabirzhan_graduate_time.day_id = sabirzhan_day.day_id AND sabirzhan_day.name = 'Пятница'