.class public interface abstract Landroid/net/wifi/nl80211/IWifiScannerImpl;
.super Ljava/lang/Object;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;,
        Landroid/net/wifi/nl80211/IWifiScannerImpl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IWifiScannerImpl"

.field public static final blacklist SCAN_STATUS_FAILED_ABORT:I = 0x3

.field public static final blacklist SCAN_STATUS_FAILED_BUSY:I = 0x2

.field public static final blacklist SCAN_STATUS_FAILED_GENERIC:I = 0x1

.field public static final blacklist SCAN_STATUS_FAILED_INVALID_ARGS:I = 0x5

.field public static final blacklist SCAN_STATUS_FAILED_NODEV:I = 0x4

.field public static final blacklist SCAN_STATUS_SUCCESS:I = 0x0

.field public static final blacklist SCAN_TYPE_DEFAULT:I = -0x1

.field public static final blacklist SCAN_TYPE_HIGH_ACCURACY:I = 0x2

.field public static final blacklist SCAN_TYPE_LOW_POWER:I = 0x1

.field public static final blacklist SCAN_TYPE_LOW_SPAN:I


# virtual methods
.method public abstract blacklist abortScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMaxSsidsPerScan()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist scanRequest(Landroid/net/wifi/nl80211/SingleScanSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopPnoScan()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unsubscribePnoScanEvents()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unsubscribeScanEvents()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
