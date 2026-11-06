'''Task 1: API (GitHub)
    - Use the GitHub API to fetch details of 3 usernames of your choice.
    - Display each user's login and public repository count.
    - Verify that the API response status code is 200 before processing the data.'''

import requests

usernames = ["octocat", "torvalds", "faryal004"]

for username in usernames:

    url = f"https://api.github.com/users/{username}"

    response = requests.get(url)

    if response.status_code == 200:

        data = response.json()

        print("Username:", data["login"])
        print("Public Repositories:", data["public_repos"])
        print("----------------------")

    else:
        print("User not found:", username)