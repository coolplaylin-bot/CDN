import requests, random, pathlib

apis = ["https://api.gumengya.com/Api/DmImgS?format=image", "https://api.gumengya.com/Api/FjImg?format=image"]
print(f"We will choose 1 url to fetch new photo")
url = apis[random.randint(0, len(apis)-1)]

print(f"The {url} has been chosen, We're going to fetch photo from that")

PATH = pathlib.Path(__file__).parents[1] / "photo.png"
response = requests.get(url)

print(f"We have got the response, We're going to write-in")
with open(PATH, "wb+") as f:
    f.write(response.content)
print(f"The data has been written")