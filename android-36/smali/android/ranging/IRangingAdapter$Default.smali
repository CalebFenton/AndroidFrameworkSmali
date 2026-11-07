.class public Landroid/ranging/IRangingAdapter$Default;
.super Ljava/lang/Object;
.source "IRangingAdapter.java"

# interfaces
.implements Landroid/ranging/IRangingAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/IRangingAdapter;
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
.method public blacklist addOobDevice(Landroid/ranging/SessionHandle;Landroid/ranging/oob/OobResponderRangingConfig;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .param p2, "rangingConfig"    # Landroid/ranging/oob/OobResponderRangingConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist addRawDevice(Landroid/ranging/SessionHandle;Landroid/ranging/raw/RawResponderRangingConfig;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .param p2, "rangingConfig"    # Landroid/ranging/raw/RawResponderRangingConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deviceOobClosed(Landroid/ranging/oob/OobHandle;)V
    .registers 2
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist deviceOobDisconnected(Landroid/ranging/oob/OobHandle;)V
    .registers 2
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist deviceOobReconnected(Landroid/ranging/oob/OobHandle;)V
    .registers 2
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist oobDataReceived(Landroid/ranging/oob/OobHandle;[B)V
    .registers 3
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist reconfigureRangingInterval(Landroid/ranging/SessionHandle;I)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .param p2, "intervalSkipCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist registerCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V
    .registers 2
    .param p1, "rangingCapabilitiesCallback"    # Landroid/ranging/IRangingCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist registerOobSendDataListener(Landroid/ranging/oob/IOobSendDataListener;)V
    .registers 2
    .param p1, "oobSendDataListener"    # Landroid/ranging/oob/IOobSendDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist removeDevice(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .param p2, "rangingDevice"    # Landroid/ranging/RangingDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist startRanging(Landroid/content/AttributionSource;Landroid/ranging/SessionHandle;Landroid/ranging/RangingPreference;Landroid/ranging/IRangingCallbacks;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .param p3, "rangingPreference"    # Landroid/ranging/RangingPreference;
    .param p4, "callbacks"    # Landroid/ranging/IRangingCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist stopRanging(Landroid/ranging/SessionHandle;)V
    .registers 2
    .param p1, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist unregisterCapabilitiesCallback(Landroid/ranging/IRangingCapabilitiesCallback;)V
    .registers 2
    .param p1, "rangingCapabilitiesCallback"    # Landroid/ranging/IRangingCapabilitiesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
