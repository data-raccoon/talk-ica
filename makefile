all: talk_main.slides.html subtalks/talk_python.slides.html subtalks/talk_R.slides.html

%.slides.html: %.ipynb
	jupyter nbconvert '$<' --to slides

serve_eng: talk_main_eng.ipynb subtalks/talk_python.slides.html subtalks/talk_R.slides.html
	mv talk_python* talk_R* subtalks
	jupyter nbconvert '$<' --to slides --post serve

serve: talk_main.ipynb subtalks/talk_python.slides.html subtalks/talk_R.slides.html
	mv talk_python* talk_R* subtalks
	jupyter nbconvert '$<' --to slides --post serve

clean:
	rm *.html
	rm subtalks/*.html



