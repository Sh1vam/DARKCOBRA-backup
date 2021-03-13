import asyncio
try:
    cmd = ["git clone https://github.com/Sh1vam/DARKCOBRA /root/userbot && cd /root/userbot && pip3 install -r requirements.txt && python3 -m userbot"]
    process = await asyncio.create_subprocess_exec(
            *cmd, stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE
        )
    stdout, stderr = await process.communicate()
    er = stderr.decode().strip()
    es = stdout.decode().strip()
    if es:
        print(es)
except Exception as e:
    print(str(e))
