mkdir newWebsite
mkdir ./newWebsite/html ./newWebsite/pug ./newWebsite/app ./newWebsite/style ./newWebsite/images
mkdir ./newWebsite/pug/parts
touch ./newWebsite/pug/index.pug ./newWebsite/app/app.js ./newWebsite/style/style.scss ./newWebsite/style/_base.scss ./newWebsite/style/_layout.scss ./newWebsite/style/_other.scss ./newWebsite/style/_shame.scss

echo 'include ../bemto/bemto.pug' >> ./newWebsite/pug/index.pug
echo '- set_bemto_settings({ flat_elements: false })' >> ./newWebsite/pug/index.pug
echo 'doctype html' >> ./newWebsite/pug/index.pug
echo 'html(lang="en")' >> ./newWebsite/pug/index.pug
echo '	head' >> ./newWebsite/pug/index.pug
echo '		meta(charset="UTF-8")' >> ./newWebsite/pug/index.pug
echo '		title myWebsite' >> ./newWebsite/pug/index.pug
echo '		link(rel="stylesheet", href="../style/style.css")' >> ./newWebsite/pug/index.pug
echo '		script(src="https://code.jquery.com/jquery-3.3.1.js")' >> ./newWebsite/pug/index.pug
echo '	body' >> ./newWebsite/pug/index.pug
echo '		//- include ./parts/1-container1.pug' >> ./newWebsite/pug/index.pug
echo '		//- include ./parts/2-container2.pug' >> ./newWebsite/pug/index.pug
echo '		script(src="../app/app.js")' >> ./newWebsite/pug/index.pug

echo '@import "base";' >> ./newWebsite/style/style.scss
echo '@import "layout";' >> ./newWebsite/style/style.scss
echo '//@import "1-container1";' >> ./newWebsite/style/style.scss
echo '//@import "2-container2";' >> ./newWebsite/style/style.scss
echo '@import "other";' >> ./newWebsite/style/style.scss
echo '@import "shame";' >> ./newWebsite/style/style.scss

echo '* {' >> ./newWebsite/style/_base.scss
echo '	padding: 0;' >> ./newWebsite/style/_base.scss
echo '	margin: 0;' >> ./newWebsite/style/_base.scss
echo '	box-sizing: border-box;' >> ./newWebsite/style/_base.scss
echo '}' >> ./newWebsite/style/_base.scss
