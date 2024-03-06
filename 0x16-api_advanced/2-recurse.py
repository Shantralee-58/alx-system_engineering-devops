#!/usr/bin/python3
"""
python model holds task 2
"""
import requests


def recurse(subreddit, hot_list=[], after=''):
    """
    recursive function that queries the Reddit API and returns a list
    containing the titles of all hot articles for a given subreddit.
    parameters:
    -----------
    subreddit: str, the name of the subreddit to query.
    hot_list: list, a list of all hot articles
    after: str, the name of the last post

    return:
    ----------
    hot_list: a list of all the hot post titles
    """
    url = "https://www.reddit.com/"
    path = f"r/{subreddit}/hot.json?after={after}&count=1"
    headers = {"User-Agent": "ALX/1"}

    res = requests.get(url+path, headers=headers, allow_redirects=False)

    if res.status_code == 200:
        try:
            post = res.json()['data']['children'][0]
            hot_list.append(post['data']['title'])
            after = post['data']['name']
        except Exception as e:
            return None
        post_list = recurse(subreddit, hot_list, after)
        if not post_list and not hot_list:
            return None
        else:
            return hot_list

    else:
        return None
