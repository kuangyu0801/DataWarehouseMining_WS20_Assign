/* Q1 */

select title
from movie
where director = 'Steven Spielberg'

/* Q2 */

select distinct year
from movie, rating
where movie.mID = rating.mID and (stars = 4 or stars = 5)
order by year asc

/* Q3 */

select title
from movie
where mid not in (select mid from rating)

/* Q4 */

select name
from reviewer
where rid in (select rid from rating where ratingdate is null)

/* Q5 */

select Reviewer.name, Movie.title, Rating.stars, Rating.ratingDate
from Rating, Reviewer, Movie
where Rating.rid = Reviewer.rid and Rating.mid = Movie.mid
order by Reviewer.name, Movie.title, Rating.stars

/* Q6 */

select name, title
from reviewer, movie
where rid in
(select r2.rid
from rating r1, rating r2
where r1.rid = r2.rid and r1.mid = r2.mid and r1.stars < r2.stars and r1.ratingdate < r2.ratingdate)
and mid in
(select r2.mid
from rating r1, rating r2
where r1.rid = r2.rid and r1.mid = r2.mid and r1.stars < r2.stars and r1.ratingdate < r2.ratingdate)

/* Q7 */
/*ANY and ALL not supported by SQLite*/
select distinct title, r2.stars
from movie, rating r2
where movie.mid = r2.mid and r2.stars in 
(select max(r1.stars) from movie, rating r1 where movie.mid = r1.mid and r2.mid = r1.mid)
order by title asc

/* Q8 */

select title,  max(stars) - min(stars) as spread
from movie, rating
where movie.mid = rating.mid
group by rating.mid
order by spread desc, title asc

/* Q9 */

select avg(oldmovie.oldavg) - avg(newmovie.newavg)
from 
(select avg(stars) as oldavg
from rating r
where r.mid in (select m.mid from movie m where m.year < 1980)
group by mid) oldmovie,
(select r.mid, avg(stars) as newavg
from rating r
where r.mid in (select m.mid from movie m where m.year > 1980)
group by mid) newmovie