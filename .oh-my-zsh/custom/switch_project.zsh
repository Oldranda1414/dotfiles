#!/bin/zsh

# This file contains a bash function to switch to a given project directory
# The script takes as optional arguments the name of the project to switch to

switch_project(){

  # Define project names and their directories
  declare -A projects
  projects=(
      ["ds"]="$HOME/Uni/ds/progetto/flpp2p"
      ["web"]="$HOME/Uni/web2lavendetta/ASW-project"
  )

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

  # If a project name is provided as an argument go to requested project folder
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

