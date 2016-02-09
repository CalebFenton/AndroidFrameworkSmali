.class public Landroid/app/ActivityManager$AppTask;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTask"
.end annotation


# instance fields
.field private mAppTaskImpl:Landroid/app/IAppTask;


# direct methods
.method public constructor <init>(Landroid/app/IAppTask;)V
    .locals 0
    .param p1, "task"    # Landroid/app/IAppTask;

    #@0
    .prologue
    .line 2906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2907
    iput-object p1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    #@5
    .line 2906
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .locals 3

    #@0
    .prologue
    .line 2915
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    #@2
    invoke-interface {v1}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2913
    :goto_0
    return-void

    #@6
    .line 2916
    :catch_0
    move-exception v0

    #@7
    .line 2917
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/ActivityManager;->-get0()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "Invalid AppTask"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 3

    #@0
    .prologue
    .line 2928
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    #@2
    invoke-interface {v1}, Landroid/app/IAppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 2929
    :catch_0
    move-exception v0

    #@8
    .line 2930
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/ActivityManager;->-get0()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "Invalid AppTask"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 2931
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public moveToFront()V
    .locals 3

    #@0
    .prologue
    .line 2943
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    #@2
    invoke-interface {v1}, Landroid/app/IAppTask;->moveToFront()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2941
    :goto_0
    return-void

    #@6
    .line 2944
    :catch_0
    move-exception v0

    #@7
    .line 2945
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/ActivityManager;->-get0()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "Invalid AppTask"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public setExcludeFromRecents(Z)V
    .locals 3
    .param p1, "exclude"    # Z

    #@0
    .prologue
    .line 2985
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IAppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2983
    :goto_0
    return-void

    #@6
    .line 2986
    :catch_0
    move-exception v0

    #@7
    .line 2987
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/ActivityManager;->-get0()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "Invalid AppTask"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2971
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@3
    move-result-object v6

    #@4
    .line 2972
    .local v6, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@7
    move-result-object v0

    #@8
    .line 2973
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    #@e
    move-object v1, p1

    #@f
    move-object v4, p2

    #@10
    move-object v5, p3

    #@11
    .line 2972
    invoke-virtual/range {v0 .. v5}, Landroid/app/Instrumentation;->execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V

    #@14
    .line 2970
    return-void
.end method
