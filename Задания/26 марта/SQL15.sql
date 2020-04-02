SELECT sabirzhan_day.*
FROM sabirzhan_day
LEFT JOIN sabirzhan_graduate_time ON (sabirzhan_day.day_id = sabirzhan_graduate_time.day_id)
WHERE sabirzhan_graduate_time.graduate_time_id IS NULL