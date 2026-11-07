.class public Landroid/bluetooth/le/IAdvertisingSetCallback$Default;
.super Ljava/lang/Object;
.source "IAdvertisingSetCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IAdvertisingSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IAdvertisingSetCallback;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAdvertisingDataSet(II)V
    .registers 3
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onAdvertisingEnabled(IZI)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist onAdvertisingParametersUpdated(III)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "tx_power"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onAdvertisingSetStarted(Landroid/os/IBinder;III)V
    .registers 5
    .param p1, "advertiseBinder"    # Landroid/os/IBinder;
    .param p2, "advertiserId"    # I
    .param p3, "tx_power"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onAdvertisingSetStopped(I)V
    .registers 2
    .param p1, "advertiserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onOwnAddressRead(IILjava/lang/String;)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onPeriodicAdvertisingDataSet(II)V
    .registers 3
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onPeriodicAdvertisingEnabled(IZI)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onPeriodicAdvertisingParametersUpdated(II)V
    .registers 3
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist onScanResponseDataSet(II)V
    .registers 3
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method
