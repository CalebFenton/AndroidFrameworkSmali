.class public Landroid/bluetooth/IBluetoothAdvertise$Default;
.super Ljava/lang/Object;
.source "IBluetoothAdvertise.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothAdvertise;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothAdvertise;
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

.method public blacklist enableAdvertisingSet(IZIILandroid/content/AttributionSource;)V
    .registers 6
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "duration"    # I
    .param p4, "maxExtAdvEvents"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist getOwnAddress(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "advertiserId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setPeriodicAdvertisingEnable(IZLandroid/content/AttributionSource;)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "parameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "advertiserId"    # I
    .param p2, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IIILandroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;)V
    .registers 11
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtAdvEvents"    # I
    .param p8, "gattServerIf"    # I
    .param p9, "callback"    # Landroid/bluetooth/le/IAdvertisingSetCallback;
    .param p10, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/le/IAdvertisingSetCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
