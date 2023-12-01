
# Advent of Code 2023 Solutions in Elixir

## Overview
This repository contains my solutions for the Advent of Code 2023, each implemented as a standalone Elixir project.

## Installation of Elixir
To run these challenges, Elixir needs to be installed. We recommend using `asdf` for version management.

1. Install `asdf` from [asdf-vm.com](https://asdf-vm.com/) following their installation guide.
2. Add the Elixir plugin:
   ```bash
   asdf plugin-add elixir
   ```
3. Install a specific Elixir version:
   ```bash
   asdf install elixir [version]
   ```
4. Set the Elixir version for your session:
   ```bash
   asdf shell elixir [version]
   ```

Replace `[version]` with the desired Elixir version.

## Repository Structure
- Each day's solution is in its own folder, e.g., `aoc1` for the first day.
- Inside each folder is a complete Elixir project for that day's challenge.

## Running a Challenge
Navigate to a challenge's directory (`cd aoc1` for Day 1) and run 
```bash
mix run lib/aoc1 input
```

## Contribution
Feedback and collaboration are appreciated
