--11
SELECT sabirzhan_special.name
FROM sabirzhan_course
  INNER JOIN sabirzhan_special ON sabirzhan_course.special_id = sabirzhan_special.special_id
  INNER JOIN sabirzhan_graduate ON sabirzhan_graduate.course_id = sabirzhan_course.course_id
WHERE sabirzhan_graduate.course_id IS NULL