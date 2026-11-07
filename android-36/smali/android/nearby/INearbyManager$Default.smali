.class public Landroid/nearby/INearbyManager$Default;
.super Ljava/lang/Object;
.source "INearbyManager.java"

# interfaces
.implements Landroid/nearby/INearbyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/INearbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPoweredOffModeEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryOffloadCapability(Landroid/nearby/aidl/IOffloadCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/nearby/aidl/IOffloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist registerScanListener(Landroid/nearby/ScanRequest;Landroid/nearby/IScanListener;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "scanRequest"    # Landroid/nearby/ScanRequest;
    .param p2, "listener"    # Landroid/nearby/IScanListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPoweredOffFindingEphemeralIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/nearby/PoweredOffFindingEphemeralId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    .local p1, "eids":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/PoweredOffFindingEphemeralId;>;"
    return-void
.end method

.method public blacklist setPoweredOffModeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist startBroadcast(Landroid/nearby/BroadcastRequestParcelable;Landroid/nearby/IBroadcastListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "broadcastRequest"    # Landroid/nearby/BroadcastRequestParcelable;
    .param p2, "callback"    # Landroid/nearby/IBroadcastListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist stopBroadcast(Landroid/nearby/IBroadcastListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Landroid/nearby/IBroadcastListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist unregisterScanListener(Landroid/nearby/IScanListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/nearby/IScanListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
