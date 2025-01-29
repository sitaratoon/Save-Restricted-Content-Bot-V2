# devgagan
# Note if you are trying to deploy on vps then directly fill values in ("")

from os import getenv

API_ID = int(getenv("API_ID", "18946488"))
API_HASH = getenv("API_HASH", "c163d4e28e63196c3806cf3b9b2885de")
BOT_TOKEN = getenv("BOT_TOKEN", "")
OWNER_ID = list(map(int, getenv("OWNER_ID", "6692613520").split()))
MONGO_DB = getenv("MONGO_DB", "mongodb+srv://sitaratoons:sitaratoons@cluster0.98nq3.mongodb.net/?retryWrites=true&w=majority")
LOG_GROUP = getenv("LOG_GROUP", "-4539215927")
CHANNEL_ID = int(getenv("CHANNEL_ID", "-1002276497875"))
FREEMIUM_LIMIT = int(getenv("FREEMIUM_LIMIT", "0"))
PREMIUM_LIMIT = int(getenv("PREMIUM_LIMIT", "500"))
WEBSITE_URL = getenv("WEBSITE_URL", "speedlinkurl.com")
AD_API = getenv("AD_API", "7c5a3e107946472ba83d3154fe051905e7943129")
STRING = getenv("STRING", None)
YT_COOKIES = getenv("YT_COOKIES", None)
INSTA_COOKIES = getenv("INSTA_COOKIES", None)
