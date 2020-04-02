SELECT sabirzhan_otdel.name
From sabirzhan_otdel
Inner Join sabirzhan_teacher ON sabirzhan_teacher.otdel_id = sabirzhan_otdel.otdel_id
Inner Join sabirzhan_graduate ON sabirzhan_graduate.user_id = sabirzhan_teacher.user_id
Inner Join sabirzhan_graduate_time ON sabirzhan_graduate_time.graduate_id = sabirzhan_graduate.graduate_id
Inner Join sabirzhan_day ON sabirzhan_graduate_time.day_id = sabirzhan_day.day_id AND sabirzhan_day.name = 'Вторник'
Inner Join sabirzhan_lesson_num ON sabirzhan_graduate_time.lesson_num_id = sabirzhan_lesson_num.lesson_num_id AND sabirzhan_lesson_num.time_lesson BETWEEN '09:00:00' AND '12:00:00'