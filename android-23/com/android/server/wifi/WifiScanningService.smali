.class public Lcom/android/server/wifi/WifiScanningService;
.super Lcom/android/server/SystemService;
.source "WifiScanningService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiScanningService"


# instance fields
.field mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 32
    const-string/jumbo v0, "WifiScanningService"

    #@6
    const-string/jumbo v1, "Creating wifiscanner"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 30
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 45
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 46
    const-string/jumbo v0, "WifiScanningService"

    #@7
    const-string/jumbo v1, "Registering wifiscanner"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 48
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@13
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;-><init>(Landroid/content/Context;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@1c
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@1e
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->startService(Landroid/content/Context;)V

    #@25
    .line 44
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 37
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@b
    .line 39
    const-string/jumbo v0, "WifiScanningService"

    #@e
    const-string/jumbo v1, "Starting wifiscanner"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 40
    const-string/jumbo v0, "wifiscanner"

    #@17
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1c
    .line 36
    return-void
.end method
