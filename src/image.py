import requests, random, pathlib

apis = ["https://api.gumengya.com/Api/DmImgS?format=image", "https://api.gumengya.com/Api/FjImg?format=image"]
url = apis[random.randint(0, len(apis)-1)]
PATH = pathlib.Path(__file__).parents[1] / "beauty.png"

response = requests.get(url)
with open(PATH, "wb+") as f:
    f.write(response.content)
