# Creative Strategies for GitHub

## Boston Day of Data 2026

Welcome! This guide is for database professionals who want to explore how GitHub can support everyday data work, from tracking a schema change to documenting and reviewing a release.

## Start here

No setup is needed to follow the tour:

1. Open this repository on GitHub and read this guide.
2. Select **Issues**, **Pull requests**, and **Actions** to see how work can be planned, reviewed, and automated.
3. Try the demo flow below, or follow along as it is presented.

Some features depend on repository settings or your access level. If a feature is not enabled here, use the examples as ideas for your own repository.

## A quick database change demo

Imagine the team needs to add a `status` column to a customer table:

1. **Plan it:** Create an issue describing the change, its impact, and how to test it.
2. **Work safely:** Create a branch for the change. Add a migration script, a rollback plan, and any needed tests or documentation.
3. **Review it:** Open a pull request, link the issue, and ask teammates to check compatibility, data impact, and deployment order.
4. **Automate checks:** Use Actions to run relevant checks, such as SQL linting or migration tests.
5. **Track and share:** Update a GitHub Project if the team uses one, then document decisions for the next release.

This example is a walkthrough, not a database deployment. Review scripts carefully and never run demo SQL against production.

## Features to explore

| GitHub feature | How database teams can use it |
| --- | --- |
| **Issues** | Track schema changes, data quality work, incidents, and technical debt. |
| **Projects** | Organize database work by priority, owner, or release. |
| **Branches and pull requests** | Propose and review migrations, queries, configuration, and documentation before merging. |
| **Actions** | Automate checks such as SQL linting, tests, and migration validation. |
| **Discussions and wiki** | Share design decisions, operating procedures, and team knowledge. |
| **History and insights** | See how files changed over time and understand a project's activity. |
| **Security features** | Help identify exposed secrets and vulnerable dependencies. Never commit credentials or real customer data. |

Look for these areas in the repository's GitHub navigation. Availability varies by repository configuration.

## Take the ideas back to your team

- Keep SQL changes, review notes, and release documentation together.
- Make changes in branches and get another set of eyes before merging.
- Automate repeatable checks so reviewers can focus on correctness and impact.
- Use issues and projects to make database work visible to the wider team.
- Keep examples safe: use synthetic data and never publish credentials or production data.
