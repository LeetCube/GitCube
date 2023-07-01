# GitHub Codespaces on VSCode

**abbreviations**

-   VSCode: vsc
-   GitHub: gh
-   GitHub Codespaces: codespaces

## Steps

0. What are codespaces?

-   [codespaces official](https://github.com/features/codespaces)

![](figs/vsc/00_intro.png)

> GitHub Codespaces run on a variety of **VM-based** compute options hosted by GitHub.com, which you can configure from **2 core machines up to 32 core machines**. You can **connect** to your codespaces **from the browser or locally using an IDE** like Visual Studio Code or IntelliJ.
>
> From codespaces official

-   codespace is a cloud dev environment

    -   codespace is remote
    -   your machine is local

-   if you are familiar with [Amazon EC2](https://aws.amazon.com/ec2/), codespace is similar

    -   you can create one or multiple codespaces
    -   specify how many cores
    -   start a codespace when you use it
    -   stop a codespace when you are done

-   codespace uses linux VM, which comes with bash shell

    -   if you are using Windows, not only is the set up process for common tools such as `make` very difficult to follow, but also the set up is often unsuccessful with strange errors
    -   codespace has common tools already set up, so you can start calling `make` and others in the shell

    ![](figs/vsc/00_bash.png)

-   download [vsc](https://code.visualstudio.com/)

1. billing

![](figs/vsc/01_core_hrs.png)

![](figs/vsc/01_hrs.png)

-   gh offers free 120 **core hours** / month, which is **not** the same as 120 **hours** / month
-   let $c$ rep. core, and $h$ rep. hrs
-   $120 ch = 1 c \cdot 120 h$, however, there's no 1 core machine
-   $\cfrac{120 ch}{2c} = 60h$, $\cfrac{120 ch}{4c} = 30h$, $\cfrac{120 ch}{8c} = 15h$
-   we have at most free 60 hours / month
-   we'll discuss spending limit later, once we have created a codespace

2. codespace settings

-   in gh settings, click codespaces

![](figs/vsc/02_settings.png)

-   update your trusted repos

![](figs/vsc/02_repo.png)

-   select your favourite editor
-   your codespace will stop after idle timeout, use a small value here

![](figs/vsc/02_editor.png)

3. download codespaces extension in vsc

![](figs/vsc/03_ext.png)

4. create a new codespace

-   go to [codespace](https://github.com/codespaces), also bookmark this
-   click **New codespace**
    ![](figs/vsc/04_new.png)

-   select your repo and branch, and you should select the region closest to you
-   click **Create codespace**

![](figs/vsc/04_create.png)

-   once you are inside, the remote button at bottom left should say **Codespaces**

![](figs/vsc/04_inside.png)

5. this flow chart on stages will be our helpful guide

![](figs/vsc/05_stages.png)

-   is running?: means whether codespace is running or not
-   is connected?: means whether we are connected to codespace
-   there are 3 scenarios
    -   I've used traffic light colours 🟥 🟨 🟩
    -   not running + connected does not exist
-   billing
    -   you are billed when codespace is running 🟩 🟨, regardless whether you are connected to it
    -   you aren't billed when codespace is not running 🟥

6. moving between stages

-   clicking the remote button gives us diff options, depends whether we are in codespace or not
-   **in codespace**, we can click
    -   🟥 **Stop Current Codespace**: stop
    -   🟨 **Close Remote Connection**: disconnect
    -   🟩 **Connect to Codespace**: connect to _another_ codespace, also starts it

![](figs/vsc/06_go_out.png)

-   **in local**, we can click
    -   🟩 **Connect to Codespace**: connect to codespace, also starts it

![](figs/vsc/06_go_in.png)

    -   you can select which codespace to connect to

![](figs/vsc/06_repo.png)

7. gh shows whether codespace is running or not

-   running

![](figs/vsc/07_active.png)

-   not running

![](figs/vsc/07_not_active.png)

8. we can also start / stop codespacees on gh

-   start 🟨, then vsc connects 🟩

![](figs/vsc/08_gh_start.png)

-   stop 🟥

![](figs/vsc/08_gh_stop.png)

9. spending limit

-   if we don't add payment info
    -   gh will auto stop after free 120 **core hrs** / month
    -   spending limit is 0

![](figs/vsc/09_billing.png)

-   if we add payment info

    -   we can set up a spending limit

-   I suggest code locally, and only use codespace to run bash shell, or as a clean environment to do testing

## Now you have created your first codespace!
