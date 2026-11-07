.class public abstract Landroid/app/TaskStackListener;
.super Landroid/app/ITaskStackListener$Stub;
.source "TaskStackListener.java"


# instance fields
.field private blacklist mIsRemote:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/TaskStackListener;->mIsRemote:Z

    .line 39
    return-void
.end method


# virtual methods
.method public greylist-max-r onActivityDismissingDockedTask()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public greylist-max-r onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public greylist-max-r onActivityLaunchOnSecondaryDisplayFailed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "requestedDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Landroid/app/TaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    .line 83
    return-void
.end method

.method public greylist-max-r onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "requestedDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public greylist-max-r onActivityPinned(Ljava/lang/String;III)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "rootTaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public greylist-max-r onActivityRequestedOrientationChanged(II)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public greylist-max-r onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 5
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "homeTaskVisible"    # Z
    .param p3, "clearedTask"    # Z
    .param p4, "wasVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist onActivityRotation(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 214
    return-void
.end method

.method public greylist-max-r onActivityUnpinned()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public blacklist onLockTaskModeChanged(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 222
    return-void
.end method

.method public blacklist onRecentTaskListFrozenChanged(Z)V
    .registers 2
    .param p1, "frozen"    # Z

    .line 198
    return-void
.end method

.method public blacklist onRecentTaskListUpdated()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public blacklist onRecentTaskRemovedForAddTask(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 202
    return-void
.end method

.method public greylist-max-o onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public greylist-max-o onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v0, v1}, Landroid/app/TaskStackListener;->onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V

    .line 140
    return-void
.end method

.method public blacklist onTaskDisplayChanged(II)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist onTaskFocusChanged(IZ)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 206
    return-void
.end method

.method public blacklist onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 218
    return-void
.end method

.method public greylist-max-r onTaskMovedToFront(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/app/TaskStackListener;->onTaskMovedToFront(I)V

    .line 113
    return-void
.end method

.method public greylist-max-r onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/TaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 160
    return-void
.end method

.method public greylist-max-o onTaskRemovalStarted(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/app/TaskStackListener;->onTaskRemovalStarted(I)V

    .line 127
    return-void
.end method

.method public greylist-max-r onTaskRemoved(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist onTaskRequestedOrientationChanged(II)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 210
    return-void
.end method

.method public greylist-max-r onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Landroid/app/TaskStackListener;->mIsRemote:Z

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 176
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 178
    :cond_13
    return-void
.end method

.method public blacklist onTaskSnapshotInvalidated(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 181
    return-void
.end method

.method public greylist-max-r onTaskStackChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist setIsLocal()V
    .registers 2

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/TaskStackListener;->mIsRemote:Z

    .line 44
    return-void
.end method
