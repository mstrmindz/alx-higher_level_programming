-- Lists all comedy shows in the database hbtn_0d_tvshows.
SELECT t.`title` FROM `tv_shows` AS t INNER JOIN `tv_show_genres` AS ts ON t.`id` = ts.`show_id` INNER JOIN `tv_genres` AS tg ON tg.`id` = ts.`genre_id` WHERE tg.`name` = "Comedy" ORDER BY t.`title`;
