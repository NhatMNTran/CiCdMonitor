# GitHub CI/CD Pipeline Monitor (Ruby)

A lightweight Ruby web application that monitors GitHub Actions workflow runs for a repository and displays real-time CI/CD pipeline status in a simple dashboard.

Built using Ruby and the Sinatra web framework with the GitHub API via Octokit.

---

# Features

* View latest GitHub Actions workflow runs
* Displays:

  * Workflow name
  * Status (queued, in progress, completed)
  * Conclusion (success, failure, cancelled)
  * Branch
  * Commit SHA
  * Triggered user
  * Last updated time
* Clickable link to GitHub Actions run
* Simple web dashboard UI

---

# Tech Stack

* Ruby
* ERB templates (Ruby HTML rendering)
* HTML/CSS frontend
* GitHub REST API

---

# Setup Instructions

## 1. Install Ruby

## 2. Install dependencies

From project root:

```bash
bundle install
```

If Bundler is missing:

```bash
gem install bundler
```

---

## 3. Configure GitHub Token

Create a GitHub Personal Access Token:

* repo
* workflow
* read permissions

Then create `.env`:

```env
GITHUB_TOKEN=your_token_here
GITHUB_OWNER=your_github_username_or_org
GITHUB_REPO=your_repo_name
```

---

## 4. Run the application

```bash
ruby app.rb
```

Then open:

```
http://localhost:4567
```

---

# GitHub API Integration

This project uses the GitHub Actions endpoint:

```
/repos/{owner}/{repo}/actions/runs
```

It fetches workflow run metadata and displays it in the dashboard.

---

# License

MIT License
