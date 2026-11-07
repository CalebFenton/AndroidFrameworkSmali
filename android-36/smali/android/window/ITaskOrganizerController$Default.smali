.class public Landroid/window/ITaskOrganizerController$Default;
.super Ljava/lang/Object;
.source "ITaskOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;Z)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;
    .param p4, "removeWithTaskOrganizer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 3
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImeTarget(I)Landroid/window/WindowContainerToken;
    .registers 3
    .param p1, "display"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRootTasks(I[I)Ljava/util/List;
    .registers 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizer;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .registers 2
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .registers 3
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "interceptBackPressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .registers 2
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
