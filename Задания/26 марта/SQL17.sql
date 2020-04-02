SELECT sabirzhan_user.user_id, sabirzhan_user.last_name, sabirzhan_user.first_name, sabirzhan_otdel.name
FROM sabirzhan_user
INNER JOIN sabirzhan_teacher ON sabirzhan_teacher.user_id = sabirzhan_user.user_id
INNER JOIN sabirzhan_otdel ON sabirzhan_teacher.otdel_id = sabirzhan_otdel.otdel_id
INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.user_id = sabirzhan_teacher.user_id
INNER JOIN sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id = sabirzhan_graduate.graduate_id
INNER JOIN sabirzhan_day ON sabirzhan_graduate_time.day_id = sabirzhan_day.day_id AND sabirzhan_day.name = 'Суббота'