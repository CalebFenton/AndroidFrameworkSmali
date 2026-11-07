.class public Landroid/net/wifi/WifiTwtSession;
.super Ljava/lang/Object;
.source "WifiTwtSession.java"

# interfaces
.implements Landroid/net/wifi/twt/TwtSession;


# static fields
.field public static final blacklist MAX_TWT_SESSIONS:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "WifiTwtSession"


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMloLinkId:I

.field private final blacklist mOwner:I

.field private final blacklist mSessionId:I

.field private final blacklist mWakeDurationMicros:I

.field private final blacklist mWakeIntervalMicros:J


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/WifiManager;IJIII)V
    .registers 10
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "wakeDurationMicros"    # I
    .param p3, "wakeIntervalMicros"    # J
    .param p5, "mloLinkId"    # I
    .param p6, "owner"    # I
    .param p7, "sessionId"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiTwtSession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/WifiTwtSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 84
    iput p2, p0, Landroid/net/wifi/WifiTwtSession;->mWakeDurationMicros:I

    .line 85
    iput-wide p3, p0, Landroid/net/wifi/WifiTwtSession;->mWakeIntervalMicros:J

    .line 86
    iput p5, p0, Landroid/net/wifi/WifiTwtSession;->mMloLinkId:I

    .line 87
    iput p6, p0, Landroid/net/wifi/WifiTwtSession;->mOwner:I

    .line 88
    iput p7, p0, Landroid/net/wifi/WifiTwtSession;->mSessionId:I

    .line 89
    iget-object v0, p0, Landroid/net/wifi/WifiTwtSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "teardown"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist getMloLinkId()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/net/wifi/WifiTwtSession;->mMloLinkId:I

    return v0
.end method

.method public blacklist getOwner()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/net/wifi/WifiTwtSession;->mOwner:I

    return v0
.end method

.method public blacklist getSessionId()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/net/wifi/WifiTwtSession;->mSessionId:I

    return v0
.end method

.method public whitelist getStats(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p2, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiTwtSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 71
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_12

    .line 72
    const-string v1, "WifiTwtSession"

    const-string v2, "getStats: called post garbage collection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Landroid/net/wifi/WifiTwtSession;->mOwner:I

    if-ne v1, v2, :cond_20

    .line 78
    iget v1, p0, Landroid/net/wifi/WifiTwtSession;->mSessionId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiManager;->getStatsTwtSession(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 79
    return-void

    .line 76
    :cond_20
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "TWT session is not owned by the caller"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getWakeDurationMicros()I
    .registers 2

    .line 47
    iget v0, p0, Landroid/net/wifi/WifiTwtSession;->mWakeDurationMicros:I

    return v0
.end method

.method public whitelist getWakeIntervalMicros()J
    .registers 3

    .line 52
    iget-wide v0, p0, Landroid/net/wifi/WifiTwtSession;->mWakeIntervalMicros:J

    return-wide v0
.end method

.method public whitelist teardown()V
    .registers 4

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiTwtSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 96
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_15

    .line 97
    const-string v1, "WifiTwtSession"

    const-string v2, "close: called post garbage collection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_29

    .line 104
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 98
    return-void

    .line 100
    :cond_15
    :try_start_15
    iget v1, p0, Landroid/net/wifi/WifiTwtSession;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->teardownTwtSession(I)V

    .line 101
    iget-object v1, p0, Landroid/net/wifi/WifiTwtSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 102
    iget-object v1, p0, Landroid/net/wifi/WifiTwtSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 104
    .end local v0    # "mgr":Landroid/net/wifi/WifiManager;
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 105
    nop

    .line 106
    return-void

    .line 104
    :catchall_29
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 105
    throw v0
.end method
