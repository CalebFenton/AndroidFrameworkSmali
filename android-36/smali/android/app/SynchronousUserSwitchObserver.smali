.class public abstract Landroid/app/SynchronousUserSwitchObserver;
.super Landroid/app/UserSwitchObserver;
.source "SynchronousUserSwitchObserver.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o onUserSwitching(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final greylist-max-o onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 5
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/SynchronousUserSwitchObserver;->onUserSwitching(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    .line 38
    if-eqz p2, :cond_9

    .line 39
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 42
    :cond_9
    return-void

    .line 38
    :catchall_a
    move-exception v1

    if-eqz p2, :cond_10

    .line 39
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 41
    :cond_10
    throw v1
.end method
