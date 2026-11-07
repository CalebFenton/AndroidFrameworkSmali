.class public Landroid/bluetooth/IBluetoothScan$Default;
.super Ljava/lang/Object;
.source "IBluetoothScan.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothScan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothScan;
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

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist flushPendingBatchResults(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "scannerId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist numHwTrackFiltersAvailable(Landroid/content/AttributionSource;)I
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/IScannerCallback;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "scannerId"    # I
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
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

    .line 27
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    return-void
.end method

.method public blacklist startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
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

    .line 30
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    return-void
.end method

.method public blacklist stopScan(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "scannerId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist stopScanForIntent(Landroid/app/PendingIntent;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "advertisingHandle"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist transferSync(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "syncHandle"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist unregisterScanner(ILandroid/content/AttributionSource;)V
    .registers 3
    .param p1, "scannerId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method
