-- Lists all genres of the database hbtn_0d_tvshows
SELECT DISTINCT `name`
  FROM `tv_genres` AS tg
       INNER JOIN `tv_show_genres` AS ts
       ON tg.`id` = ts.`genre_id`
       INNER JOIN `tv_shows` AS t
       ON ts.`show_id` = t.`id`
       WHERE tg.`name` NOT IN
             (SELECT `name`
                FROM `tv_genres` AS tg
	             INNER JOIN `tv_show_genres` AS ts
		     ON tg.`id` = ts.`genre_id`
		     INNER JOIN `tv_shows` AS t
		     ON ts.`show_id` = t.`id`
		     WHERE t.`title` = "Dexter")
 ORDER BY tg.`name`;
