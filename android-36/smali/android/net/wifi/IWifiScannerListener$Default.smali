.class public Landroid/net/wifi/IWifiScannerListener$Default;
.super Ljava/lang/Object;
.source "IWifiScannerListener.java"

# interfaces
.implements Landroid/net/wifi/IWifiScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiScannerListener;
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

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFailure(ILjava/lang/String;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onFullResult(Landroid/net/wifi/ScanResult;)V
    .registers 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onFullResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    .local p1, "scanResult":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    return-void
.end method

.method public blacklist onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .registers 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 2
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onSingleScanCompleted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
