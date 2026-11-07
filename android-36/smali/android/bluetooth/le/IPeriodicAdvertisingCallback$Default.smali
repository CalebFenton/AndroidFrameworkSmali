.class public Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Default;
.super Ljava/lang/Object;
.source "IPeriodicAdvertisingCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IPeriodicAdvertisingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBigInfoAdvertisingReport(IZ)V
    .registers 3
    .param p1, "syncHandle"    # I
    .param p2, "encrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 2
    .param p1, "report"    # Landroid/bluetooth/le/PeriodicAdvertisingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 7
    .param p1, "syncHandle"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "advertisingSid"    # I
    .param p4, "skip"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onSyncLost(I)V
    .registers 2
    .param p1, "syncHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
