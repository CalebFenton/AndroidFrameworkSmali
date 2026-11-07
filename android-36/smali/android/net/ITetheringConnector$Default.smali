.class public Landroid/net/ITetheringConnector$Default;
.super Ljava/lang/Object;
.source "ITetheringConnector.java"

# interfaces
.implements Landroid/net/ITetheringConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ITetheringConnector;
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

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isTetheringSupported(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 4
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .registers 3
    .param p1, "callback"    # Landroid/net/ITetheringEventCallback;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist requestLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"    # Z
    .param p4, "callerPkg"    # Ljava/lang/String;
    .param p5, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setPreferTestNetworks(ZLandroid/net/IIntResultListener;)V
    .registers 3
    .param p1, "prefer"    # Z
    .param p2, "listener"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist setUsbTethering(ZLjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist startTethering(Landroid/net/TetheringRequestParcel;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 5
    .param p1, "request"    # Landroid/net/TetheringRequestParcel;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist stopAllTethering(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 4
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist stopTethering(ILjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist stopTetheringRequest(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 5
    .param p1, "request"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist tether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .registers 3
    .param p1, "callback"    # Landroid/net/ITetheringEventCallback;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist untether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
