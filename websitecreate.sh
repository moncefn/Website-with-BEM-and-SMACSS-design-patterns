echo Website name ?
read newWebsite
mkdir $newWebsite
git clone https://github.com/kizu/bemto.git $newWebsite/bemto/
mkdir ./$newWebsite/html ./$newWebsite/pug ./$newWebsite/app ./$newWebsite/style ./$newWebsite/images
mkdir ./$newWebsite/pug/parts
touch ./$newWebsite/pug/index.pug ./$newWebsite/app/app.js ./$newWebsite/style/style.scss ./$newWebsite/style/_base.scss ./$newWebsite/style/_layout.scss ./$newWebsite/style/_other.scss ./$newWebsite/style/_shame.scss

# _base.scss FULL
echo '* {' >> ./$newWebsite/style/_base.scss
echo '	padding: 0;' >> ./$newWebsite/style/_base.scss
echo '	margin: 0;' >> ./$newWebsite/style/_base.scss
echo '	box-sizing: border-box;' >> ./$newWebsite/style/_base.scss
echo '}' >> ./$newWebsite/style/_base.scss

# index.pug BEGINNING
echo 'include ../bemto/bemto.pug' >> ./$newWebsite/pug/index.pug
echo '- set_bemto_settings({ flat_elements: false })' >> ./$newWebsite/pug/index.pug
echo 'doctype html' >> ./$newWebsite/pug/index.pug
echo 'html(lang="en")' >> ./$newWebsite/pug/index.pug
echo '	head' >> ./$newWebsite/pug/index.pug
echo '		meta(charset="UTF-8")' >> ./$newWebsite/pug/index.pug
echo '		title myWebsite' >> ./$newWebsite/pug/index.pug
echo '		link(rel="stylesheet", href="../style/style.css")' >> ./$newWebsite/pug/index.pug
echo '		script(src="https://code.jquery.com/jquery-3.3.1.js")' >> ./$newWebsite/pug/index.pug
echo '	body' >> ./$newWebsite/pug/index.pug

# style.scss BEGINNING
echo '@import "base";' >> ./$newWebsite/style/style.scss
echo '@import "layout";' >> ./$newWebsite/style/style.scss


echo How many containers ?
read numbercontainers
counter=1
while [ $counter -le $numbercontainers ]
do
	echo Container number $counter name :
	read name
	a=$counter
	b="-"
	c=$name
	d=$a$b$c
	touch ./$newWebsite/pug/parts/$d.pug
	touch ./$newWebsite/style/_m$d.scss
	echo '		include ./parts/'$d.pug >> ./$newWebsite/pug/index.pug
	echo '@import "'m$d'";' >> ./$newWebsite/style/style.scss
	((counter++))
done


# index.pug END
echo '		script(src="../app/app.js")' >> ./$newWebsite/pug/index.pug

# style.scss END
echo '@import "other";' >> ./$newWebsite/style/style.scss
echo '@import "shame";' >> ./$newWebsite/style/style.scss

