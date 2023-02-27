-- Lists all shows contained in the database hbtn_0d_tvshows.
SELECT s.`title`, m.`genre_id` FROM `tv_shows` AS s LEFT JOIN `tv_show_genres` AS m ON s.`id` = m.`show_id` ORDER BY s.`title`, m.`genre_id`;
