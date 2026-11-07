.class public Landroid/devicelock/IDeviceLockService$Default;
.super Ljava/lang/Object;
.source "IDeviceLockService.java"

# interfaces
.implements Landroid/devicelock/IDeviceLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/devicelock/IDeviceLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addFinancedDeviceKioskRole(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearDeviceRestrictions(Landroid/devicelock/IVoidResultCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/devicelock/IVoidResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist disableControllerKeepalive(Landroid/os/RemoteCallback;)V
    .registers 2
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist disableKioskKeepalive(Landroid/os/RemoteCallback;)V
    .registers 2
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist enableControllerKeepalive(Landroid/os/RemoteCallback;)V
    .registers 2
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist enableKioskKeepalive(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist getDeviceId(Landroid/devicelock/IGetDeviceIdCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/devicelock/IGetDeviceIdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getKioskApps(Landroid/devicelock/IGetKioskAppsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/devicelock/IGetKioskAppsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist isDeviceLocked(Landroid/devicelock/IIsDeviceLockedCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/devicelock/IIsDeviceLockedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist lockDevice(Landroid/devicelock/IVoidResultCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/devicelock/IVoidResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist removeFinancedDeviceKioskRole(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist setCallerAllowedToSendUndismissibleNotifications(ZLandroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "allowed"    # Z
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist setCallerExemptFromActivityBgStartRestrictionState(ZLandroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "exempt"    # Z
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist setDeviceFinalized(ZLandroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "finalized"    # Z
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist setPostNotificationsSystemFixed(ZLandroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "systemFixed"    # Z
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist setUidExemptFromRestrictionsState(IZLandroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "exempt"    # Z
    .param p3, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist unlockDevice(Landroid/devicelock/IVoidResultCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/devicelock/IVoidResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
