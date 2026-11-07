.class Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
.super Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanEventHandler"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$OAQoKPe5K9tr0ITSmX0YIUPHj4o(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->lambda$OnPnoNetworkFound$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tHZH6OjNpF3Cquu8NWHdiRItFw4(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->lambda$OnPnoScanFailed$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 457
    invoke-direct {p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;-><init>()V

    .line 458
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 459
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 460
    return-void
.end method

.method private synthetic blacklist lambda$OnPnoNetworkFound$0()V
    .registers 2

    .line 467
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanResultReady()V

    return-void
.end method

.method private synthetic blacklist lambda$OnPnoScanFailed$1()V
    .registers 2

    .line 478
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed()V

    return-void
.end method


# virtual methods
.method public blacklist OnPnoNetworkFound()V
    .registers 5

    .line 464
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Pno scan result event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 467
    .local v0, "token":J
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 469
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    nop

    .line 471
    return-void

    .line 469
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    throw v2
.end method

.method public blacklist OnPnoScanFailed()V
    .registers 5

    .line 475
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Pno Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 478
    .local v0, "token":J
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 480
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    nop

    .line 482
    return-void

    .line 480
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    throw v2
.end method
