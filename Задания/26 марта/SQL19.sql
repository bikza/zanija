SELECT sabirzhan_course.name, sabirzhan_course.hours, sabirzhan_special.name, sabirzhan_day.name
FROM sabirzhan_otdel
INNER JOIN sabirzhan_special ON sabirzhan_special.otdel_id = sabirzhan_otdel.otdel_id
INNER JOIN sabirzhan_course ON sabirzhan_course.special_id = sabirzhan_special.special_id
INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.course_id = sabirzhan_course.course_id
INNER JOIN sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id = sabirzhan_graduate.graduate_id
INNER JOIN sabirzhan_day ON sabirzhan_graduate_time.day_id = sabirzhan_day.day_id
WHERE sabirzhan_otdel.otdel_id = '2' AND (sabirzhan_day.day_id = '3' OR sabirzhan_day.day_id = '5')