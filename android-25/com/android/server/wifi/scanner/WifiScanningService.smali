.class public Lcom/android/server/wifi/scanner/WifiScanningService;
.super Lcom/android/server/SystemService;
.source "WifiScanningService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WifiScanningService"


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 35
    const-string/jumbo v0, "WifiScanningService"

    #@6
    const-string/jumbo v1, "Creating wifiscanner"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    #@e
    const-string/jumbo v1, "WifiScanningService"

    #@11
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@14
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mHandlerThread:Landroid/os/HandlerThread;

    #@16
    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mHandlerThread:Landroid/os/HandlerThread;

    #@18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@1b
    .line 38
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1d
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningService;->getContext()Landroid/content/Context;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mHandlerThread:Landroid/os/HandlerThread;

    #@23
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@26
    move-result-object v2

    #@27
    .line 39
    sget-object v3, Lcom/android/server/wifi/scanner/WifiScannerImpl;->DEFAULT_FACTORY:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    #@29
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@2c
    move-result-object v4

    #@2d
    .line 40
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    #@30
    move-result-object v5

    #@31
    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/wifi/WifiInjector;)V

    #@34
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@36
    .line 33
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 51
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 52
    const-string/jumbo v0, "WifiScanningService"

    #@7
    const-string/jumbo v1, "Starting wifiscanner"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->startService()V

    #@12
    .line 50
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "WifiScanningService"

    #@3
    const-string/jumbo v1, "Publishing wifiscanner"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 46
    const-string/jumbo v0, "wifiscanner"

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningService;->mImpl:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@11
    .line 44
    return-void
.end method
