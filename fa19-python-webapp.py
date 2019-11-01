from flask import Flask, render_template, flash, redirect
import requests
import json
from forms import LoginForm

app = Flask(__name__)
app.config.from_object(__name__)
app.config['SECRET_KEY'] = '7d441f27d441f27567d441f2b6176a'


@app.route('/')
@app.route('/current', methods=['GET', 'POST'])
def index():
	form = LoginForm()
	if form.validate_on_submit():
		return redirect('/{}'.format(form.cityname.data))
	return render_template('home.html',form=form)

@app.route('/search_post', methods=['GET', 'POST'])
def proxy():
	form = LoginForm()
	api = 'http://api.openweathermap.org/data/2.5/weather?q='
	api_key = '*************************'
	data = (requests.get('{}{}{}'.format(api,form.cityname.data,api_key))).json()
	return data

if __name__ == '__main__':
	app.run(port=8080, host='0.0.0.0')