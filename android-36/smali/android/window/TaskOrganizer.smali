.class public Landroid/window/TaskOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskOrganizer.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskOrganizer;

.field private final blacklist mTaskOrganizerController:Landroid/window/ITaskOrganizerController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "taskOrganizerController"    # Landroid/window/ITaskOrganizerController;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 54
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 262
    new-instance v0, Landroid/window/TaskOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskOrganizer$1;-><init>(Landroid/window/TaskOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    .line 55
    if-eqz p2, :cond_e

    move-object v0, p2

    goto :goto_13

    :cond_e
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_13
    iput-object v0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 56
    if-eqz p1, :cond_19

    .line 57
    move-object v0, p1

    goto :goto_1d

    :cond_19
    invoke-direct {p0}, Landroid/window/TaskOrganizer;->getController()Landroid/window/ITaskOrganizerController;

    move-result-object v0

    :goto_1d
    iput-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    .line 58
    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskOrganizerController;
    .registers 3

    .line 312
    :try_start_0
    invoke-static {}, Landroid/window/TaskOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 313
    :catch_9
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/window/StartingWindowInfo;

    .line 97
    return-void
.end method

.method public blacklist copySplashScreenView(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 111
    return-void
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;Z)V

    .line 176
    return-void
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;Z)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;
    .param p4, "removeWithTaskOrganizer"    # Z

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController;->createRootTask(IILandroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :catch_7
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 4
    .param p1, "task"    # Landroid/window/WindowContainerToken;

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 183
    :catch_7
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 5
    .param p1, "parent"    # Landroid/window/WindowContainerToken;
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 196
    :catch_7
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getImeTarget(I)Landroid/window/WindowContainerToken;
    .registers 4
    .param p1, "display"    # I

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 220
    :catch_7
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRootTasks(I[I)Ljava/util/List;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 209
    :catch_7
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 121
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 139
    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 143
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 130
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 136
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 133
    return-void
.end method

.method public blacklist registerOrganizer()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 72
    :catch_d
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 2
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 105
    return-void
.end method

.method public blacklist restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .registers 4
    .param p1, "task"    # Landroid/window/WindowContainerToken;

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 250
    nop

    .line 251
    return-void

    .line 248
    :catch_7
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .registers 5
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "interceptBackPressed"    # Z

    .line 233
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 236
    nop

    .line 237
    return-void

    .line 234
    :catch_7
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterOrganizer()V
    .registers 3

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catch_9
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
