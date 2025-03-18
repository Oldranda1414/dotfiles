#!/bin/zsh

# This file contains a function to switch to a given project directory
# The script takes as optional arguments the name of the project to switch to
# When the file is sourced it loads a projects file

# Load the projects file
# Modify the following path with the correct path for your projects.zsh file
PROJECTS_FILE="${HOME}/.oh-my-zsh/custom/projects.zsh"

if [[ -f "$PROJECTS_FILE" ]]; then
    source "$PROJECTS_FILE"
else
    echo "Error: Projects file not found: $PROJECTS_FILE"
    return 1
fi

switch_project() {

  # Function to change directory
  change_directory() {
      local project="$1"
      if [[ -n "${projects[$project]}" ]]; then
          cd "${projects[$project]}" || { echo "Failed to change directory."; return 1; }
          echo "Switched to project: $project (${projects[$project]})"
      else
          echo "Invalid project name. Please try again."
          return 1
      fi
  }

  # If a project name is provided as an argument, go to the requested project folder
  if [[ -n "$1" ]]; then
      change_directory "$1"
      return 0
  fi

  # If no argument is provided, list options and ask the user
  echo "Available projects:"
  for project in ${(k)projects}; do
      echo "- $project"
  done

  echo -n "Enter the project name: "
  read -r project_name

  change_directory "$project_name"
}

