import pathlib
import requests

PATH = pathlib.Path(__file__).parents[1] / "README.md"
word = requests.get("https://v1.hitokoto.cn/", verify=False).json()

with open(PATH, mode="r", encoding="utf-8") as f:
    README = f.readlines()
    README[README.index("```\n")+1] = word["hitokoto"] + f" --{word['from_who']}" + "\n"
    with open(PATH, "w+", encoding="utf-8") as w:
        w.writelines(README)
    
