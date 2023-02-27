-- Lists all shows without the comedy genre in the database hbtn_0d_tvshows.
SELECT DISTINCT `title`
  FROM `tv_shows` AS t
       LEFT JOIN `tv_show_genres` AS ts
       ON ts.`show_id` = t.`id`
       LEFT JOIN `tv_genres` AS tg
       ON tg.`id` = ts.`genre_id`
       WHERE t.`title` NOT IN
             (SELECT `title`
                FROM `tv_shows` AS t
	             INNER JOIN `tv_show_genres` AS ts
		     ON ts.`show_id` = t.`id`
		     INNER JOIN `tv_genres` AS tg
		     ON tg.`id` = ts.`genre_id`
		     WHERE tg.`name` = "Comedy")
 ORDER BY `title`;
