# Creative Strategies for GitHub

## What this repo is

This repo is a live demo for the Boston Day of Data talk. It shows how database teams can use GitHub to track work, review database changes, and check SQL before it is merged.

## Demo path

1. Open [Issues](../../issues) and read the slow query report.
2. Open the [Project board](../../projects) and follow the work from Backlog to Done.
3. Open [Pull requests](../../pulls) and review the Orders index change.
4. Open [Actions](../../actions) and see the SQL lint check.
5. Open the [Wiki](../../wiki) for runbooks and team guides.
6. Open a SQL file and use its history or blame view.
7. Visit the Security tab to see GitHub security features.

## Issues

Open the Issues tab to see how a slow query report becomes a tracked task. Use the issue forms to request an index, schema change, or help with a failed job.

## Project board

Open the project board to see work move through Backlog, Ready, In Progress, In Review, and Done. The setup guide lists the fields and steps to create the board.

## Pull requests and code review

Open the Orders index change in Pull requests. Review the query, the index change, the rollback script, and the DBA checklist before approving it.

This task cannot create a second branch or pull request. The index change is included with this demo work. To review it separately, place the index change files on `demo/index-change-orders` and open a pull request into the default branch.

## Actions checks

Open Actions to see SQLFluff check T-SQL files on pull requests. The check reports formatting and parse issues before a change is merged.

## Wiki

Open the Wiki for the ready-to-paste runbooks and team guides. The same pages are in the `wiki` folder in this repo.

## History and blame

Open a SQL file, then select History to see its changes. Use Blame to see which change last touched each line.

## Security features

Open the Security tab to view available security features, such as secret scanning and code scanning. These features depend on the repository plan and settings.

## Safety note

This repo contains sample code only. It has no production data. Do not run demo SQL in production.
