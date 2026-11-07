.class public abstract Landroid/app/ClientTransactionHandler;
.super Ljava/lang/Object;
.source "ClientTransactionHandler.java"


# instance fields
.field private blacklist mIsExecutingLocalTransaction:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist countLaunchingActivities(I)V
.end method

.method public greylist-max-o executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 4
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    .line 68
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1, p0}, Landroid/app/servertransaction/ClientTransaction;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/ClientTransactionHandler;->getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 71
    iput-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    .line 72
    nop

    .line 73
    return-void

    .line 71
    :catchall_12
    move-exception v1

    iput-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    .line 72
    throw v1
.end method

.method public abstract blacklist getActivitiesToBeDestroyed()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
.end method

.method public abstract greylist-max-o getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
.end method

.method public abstract blacklist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
.end method

.method abstract greylist-max-o getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
.end method

.method public abstract blacklist handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
.end method

.method public abstract blacklist handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
.end method

.method public abstract blacklist handleConfigurationChanged(Landroid/content/res/Configuration;I)V
.end method

.method public abstract blacklist handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V
.end method

.method public abstract blacklist handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;
.end method

.method public abstract blacklist handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
.end method

.method public abstract blacklist handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract blacklist handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V
.end method

.method public abstract greylist-max-o handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract blacklist handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V
.end method

.method public abstract blacklist handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract blacklist handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
.end method

.method public abstract blacklist handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
.end method

.method public abstract blacklist handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
.end method

.method public abstract blacklist handleWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V
.end method

.method public abstract blacklist handleWindowContextWindowRemoval(Landroid/os/IBinder;)V
.end method

.method public blacklist isExecutingLocalTransaction()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    return v0
.end method

.method public abstract blacklist isHandleSplashScreenExit(Landroid/os/IBinder;)Z
.end method

.method public abstract blacklist performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
.end method

.method public abstract blacklist prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z",
            "Landroid/window/ActivityWindowInfo;",
            ")",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation
.end method

.method public abstract blacklist reportRefresh(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract blacklist reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract greylist-max-o reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method greylist-max-o scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 3
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 56
    invoke-virtual {p1, p0}, Landroid/app/servertransaction/ClientTransaction;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 57
    const/16 v0, 0x9f

    invoke-virtual {p0, v0, p1}, Landroid/app/ClientTransactionHandler;->sendMessage(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method abstract greylist-max-o sendMessage(ILjava/lang/Object;)V
.end method

.method public abstract blacklist updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
.end method

.method public abstract greylist-max-o updatePendingConfiguration(Landroid/content/res/Configuration;)V
.end method

.method public abstract greylist-max-o updateProcessState(IZ)V
.end method
