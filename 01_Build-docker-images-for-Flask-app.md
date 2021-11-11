# How to build docker images for flask apps
[source](https://www.youtube.com/watch?v=wrMJoKpK2mk)

1. Add basic `index.html` and `app.py` files

`index.html`
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <h1>Hi</h1>
</body>
</html>
```

`app.py`
```python
from flask import Flask, render_template
app = Flask(__name__)
@app.route('/')
def hi():
  return render_template('index.html')
if __name__ == '__main__':
  app.run(debug=True, host='0.0.0.0')
```

2. test by running and going to url
3. write requirements.txt file
4. write docker file below

```docker
# init a base image
FROM python:3.6.1-alpine

# define present working directory
WORKDIR /docker-flask-test

# run pip to install flask app dependencies
RUN pip install -r requirements.txt
```