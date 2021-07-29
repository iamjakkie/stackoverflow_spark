

def download_file(url):
    async def fetch_file():
        filename = url.split("/")[-1].split(".")[0]
        async with aiohttp.ClientSession() as session:
            