.class Lcom/android/server/net/NetworkStatsObservers;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsObservers$1;,
        Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;,
        Lcom/android/server/net/NetworkStatsObservers$RequestInfo;,
        Lcom/android/server/net/NetworkStatsObservers$StatsContext;,
        Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;
    }
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final MIN_THRESHOLD_BYTES:J = 0x200000L

.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2

.field private static final MSG_UPDATE_STATS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NetworkStatsObservers"


# instance fields
.field private final mDataUsageRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/net/NetworkStatsObservers$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .locals 0
    .param p1, "requestInfo"    # Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->handleRegister(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsObservers;->handleUnregister(Landroid/net/DataUsageRequest;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 0
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->handleUpdateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    #@a
    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    .line 136
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsObservers$1;-><init>(Lcom/android/server/net/NetworkStatsObservers;)V

    #@16
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@18
    .line 53
    return-void
.end method

.method private buildRequest(Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;
    .locals 6
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    #@0
    .prologue
    .line 204
    iget-wide v2, p1, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@2
    const-wide/32 v4, 0x200000

    #@5
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@8
    move-result-wide v0

    #@9
    .line 205
    .local v0, "thresholdInBytes":J
    iget-wide v2, p1, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@b
    cmp-long v2, v0, v2

    #@d
    if-gez v2, :cond_0

    #@f
    .line 206
    const-string/jumbo v2, "NetworkStatsObservers"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Threshold was too low for "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 207
    const-string/jumbo v4, ". Overriding to a safer default of "

    #@25
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 207
    const-string/jumbo v4, " bytes"

    #@30
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 209
    :cond_0
    new-instance v2, Landroid/net/DataUsageRequest;

    #@3d
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsObservers;->mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3f
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@42
    move-result v3

    #@43
    .line 210
    iget-object v4, p1, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@45
    .line 209
    invoke-direct {v2, v3, v4, v0, v1}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    #@48
    return-object v2
.end method

.method private buildRequestInfo(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    .locals 7
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "accessLevel"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 216
    if-gt p5, v0, :cond_0

    #@3
    .line 217
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;

    #@5
    move-object v1, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    #@e
    return-object v0

    #@f
    .line 221
    :cond_0
    const/4 v1, 0x2

    #@10
    if-lt p5, v1, :cond_1

    #@12
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@15
    .line 222
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;

    #@17
    move-object v1, p0

    #@18
    move-object v2, p1

    #@19
    move-object v3, p2

    #@1a
    move-object v4, p3

    #@1b
    move v5, p4

    #@1c
    move v6, p5

    #@1d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    #@20
    return-object v0

    #@21
    .line 221
    :cond_1
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 3

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 119
    monitor-enter p0

    #@5
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 122
    new-instance v0, Landroid/os/Handler;

    #@b
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandlerLooperLocked()Landroid/os/Looper;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@11
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@14
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit p0

    #@17
    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    #@19
    return-object v0

    #@1a
    .line 119
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method private handleRegister(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .locals 2
    .param p1, "requestInfo"    # Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    #@2
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    #@4
    iget v1, v1, Landroid/net/DataUsageRequest;->requestId:I

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9
    .line 164
    return-void
.end method

.method private handleUnregister(Landroid/net/DataUsageRequest;I)V
    .locals 4
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    #@2
    iget v2, p1, Landroid/net/DataUsageRequest;->requestId:I

    #@4
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    #@a
    .line 176
    .local v0, "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    if-nez v0, :cond_0

    #@c
    .line 178
    return-void

    #@d
    .line 180
    :cond_0
    const/16 v1, 0x3e8

    #@f
    if-eq v1, p2, :cond_1

    #@11
    iget v1, v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    #@13
    if-eq v1, p2, :cond_1

    #@15
    .line 181
    const-string/jumbo v1, "NetworkStatsObservers"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Caller uid "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, " is not owner of "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 182
    return-void

    #@3b
    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    #@3d
    iget v2, p1, Landroid/net/DataUsageRequest;->requestId:I

    #@3f
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    #@42
    .line 187
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->-wrap1(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    #@45
    .line 188
    const/4 v1, 0x1

    #@46
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->-wrap0(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;I)V

    #@49
    .line 173
    return-void
.end method

.method private handleUpdateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 3
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    #@0
    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 193
    return-void

    #@9
    .line 196
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v2

    #@10
    if-ge v0, v2, :cond_1

    #@12
    .line 197
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    #@1a
    .line 198
    .local v1, "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    invoke-static {v1, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->-wrap2(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    #@1d
    .line 196
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 191
    .end local v1    # "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHandlerLooperLocked()Landroid/os/Looper;
    .locals 2

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    #@2
    const-string/jumbo v1, "NetworkStatsObservers"

    #@5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@8
    .line 132
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@b
    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;
    .locals 7
    .param p1, "inputRequest"    # Landroid/net/DataUsageRequest;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "accessLevel"    # I

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->buildRequest(Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;

    #@3
    move-result-object v1

    #@4
    .local v1, "request":Landroid/net/DataUsageRequest;
    move-object v0, p0

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move v4, p4

    #@8
    move v5, p5

    #@9
    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsObservers;->buildRequestInfo(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    #@c
    move-result-object v6

    #@d
    .line 89
    .local v6, "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    #@10
    move-result-object v0

    #@11
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    #@13
    const/4 v3, 0x1

    #@14
    invoke-virtual {v2, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    .line 90
    return-object v1
.end method

.method public unregister(Landroid/net/DataUsageRequest;I)V
    .locals 4
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    #@6
    const/4 v2, 0x2

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 98
    return-void
.end method

.method public updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V
    .locals 8
    .param p1, "xtSnapshot"    # Landroid/net/NetworkStats;
    .param p2, "uidSnapshot"    # Landroid/net/NetworkStats;
    .param p5, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p6, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 112
    .local p3, "activeIfaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p4, "activeUidIfaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-wide v6, p6

    #@8
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsObservers$StatsContext;-><init>(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V

    #@b
    .line 114
    .local v0, "statsContext":Lcom/android/server/net/NetworkStatsObservers$StatsContext;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    #@11
    const/4 v3, 0x3

    #@12
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 111
    return-void
.end method
