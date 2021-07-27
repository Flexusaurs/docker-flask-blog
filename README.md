# docker-flask-blog
a small project i made of a flask powered blog running inside an alpine container 


NOTE: please create your own seperate venv to avoid module missing errors


# Commentary and annotation

this is a simple flask powered blog based on a premade bootstrap theme with simple get requests for pages and post for, of course, posts.
the db has been created externally due to issues with my python installation, especially with sqlalchemy, which my venv hates.
the flask webapp handles simple routing between the main pages, and data entry into a SQLITE relative database.
the db (under the column post content) can use html tags in order to format the text and style with many types of headers but please note; inline css was not tested yet.
as of now the whole blog can be deployed and hosted locally, with the included Dockerfile it can be also re-contained as much as you wish.



