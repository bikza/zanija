--10
SELECT sabirzhan_course.name
FROM sabirzhan_graduate INNER JOIN sabirzhan_course ON sabirzhan_graduate.course_id = sabirzhan_course.course_id
WHERE sabirzhan_course.special_id IS NULL