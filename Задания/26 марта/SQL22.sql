SELECT sabirzhan_special.* FROM sabirzhan_special
INNER JOIN sabirzhan_course ON sabirzhan_course.special_id = sabirzhan_special.special_id
INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.course_id = sabirzhan_course.course_id
INNER JOIN sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id = sabirzhan_graduate.graduate_id
LEFT JOIN sabirzhan_day ON (sabirzhan_graduate_time.day_id = sabirzhan_day.day_id)
LEFT JOIN sabirzhan_lesson_num ON (sabirzhan_graduate_time.lesson_num_id = sabirzhan_lesson_num.lesson_num_id)
WHERE sabirzhan_lesson_num.time_lesson BETWEEN '14:00:00' and '18:00:00' AND (sabirzhan_day.name = 'Четверг' OR sabirzhan_day.name = 'Суббота') AND sabirzhan_day.day_id IS NULL AND sabirzhan_lesson_num.lesson_num_id IS NULL