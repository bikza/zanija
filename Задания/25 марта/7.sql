--7
SELECT sabirzhan_otdel.name, COUNT(sabirzhan_otdel.name)
FROM sabirzhan_student INNER JOIN sabirzhan_user ON sabirzhan_student.user_id = sabirzhan_user.User_id
                       INNER JOIN sabirzhan_gruppa ON sabirzhan_student.gruppa_id = sabirzhan_gruppa.gruppa_id
                       INNER JOIN sabirzhan_special ON sabirzhan_gruppa.special_id = sabirzhan_special.special_id
                       INNER JOIN sabirzhan_otdel ON sabirzhan_special.otdel_id = sabirzhan_otdel.otdel_id
GROUP BY sabirzhan_otdel.name
         