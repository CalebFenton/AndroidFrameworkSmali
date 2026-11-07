.class public Landroid/app/UserSwitchObserver;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserSwitchObserver.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist onBeforeUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    if-eqz p2, :cond_6

    .line 35
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 37
    :cond_6
    return-void
.end method

.method public greylist-max-o onForegroundProfileSwitch(I)V
    .registers 2
    .param p1, "newProfileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public greylist-max-o onLockedBootComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public greylist-max-o onUserSwitchComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public greylist-max-o onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    if-eqz p2, :cond_6

    .line 42
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 44
    :cond_6
    return-void
.end method
