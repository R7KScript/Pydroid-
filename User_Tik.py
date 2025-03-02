import os
import requests
import threading
import random
code = 'mortada'
import datetime
now = datetime.datetime.now()
ta = now.year
bu = now.month
ha = now.day
ho = now.hour
hs = now.minute

token = input(' Token : ')
iD = input(' id :')
os.system('clear')


def AA(user):
    try:
        headers = {
            "Host": "www.tiktok.com",
            "sec-ch-ua": "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"99\", \"Google Chrome\";v=\"99\"",
            "sec-ch-ua-mobile": "?1",
            "sec-ch-ua-platform": "\"Android\"",
            "upgrade-insecure-requests": "1",
            "user-agent": "Mozilla/5.0 (Linux; Android 8.0.0; Plume L2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 Mobile Safari/537.36",
            "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
            "sec-fetch-site": "none",
            "sec-fetch-mode": "navigate",
            "sec-fetch-user": "?1",
            "sec-fetch-dest": "document",
            "accept-language": "en-US,en;q=0.9,ar-DZ;q=0.8,ar;q=0.7,fr;q=0.6,hu;q=0.5,zh-CN;q=0.4,zh;q=0.3"
        }
        
        response = requests.get(f'https://www.tiktok.com/@{user}', headers=headers)
        tikinfo = response.text
        getting = tikinfo.split('webapp.user-detail"')[1].split('"RecommendUserList"')[0]
        user_id = getting.split('id":"')[1].split('",')[0]
        followers = getting.split('followerCount":')[1].split(',"')[0]
        following = getting.split('followingCount":')[1].split(',"')[0]
        print("bad user : {user}")
    except (KeyError, IndexError):
        print("good user : {user}")
        tlg = f'''
        user : {user}
        
my : @meesiv
        
@python2022 
@meesi_meesi
'''
        requests.post(f"https://api.telegram.org/bot{token}/sendMessage?chat_id={iD}&text="+str(tlg))
    except requests.exceptions.ConnectionError:
        print("ERROR")

def python():
    while True:
        v5 = ''.join(random.choice('qwertyuiopasdfghjklzxcvbnm') for _ in range(1))
        v6 = ''.join(random.choice('qwertyuiopasdfghjklzx1234567890cvbnm') for _ in range(1))
        v7 = ''.join(random.choice('qwertyuiopasdfghjklzxcvbnm') for _ in range(1))
        v8 = ''.join(random.choice('qwertyuiopasdfghjk1234567890lzxcvbnm') for _ in range(1))
                  
        hh = v5 + '_' + v6 + '_' + v7
        ll = v5 + '_' + v7 + '_' + v8
        qq = v5 + v5 + v5 + v5 +v6
        ii = v5 + v6 + v6 + v5 + v5 + v5
        PYTHON = [hh,ll,qq,ii]
        user = random.choice(PYTHON)
        AA(user)

Threads = []
for _ in range(2):
    t = threading.Thread(target=python)
    t.start()
    Threads.append(t)

for thread in Threads:
    thread.join()
