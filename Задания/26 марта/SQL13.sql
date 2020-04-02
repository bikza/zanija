SELECT sabirzhan_course.course_id, sabirzhan_course.name
FROM sabirzhan_course
INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.course_id=sabirzhan_course.course_id
INNER JOIN sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id=sabirzhan_graduate.graduate_id
INNER JOIN sabirzhan_lesson_num ON sabirzhan_graduate_time.lesson_num_id=sabirzhan_lesson_num.lesson_num_id AND sabirzhan_lesson_num.time_lesson BETWEEN '12:30:00' AND '18:30:00'