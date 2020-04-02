--8
SELECT sabirzhan_gruppa.name, COUNT(sabirzhan_course.course_id)
FROM sabirzhan_gruppa INNER JOIN sabirzhan_special ON sabirzhan_gruppa.special_id = sabirzhan_special.special_id
INNER JOIN sabirzhan_course ON sabirzhan_course.special_id = sabirzhan_special.special_id
  GROUP BY sabirzhan_course.course_id