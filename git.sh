#!/bin/bash
#
#
# g rebase # Rebasing with default branch
# g push # Push Commits to Git branch
#

DEFAULT_BRANCH_NAME=develop

if [[ $1 == "rebase" ]];then
	echo "Rebasing with develop branch ..."
	git pull origin ${DEFAULT_BRANCH_NAME}
	git fetch --all
	echo "Task Completed."
elif [[ $1 == "push" ]];then
	echo "Collecting all commits on the current branch..."
	git add -A
	echo "Put the commit message:"
	read commit_message
	git commit -m '$commit_message'
	git_branch=$(git rev-parse --abbrev-ref HEAD)
	echo "Pushing your changes to ${git_branch}."
	git push origin $git_branch
	rm 1
	echo "Task Completed."
else
	echo "Command Not Found"
	exit 1
fi

