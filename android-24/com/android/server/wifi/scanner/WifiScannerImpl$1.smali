.class final Lcom/android/server/wifi/scanner/WifiScannerImpl$1;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"

# interfaces
.implements Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/scanner/WifiScannerImpl;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Lcom/android/server/wifi/Clock;

    #@0
    .prologue
    .line 47
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@3
    move-result-object v0

    #@4
    .line 48
    .local v0, "wifiNative":Lcom/android/server/wifi/WifiNative;
    new-instance v1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@6
    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 49
    new-instance v1, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;

    #@11
    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    #@14
    return-object v1

    #@15
    .line 51
    :cond_0
    new-instance v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@17
    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    #@1a
    return-object v1
.end method
