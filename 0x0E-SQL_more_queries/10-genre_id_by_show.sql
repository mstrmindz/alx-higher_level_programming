-- Lists all shows in hbtn_0d_tvshows that have at least one genre linked.
-- Records are sorted by ascending tv_shows.title and tv_show_genres.genre_id.
SELECT s.`title`, m.`genre_id` FROM `tv_shows` AS s INNER JOIN `tv_show_genres` AS m ON s.`id` = m.`show_id` ORDER BY s.`title`, m.`genre_id`;
