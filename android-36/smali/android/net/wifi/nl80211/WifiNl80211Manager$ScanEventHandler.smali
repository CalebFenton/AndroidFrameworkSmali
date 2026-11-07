.class Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
.super Landroid/net/wifi/nl80211/IScanEvent$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanEventHandler"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public static synthetic blacklist $r8$lambda$UilxOcnDfWytkTVNpMSTT7MxIO8(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanResultReady$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fLCkn7y5sChJcXWxWSL8eAobXvQ(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanRequestFailed$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tNzJ5VUVA2iseoaUEAtlwDg720c(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->lambda$OnScanFailed$1()V

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

    .line 220
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;-><init>()V

    .line 221
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 222
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 223
    return-void
.end method

.method private synthetic blacklist lambda$OnScanFailed$1()V
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed()V

    return-void
.end method

.method private synthetic blacklist lambda$OnScanRequestFailed$2(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 252
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 253
    invoke-static {v1, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$mtoFrameworkScanStatusCode(Landroid/net/wifi/nl80211/WifiNl80211Manager;I)I

    move-result v1

    .line 252
    invoke-interface {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$OnScanResultReady$0()V
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanResultReady()V

    return-void
.end method


# virtual methods
.method public blacklist OnScanFailed()V
    .registers 5

    .line 238
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 241
    .local v0, "token":J
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    nop

    .line 245
    return-void

    .line 243
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw v2
.end method

.method public blacklist OnScanRequestFailed(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scan failed event with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    .local v0, "token":J
    :try_start_1c
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    .line 255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw v2
.end method

.method public blacklist OnScanResultReady()V
    .registers 5

    .line 227
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Scan result ready event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 230
    .local v0, "token":J
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    nop

    .line 234
    return-void

    .line 232
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw v2
.end method
