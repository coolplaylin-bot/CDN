from time import sleep
import requests, random, pathlib

apis = ["https://api.gumengya.com/Api/DmImgS?format=image", "https://api.gumengya.com/Api/FjImg?format=image"]
PATH = pathlib.Path(__file__).parents[1] / "photo.png"
print(f"We will choose 1 url to fetch new photo and write it to {PATH}")
print("The progress will be continued in 5s")
sleep(5)
url = apis[random.randint(0, len(apis)-1)]
print(f"The {url} has been chosen, We're going to fetch photo from that, ")
print("The progress will be continued in 3s")
sleep(3)
response = requests.get(url)

print(f"We have got the response, We're going to write-in")
with open(PATH, "wb+") as f:
    f.write(response.content)
print("The progress will be continued in 10s")
sleep(10)
print(f"The data has been written")