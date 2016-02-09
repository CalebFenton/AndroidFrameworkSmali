.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final PB_IN_BYTES:J = 0x4000000000000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final TB_IN_BYTES:J = 0x10000000000L

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UNSUPPORTED:I = -0x1

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    #@0
    .prologue
    .line 162
    const/4 v0, -0x1

    #@1
    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    #@4
    .line 161
    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1

    #@0
    .prologue
    .line 186
    const/4 v0, -0x1

    #@1
    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    #@4
    .line 185
    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .locals 2
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    #@0
    .prologue
    .line 279
    if-eqz p0, :cond_0

    #@2
    .line 281
    :try_start_0
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 277
    :cond_0
    :goto_0
    return-void

    #@6
    .line 284
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 282
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 283
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 611
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v1

    #@4
    .line 613
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 614
    :catch_0
    move-exception v0

    #@e
    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v2
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 626
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 627
    :catch_0
    move-exception v0

    #@a
    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public static getMobileRxBytes()J
    .locals 8

    #@0
    .prologue
    .line 350
    const-wide/16 v2, 0x0

    #@2
    .line 351
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    const/4 v1, 0x0

    #@7
    array-length v5, v4

    #@8
    :goto_0
    if-ge v1, v5, :cond_0

    #@a
    aget-object v0, v4, v1

    #@c
    .line 352
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    #@f
    move-result-wide v6

    #@10
    add-long/2addr v2, v6

    #@11
    .line 351
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 354
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getMobileRxPackets()J
    .locals 8

    #@0
    .prologue
    .line 316
    const-wide/16 v2, 0x0

    #@2
    .line 317
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    const/4 v1, 0x0

    #@7
    array-length v5, v4

    #@8
    :goto_0
    if-ge v1, v5, :cond_0

    #@a
    aget-object v0, v4, v1

    #@c
    .line 318
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    #@f
    move-result-wide v6

    #@10
    add-long/2addr v2, v6

    #@11
    .line 317
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 320
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getMobileTcpRxPackets()J
    .locals 10

    #@0
    .prologue
    .line 359
    const-wide/16 v4, 0x0

    #@2
    .line 360
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    const/4 v1, 0x0

    #@7
    array-length v7, v6

    #@8
    :goto_0
    if-ge v1, v7, :cond_1

    #@a
    aget-object v0, v6, v1

    #@c
    .line 361
    .local v0, "iface":Ljava/lang/String;
    const/4 v8, 0x4

    #@d
    invoke-static {v0, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    #@10
    move-result-wide v2

    #@11
    .line 362
    .local v2, "stat":J
    const-wide/16 v8, -0x1

    #@13
    cmp-long v8, v2, v8

    #@15
    if-eqz v8, :cond_0

    #@17
    .line 363
    add-long/2addr v4, v2

    #@18
    .line 360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 366
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "stat":J
    :cond_1
    return-wide v4
.end method

.method public static getMobileTcpTxPackets()J
    .locals 10

    #@0
    .prologue
    .line 371
    const-wide/16 v4, 0x0

    #@2
    .line 372
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    const/4 v1, 0x0

    #@7
    array-length v7, v6

    #@8
    :goto_0
    if-ge v1, v7, :cond_1

    #@a
    aget-object v0, v6, v1

    #@c
    .line 373
    .local v0, "iface":Ljava/lang/String;
    const/4 v8, 0x5

    #@d
    invoke-static {v0, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    #@10
    move-result-wide v2

    #@11
    .line 374
    .local v2, "stat":J
    const-wide/16 v8, -0x1

    #@13
    cmp-long v8, v2, v8

    #@15
    if-eqz v8, :cond_0

    #@17
    .line 375
    add-long/2addr v4, v2

    #@18
    .line 372
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 378
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "stat":J
    :cond_1
    return-wide v4
.end method

.method public static getMobileTxBytes()J
    .locals 8

    #@0
    .prologue
    .line 333
    const-wide/16 v2, 0x0

    #@2
    .line 334
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    const/4 v1, 0x0

    #@7
    array-length v5, v4

    #@8
    :goto_0
    if-ge v1, v5, :cond_0

    #@a
    aget-object v0, v4, v1

    #@c
    .line 335
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    #@f
    move-result-wide v6

    #@10
    add-long/2addr v2, v6

    #@11
    .line 334
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 337
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getMobileTxPackets()J
    .locals 8

    #@0
    .prologue
    .line 299
    const-wide/16 v2, 0x0

    #@2
    .line 300
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    const/4 v1, 0x0

    #@7
    array-length v5, v4

    #@8
    :goto_0
    if-ge v1, v5, :cond_0

    #@a
    aget-object v0, v4, v1

    #@c
    .line 301
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    #@f
    move-result-wide v6

    #@10
    add-long/2addr v2, v6

    #@11
    .line 300
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 303
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 388
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/net/TrafficStats;

    #@2
    monitor-enter v1

    #@3
    .line 99
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 101
    const-string/jumbo v0, "netstats"

    #@a
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 100
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    #@14
    .line 103
    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public static getThreadStatsTag()I
    .locals 1

    #@0
    .prologue
    .line 152
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    #@0
    .prologue
    .line 450
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .locals 2

    #@0
    .prologue
    .line 424
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getTotalTxBytes()J
    .locals 2

    #@0
    .prologue
    .line 437
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getTotalTxPackets()J
    .locals 2

    #@0
    .prologue
    .line 411
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 393
    const/4 v0, 0x2

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 482
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getUidRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 514
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 536
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 580
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 525
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 569
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 466
    const/4 v0, 0x2

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getUidTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 498
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 558
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 602
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 547
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 591
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .param p0, "operationCount"    # I

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    #@3
    move-result v0

    #@4
    .line 257
    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    #@7
    .line 255
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    #@0
    .prologue
    .line 268
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v1

    #@4
    .line 270
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 267
    return-void

    #@c
    .line 271
    :catch_0
    move-exception v0

    #@d
    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@f
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@12
    throw v2
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 131
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    #@3
    .line 130
    return-void
.end method

.method public static setThreadStatsTagBackup()V
    .locals 1

    #@0
    .prologue
    .line 141
    const/16 v0, -0xfd

    #@2
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    #@5
    .line 140
    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    #@3
    .line 179
    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 216
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 217
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "already profiling data"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 216
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 222
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 215
    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 234
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 235
    :try_start_0
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 236
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v4, "not profiling data"

    #@c
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 234
    :catchall_0
    move-exception v2

    #@11
    monitor-exit v3

    #@12
    throw v2

    #@13
    .line 240
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    #@16
    move-result-object v1

    #@17
    .line 242
    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x0

    #@1b
    .line 241
    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    #@1e
    move-result-object v0

    #@1f
    .line 243
    .local v0, "profilingDelta":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    #@20
    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v3

    #@23
    .line 244
    return-object v0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    #@7
    .line 198
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    #@7
    .line 205
    return-void
.end method
