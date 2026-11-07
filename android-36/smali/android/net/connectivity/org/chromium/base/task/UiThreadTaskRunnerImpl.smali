.class public Landroid/net/connectivity/org/chromium/base/task/UiThreadTaskRunnerImpl;
.super Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
.source "UiThreadTaskRunnerImpl.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/task/SequencedTaskRunner;


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base"
.end annotation


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "traits"    # I

    .line 18
    const-string v0, "UiThreadTaskRunner"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;-><init>(ILjava/lang/String;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected blacklist schedulePreNativeDelayedTask(Ljava/lang/Runnable;J)Z
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 28
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist schedulePreNativeTask()V
    .registers 3

    .line 23
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/UiThreadTaskRunnerImpl;->mRunPreNativeTaskClosure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void
.end method
