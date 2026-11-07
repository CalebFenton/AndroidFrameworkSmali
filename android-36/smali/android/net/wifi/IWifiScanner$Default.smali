.class public Landroid/net/wifi/IWifiScanner$Default;
.super Ljava/lang/Object;
.source "IWifiScanner.java"

# interfaces
.implements Landroid/net/wifi/IWifiScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiScanner;
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

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableVerboseLogging(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist getAvailableChannels(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "band"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCachedScanData(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/IScanDataListener;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/IScanDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist getScanResults(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSingleScanResults(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isScanning()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerScanListener(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setScanningEnabled(ZILjava/lang/String;)Z
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "tid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startBackgroundScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist startPnoScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist startScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist stopBackgroundScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist stopPnoScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist stopScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist unregisterScanListener(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/IWifiScannerListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
