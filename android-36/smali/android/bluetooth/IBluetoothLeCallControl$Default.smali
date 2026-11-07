.class public Landroid/bluetooth/IBluetoothLeCallControl$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeCallControl.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeCallControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeCallControl;
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

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist callAdded(ILandroid/bluetooth/BluetoothLeCall;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "ccid"    # I
    .param p2, "call"    # Landroid/bluetooth/BluetoothLeCall;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist callRemoved(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "ccid"    # I
    .param p2, "callId"    # Landroid/os/ParcelUuid;
    .param p3, "reason"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist callStateChanged(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "ccid"    # I
    .param p2, "callId"    # Landroid/os/ParcelUuid;
    .param p3, "state"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist currentCallsList(ILjava/util/List;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "ccid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeCall;",
            ">;",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    .local p2, "calls":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    return-void
.end method

.method public blacklist registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothLeCallControlCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/AttributionSource;)V
    .registers 9
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothLeCallControlCallback;
    .param p3, "uci"    # Ljava/lang/String;
    .param p5, "capabilities"    # I
    .param p6, "provider"    # Ljava/lang/String;
    .param p7, "technology"    # I
    .param p8, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothLeCallControlCallback;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    .local p4, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist requestResult(IIILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "ccid"    # I
    .param p2, "requestId"    # I
    .param p3, "result"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist unregisterBearer(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
