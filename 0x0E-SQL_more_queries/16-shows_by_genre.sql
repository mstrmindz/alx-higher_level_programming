-- Lists all shows and genres linked to the show from the database hbtn_0d_tvshows.
SELECT t.`title`, tg.`name` FROM `tv_shows` AS t LEFT JOIN `tv_show_genres` AS ts ON t.`id` = ts.`show_id` LEFT JOIN `tv_genres` AS tg ON ts.`genre_id` = tg.`id` ORDER BY t.`title`, tg.`name`;
