# Pull Request on VSCode

**abbreviations**

- pull request: pr
- VSCode: vsc
- GitHub: gh

## Steps

0. download vsc

1. in vsc, sign in GitHub

   ![](figs/vsc/01_signin.png)

2. click **clone repo** in welcome page

   ![](figs/vsc/02_clone.png)

3. select your repo, here we use GitCube

   ![](figs/vsc/03_select_repo.png)

4. create new branch

   ![](figs/vsc/04_create_new_branch.png)

   - on bottom left of vsc, you can see we are on `main`
   - click on branch button, select **create new branch from**

5. select from `origin/main`, now branch button should show your branch

   ![](figs/vsc/05_from_origin_main.png)

6. add

   ![](figs/vsc/06_git_changes.png)

   - after doing changes, you can see them in git pane
   - hover to **Changes**, click ➕ button, this is `git add` all
   - can also hover on individual file, ➕ and ➖ to toggle between **Changes** and **Staged Changes**

7. commit

   ![](figs/vsc/07_git_add.png)

   - click **Commit** ✅ will `git commit` **Staged Changes**
   - files in **Changes** won't be in commit

8. write a short commit message, then click **Commit**

   ![](figs/vsc/08_git_commit.png)

9. push

   - the 1st time you push, you'll see **Publish Branch**

     ![](figs/vsc/09_publish_branch.png)

   - after the 1st time, you'll click `...`, select **Push**

     ![](figs/vsc/09_push.png)

10. go to gh, now you can do a pr, select **Compare & pull request**

    ![](figs/vsc/10_open_pr.png)

11. write a pr desc, then click **Create pull request**

    ![](figs/vsc/11_pr_desc.png)

12. squash merge

    ![](figs/vsc/12_squash_merge.png)

    - we'll cover this topic in the future: you need to pass your code review, and status checks (if there are any)
    - here in GitCube we only allow squash merge, but in other repos you might see merge as default
    - finally, click **Squash and merge**

13. merged

    ![](figs/vsc/13_merged.png)

    - now pr is merged, don't click delete
    - we'll cover this topic in the future: **Delete branch** is for feature branches

14. on gh main page, you can see pr `#`

    ![](figs/vsc/14_main_updated.png)

15. on gh branches page, we need to fix commits ahead of main

    ![](figs/vsc/15_ahead.png)

16. pull main

    ![](figs/vsc/16_pull_main.png)

    - in vsc, switch branch to main, and click **Sync Changes**
    - this pulls newest changes from `origin/main`, `git pull`

17. switch to your branch

    ![](figs/vsc/17_checkout_branch.png)

18. this will reset the count

    ![](figs/vsc/18_git_reset.png)

```shell
git reset --hard main
git push --force-with-lease
```

confirm your branch is correct by checking pr `#`

19. on gh branches page, you should see your branch and `main` are the same

![](figs/vsc/19_synced.png)

## Now you've opened your 1st pr!
