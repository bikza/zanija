SELECT sabirzhan_special.name
FROM sabirzhan_special
INNER JOIN sabirzhan_course ON sabirzhan_course.special_id = sabirzhan_special.special_id
INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.course_id = sabirzhan_course.course_id
INNER JOIN sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id = sabirzhan_graduate.graduate_id
INNER JOIN sabirzhan_day ON sabirzhan_graduate_time.day_id = sabirzhan_day.day_id AND sabirzhan_day.name = 'Вторник'