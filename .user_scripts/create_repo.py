import os
from github import Github
import argparse

# get the name of the current working directory
real_path = os.path.realpath(__file__)  # /home/user/test/my_script.py
dir_path = os.path.dirname(real_path)  # /home/user/test
pwd = os.path.basename(dir_path) # test

parser = argparse.ArgumentParser()
parser.add_argument("-n", "--name")
parser.add_argument("-p", '--private', dest='private', action='store_true')
parser.add_argument("-np",'--no-private', dest='private', action='store_false')
parser.set_defaults(private=False, name=pwd)
args = parser.parse_args()

token = os.environ["GITHUB_TOKEN"] 
github = Github(token)
user = github.get_user()
repo = user.create_repo(name=args.name, private=args.private)
print "Repo created succesfully"
print repo._ssh_url.value
print repo._url.value
if repo.private:
    print "This repo is PRIVATE"
else:
    print "This repo is PUBLIC"
