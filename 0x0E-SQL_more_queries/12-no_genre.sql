-- Lists all shows in the database hbtn_0d_tvshows without a genre linked.
SELECT s.`title`, m.`genre_id` FROM `tv_shows` AS s LEFT JOIN `tv_show_genres` AS m ON s.`id` = m.`show_id` WHERE m.`genre_id` IS NULL ORDER BY s.`title`, m.`genre_id`;
