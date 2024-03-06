#!/usr/bin/python3
"""
model that hold task 1 function top_ten that fitch reddit API
"""
import requests


def top_ten(subreddit):
    """queries the reddit API for the subreddit and find
    its top ten post
    parameter:
    -----------
    subreddit: str, text represents the subreddit title
    """
    url = "https://www.reddit.com/"
    path = "r/{}/hot.json".format(subreddit)
    headers = {"User-Agent": "ALX/1", "Accept": "application/json"}
    posts_titles = []

    if subreddit is None:
        print(None)
        return
    res = requests.get(url+path, headers=headers, allow_redirects=False)

    if res.raise_for_status():
        print(None)
        return
    if res.status_code == 200:
        try:
            post_list = res.json()['data']['children']
            for idx, post in enumerate(post_list):
                if idx >= 10:
                    break
                posts_titles.append(post['data']['title'])
        except Exception as e:
            pass

        if posts_titles:
            for title in posts_titles:
                print(title)
        else:
            print(None)
    else:
        print(None)
