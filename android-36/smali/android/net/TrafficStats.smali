.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/TrafficStats$SocketTagger;,
        Landroid/net/TrafficStats$UidTag;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_STATS:Landroid/net/connectivity/android/net/netstats/StatsResult;

.field public static final greylist-max-o GB_IN_BYTES:J = 0x40000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o KB_IN_BYTES:J = 0x400L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o LOOPBACK_IFACE:Ljava/lang/String; = "lo"

.field public static final greylist-max-o MB_IN_BYTES:J = 0x100000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o PB_IN_BYTES:J = 0x4000000000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TAG_NETWORK_STACK_IMPERSONATION_RANGE_END:I = -0x71
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TAG_NETWORK_STACK_IMPERSONATION_RANGE_START:I = -0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TAG_NETWORK_STACK_RANGE_END:I = -0x101
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TAG_NETWORK_STACK_RANGE_START:I = -0x300
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o TAG_SYSTEM_APP:I = -0xfb

.field public static final greylist-max-o TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final greylist-max-o TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final whitelist TAG_SYSTEM_IMPERSONATION_RANGE_END:I = -0xf1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TAG_SYSTEM_IMPERSONATION_RANGE_START:I = -0x100
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final greylist-max-o TAG_SYSTEM_PROBE:I = -0xbe

.field public static final greylist-max-o TAG_SYSTEM_RESTORE:I = -0xfc

.field public static final greylist-max-o TB_IN_BYTES:J = 0x10000000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TYPE_RX_BYTES:I = 0x0

.field public static final greylist-max-o TYPE_RX_PACKETS:I = 0x1

.field public static final greylist-max-o TYPE_TX_BYTES:I = 0x2

.field public static final greylist-max-o TYPE_TX_PACKETS:I = 0x3

.field public static final greylist-max-o UID_REMOVED:I = -0x4

.field public static final greylist-max-o UID_TETHERING:I = -0x5

.field public static final whitelist UNSUPPORTED:I = -0x1

.field private static greylist-max-o sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static greylist-max-o sProfilingLock:Ljava/lang/Object;

.field private static blacklist sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

.field private static final blacklist sRateLimitCacheLock:Ljava/lang/Object;

.field private static blacklist sRateLimitIfaceCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRateLimitUidCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<",
            "Ljava/lang/Integer;",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sStatsService:Landroid/net/INetworkStatsService;

.field private static blacklist sStatsServiceForTest:Landroid/net/INetworkStatsService;

.field private static blacklist sThreadUidTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/net/TrafficStats$UidTag;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sTimeSupplierForTest:Ljava/util/function/LongSupplier;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/TrafficStats;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThreadUidTag()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_tagSocketFd(Ljava/io/FileDescriptor;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/TrafficStats;->native_tagSocketFd(Ljava/io/FileDescriptor;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_untagSocketFd(Ljava/io/FileDescriptor;)I
    .registers 1

    invoke-static {p0}, Landroid/net/TrafficStats;->native_untagSocketFd(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 71
    const-string v0, "framework-connectivity-tiramisu-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    const-class v0, Landroid/net/TrafficStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->TAG:Ljava/lang/String;

    .line 190
    new-instance v1, Landroid/net/connectivity/android/net/netstats/StatsResult;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/net/connectivity/android/net/netstats/StatsResult;-><init>(JJJJ)V

    sput-object v1, Landroid/net/TrafficStats;->EMPTY_STATS:Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sRateLimitCacheLock:Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    sput-object v0, Landroid/net/TrafficStats;->sStatsServiceForTest:Landroid/net/INetworkStatsService;

    .line 230
    sput-object v0, Landroid/net/TrafficStats;->sTimeSupplierForTest:Ljava/util/function/LongSupplier;

    .line 288
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    .line 469
    new-instance v0, Landroid/net/TrafficStats$1;

    invoke-direct {v0}, Landroid/net/TrafficStats$1;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o addIfSupported(J)J
    .registers 4
    .param p0, "stat"    # J

    .line 790
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_9
    move-wide v0, p0

    :goto_a
    return-wide v0
.end method

.method public static blacklist attachSocketTagger()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 414
    new-instance v0, Landroid/net/TrafficStats$SocketTagger;

    invoke-direct {v0}, Landroid/net/TrafficStats$SocketTagger;-><init>()V

    invoke-static {v0}, Ldalvik/system/SocketTagger;->set(Ldalvik/system/SocketTagger;)V

    .line 415
    return-void
.end method

.method public static blacklist clearRateLimitCaches()V
    .registers 4

    .line 887
    invoke-static {}, Landroid/net/TrafficStats;->maybeGetRateLimitIfaceCache()Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    move-result-object v0

    .line 888
    .local v0, "ifaceCache":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<Ljava/lang/String;Landroid/net/connectivity/android/net/netstats/StatsResult;>;"
    if-eqz v0, :cond_9

    .line 889
    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->clear()V

    .line 891
    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->maybeGetRateLimitUidCache()Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    move-result-object v1

    .line 892
    .local v1, "uidCache":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<Ljava/lang/Integer;Landroid/net/connectivity/android/net/netstats/StatsResult;>;"
    if-eqz v1, :cond_12

    .line 893
    invoke-virtual {v1}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->clear()V

    .line 896
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->clearTrafficStatsRateLimitCaches()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1b

    .line 899
    nop

    .line 900
    return-void

    .line 897
    :catch_1b
    move-exception v2

    .line 898
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist clearThreadStatsTag()V
    .registers 2

    .line 580
    sget-object v0, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TrafficStats$UidTag;

    const/4 v1, -0x1

    iput v1, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    .line 581
    return-void
.end method

.method public static whitelist clearThreadStatsUid()V
    .registers 1

    .line 638
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 639
    return-void
.end method

.method public static greylist-max-o closeQuietly(Landroid/net/INetworkStatsSession;)V
    .registers 2
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    .line 779
    if-eqz p0, :cond_a

    .line 781
    :try_start_2
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 785
    goto :goto_a

    .line 784
    :catch_6
    move-exception v0

    goto :goto_a

    .line 782
    :catch_8
    move-exception v0

    .line 783
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 787
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method private static blacklist fetchStats(Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;Ljava/lang/Object;Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;I)J
    .registers 7
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<",
            "TK;",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            ">;TK;",
            "Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier<",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            "Landroid/os/RemoteException;",
            ">;I)J"
        }
    .end annotation

    .line 1154
    .local p0, "cache":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;Landroid/net/connectivity/android/net/netstats/StatsResult;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "statsFetcher":Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;, "Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier<Landroid/net/connectivity/android/net/netstats/StatsResult;Landroid/os/RemoteException;>;"
    if-eqz p0, :cond_7

    .line 1155
    :try_start_2
    invoke-static {p0, p1, p2}, Landroid/net/TrafficStats;->fetchStatsWithCache(Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;Ljava/lang/Object;Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;)Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v0

    .local v0, "stats":Landroid/net/connectivity/android/net/netstats/StatsResult;
    goto :goto_d

    .line 1158
    .end local v0    # "stats":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :cond_7
    invoke-interface {p2}, Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 1160
    .restart local v0    # "stats":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :goto_d
    invoke-static {v0, p3}, Landroid/net/TrafficStats;->getEntryValueForType(Landroid/net/connectivity/android/net/netstats/StatsResult;I)J

    move-result-wide v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    return-wide v1

    .line 1161
    .end local v0    # "stats":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :catch_12
    move-exception v0

    .line 1162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist fetchStatsWithCache(Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;Ljava/lang/Object;Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;)Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<",
            "TK;",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            ">;TK;",
            "Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier<",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            "Landroid/os/RemoteException;",
            ">;)",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    .local p0, "cache":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;Landroid/net/connectivity/android/net/netstats/StatsResult;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "statsFetcher":Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;, "Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier<Landroid/net/connectivity/android/net/netstats/StatsResult;Landroid/os/RemoteException;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 1180
    .local v0, "stats":Landroid/net/connectivity/android/net/netstats/StatsResult;
    if-nez v0, :cond_20

    .line 1182
    invoke-interface {p2}, Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 1185
    if-eqz v0, :cond_20

    invoke-static {v0}, Landroid/net/TrafficStats;->isEmpty(Landroid/net/connectivity/android/net/netstats/StatsResult;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1186
    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 1187
    .local v1, "cachedValue":Landroid/net/connectivity/android/net/netstats/StatsResult;
    if-eqz v1, :cond_20

    .line 1191
    return-object v1

    .line 1195
    .end local v1    # "cachedValue":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :cond_20
    return-object v0
.end method

.method public static whitelist getAndSetThreadStatsTag(I)I
    .registers 3
    .param p0, "tag"    # I

    .line 508
    sget-object v0, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TrafficStats$UidTag;

    iget v0, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    .line 509
    .local v0, "old":I
    sget-object v1, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TrafficStats$UidTag;

    iput p0, v1, Landroid/net/TrafficStats$UidTag;->tag:I

    .line 510
    return v0
.end method

.method private static greylist-max-o getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1310
    invoke-static {}, Landroid/net/TrafficStats;->getMyUid()I

    move-result v0

    .line 1312
    .local v0, "uid":I
    :try_start_4
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v1

    .line 1313
    :catch_d
    move-exception v1

    .line 1314
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist getEntryValueForType(Landroid/net/connectivity/android/net/netstats/StatsResult;I)J
    .registers 5
    .param p0, "stats"    # Landroid/net/connectivity/android/net/netstats/StatsResult;
    .param p1, "type"    # I

    .line 1344
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 1345
    :cond_5
    invoke-static {p1}, Landroid/net/TrafficStats;->isEntryValueTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_c

    return-wide v0

    .line 1346
    :cond_c
    packed-switch p1, :pswitch_data_3a

    .line 1356
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bug: Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not reach here."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :pswitch_2e
    iget-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txPackets:J

    return-wide v0

    .line 1352
    :pswitch_31
    iget-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txBytes:J

    return-wide v0

    .line 1350
    :pswitch_34
    iget-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxPackets:J

    return-wide v0

    .line 1348
    :pswitch_37
    iget-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxBytes:J

    return-wide v0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist getIfaceStats(Ljava/lang/String;I)J
    .registers 4
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 1212
    invoke-static {}, Landroid/net/TrafficStats;->maybeGetRateLimitIfaceCache()Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    move-result-object v0

    new-instance v1, Landroid/net/TrafficStats$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/net/TrafficStats$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1, p1}, Landroid/net/TrafficStats;->fetchStats(Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;Ljava/lang/Object;Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getLoopbackRxBytes()J
    .registers 2

    .line 999
    const-string v0, "lo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getLoopbackRxPackets()J
    .registers 2

    .line 987
    const-string v0, "lo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getLoopbackTxBytes()J
    .registers 2

    .line 993
    const-string v0, "lo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getLoopbackTxPackets()J
    .registers 2

    .line 981
    const-string v0, "lo"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-p getMobileIfaces()[Ljava/lang/String;
    .registers 2

    .line 1326
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1327
    :catch_9
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getMobileRxBytes()J
    .registers 8

    .line 854
    const-wide/16 v0, 0x0

    .line 855
    .local v0, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_18

    aget-object v5, v2, v4

    .line 856
    .local v5, "iface":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 855
    .end local v5    # "iface":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 858
    :cond_18
    return-wide v0
.end method

.method public static whitelist getMobileRxPackets()J
    .registers 8

    .line 820
    const-wide/16 v0, 0x0

    .line 821
    .local v0, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_18

    aget-object v5, v2, v4

    .line 822
    .local v5, "iface":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 821
    .end local v5    # "iface":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 824
    :cond_18
    return-wide v0
.end method

.method public static greylist-max-r getMobileTcpRxPackets()J
    .registers 2

    .line 864
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static greylist-max-r getMobileTcpTxPackets()J
    .registers 2

    .line 870
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getMobileTxBytes()J
    .registers 8

    .line 837
    const-wide/16 v0, 0x0

    .line 838
    .local v0, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_18

    aget-object v5, v2, v4

    .line 839
    .local v5, "iface":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 838
    .end local v5    # "iface":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 841
    :cond_18
    return-wide v0
.end method

.method public static whitelist getMobileTxPackets()J
    .registers 8

    .line 803
    const-wide/16 v0, 0x0

    .line 804
    .local v0, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_18

    aget-object v5, v2, v4

    .line 805
    .local v5, "iface":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 804
    .end local v5    # "iface":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 807
    :cond_18
    return-wide v0
.end method

.method private static blacklist getMyUid()I
    .registers 1

    .line 244
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method public static whitelist getRxBytes(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .line 975
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getRxPackets(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .line 937
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized greylist-max-p getStatsService()Landroid/net/INetworkStatsService;
    .registers 4

    const-class v0, Landroid/net/TrafficStats;

    monitor-enter v0

    .line 234
    :try_start_3
    sget-object v1, Landroid/net/TrafficStats;->sStatsServiceForTest:Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/net/TrafficStats;->sStatsServiceForTest:Landroid/net/INetworkStatsService;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_30

    monitor-exit v0

    return-object v1

    .line 235
    :cond_b
    :try_start_b
    sget-object v1, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_13

    .line 239
    sget-object v1, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_30

    monitor-exit v0

    return-object v1

    .line 236
    :cond_13
    :try_start_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TrafficStats not initialized, uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public static whitelist getThreadStatsTag()I
    .registers 1

    .line 570
    sget-object v0, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TrafficStats$UidTag;

    iget v0, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    return v0
.end method

.method public static whitelist getThreadStatsUid()I
    .registers 1

    .line 611
    sget-object v0, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TrafficStats$UidTag;

    iget v0, v0, Landroid/net/TrafficStats$UidTag;->uid:I

    return v0
.end method

.method public static whitelist getTotalRxBytes()J
    .registers 2

    .line 1051
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->getTotalStats(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getTotalRxPackets()J
    .registers 2

    .line 1025
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/TrafficStats;->getTotalStats(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getTotalStats(I)J
    .registers 4
    .param p0, "type"    # I

    .line 1206
    invoke-static {}, Landroid/net/TrafficStats;->maybeGetRateLimitUidCache()Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/net/TrafficStats$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/TrafficStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1, v2, p0}, Landroid/net/TrafficStats;->fetchStats(Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;Ljava/lang/Object;Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getTotalTxBytes()J
    .registers 2

    .line 1038
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/TrafficStats;->getTotalStats(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getTotalTxPackets()J
    .registers 2

    .line 1012
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/TrafficStats;->getTotalStats(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getTxBytes(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .line 956
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getTxPackets(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .line 918
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getUidRxBytes(I)J
    .registers 3
    .param p0, "uid"    # I

    .line 1095
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getUidStats(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getUidRxPackets(I)J
    .registers 3
    .param p0, "uid"    # I

    .line 1139
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getUidStats(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getUidStats(II)J
    .registers 5
    .param p0, "uid"    # I
    .param p1, "type"    # I

    .line 1144
    invoke-static {}, Landroid/net/TrafficStats;->maybeGetRateLimitUidCache()Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/net/TrafficStats$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/net/TrafficStats$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v1, v2, p1}, Landroid/net/TrafficStats;->fetchStats(Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;Ljava/lang/Object;Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getUidTcpRxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1235
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getUidTcpRxSegments(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1279
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getUidTcpTxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1224
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getUidTcpTxSegments(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1268
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getUidTxBytes(I)J
    .registers 3
    .param p0, "uid"    # I

    .line 1073
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getUidStats(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getUidTxPackets(I)J
    .registers 3
    .param p0, "uid"    # I

    .line 1117
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->getUidStats(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getUidUdpRxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1257
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getUidUdpRxPackets(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1301
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getUidUdpTxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1246
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist getUidUdpTxPackets(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1290
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static whitelist incrementOperationCount(I)V
    .registers 2
    .param p0, "operationCount"    # I

    .line 756
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 757
    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 758
    return-void
.end method

.method public static whitelist incrementOperationCount(II)V
    .registers 5
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .line 768
    invoke-static {}, Landroid/net/TrafficStats;->getMyUid()I

    move-result v0

    .line 770
    .local v0, "uid":I
    :try_start_4
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1, v0, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 773
    nop

    .line 774
    return-void

    .line 771
    :catch_d
    move-exception v1

    .line 772
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static declared-synchronized blacklist init(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-class v0, Landroid/net/TrafficStats;

    monitor-enter v0

    .line 303
    :try_start_3
    sget-object v1, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v1, :cond_37

    .line 307
    const-class v1, Landroid/app/usage/NetworkStatsManager;

    .line 308
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    .line 309
    .local v1, "statsManager":Landroid/app/usage/NetworkStatsManager;
    if-nez v1, :cond_2f

    .line 313
    sget-object v2, Landroid/net/TrafficStats;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficStats not initialized, uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_54

    .line 314
    monitor-exit v0

    return-void

    .line 316
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/app/usage/NetworkStatsManager;->getBinder()Landroid/net/INetworkStatsService;

    move-result-object v2

    sput-object v2, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_54

    .line 317
    monitor-exit v0

    return-void

    .line 304
    .end local v1    # "statsManager":Landroid/app/usage/NetworkStatsManager;
    :cond_37
    :try_start_37
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TrafficStats is already initialized, uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    .end local p0    # "context":Landroid/content/Context;
    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_54

    throw p0
.end method

.method private static blacklist initRateLimitCacheLocked()V
    .registers 7

    .line 381
    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    iget-boolean v0, v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    if-eqz v0, :cond_3e

    .line 385
    sget-object v0, Landroid/net/TrafficStats;->sTimeSupplierForTest:Ljava/util/function/LongSupplier;

    if-eqz v0, :cond_d

    .line 386
    sget-object v0, Landroid/net/TrafficStats;->sTimeSupplierForTest:Ljava/util/function/LongSupplier;

    goto :goto_12

    :cond_d
    new-instance v0, Landroid/net/TrafficStats$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/net/TrafficStats$$ExternalSyntheticLambda3;-><init>()V

    :goto_12
    move-object v2, v0

    .line 387
    .local v2, "realtimeSupplier":Ljava/util/function/LongSupplier;
    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    iget v0, v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    int-to-long v3, v0

    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    iget v5, v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    new-instance v6, Landroid/net/TrafficStats$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Landroid/net/TrafficStats$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;-><init>(Ljava/util/function/LongSupplier;JILjava/util/function/Predicate;)V

    sput-object v1, Landroid/net/TrafficStats;->sRateLimitIfaceCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    .line 393
    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    iget v0, v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->expiryDurationMs:I

    int-to-long v3, v0

    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    iget v5, v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->maxEntries:I

    new-instance v6, Landroid/net/TrafficStats$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Landroid/net/TrafficStats$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;-><init>(Ljava/util/function/LongSupplier;JILjava/util/function/Predicate;)V

    sput-object v1, Landroid/net/TrafficStats;->sRateLimitUidCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    .line 399
    .end local v2    # "realtimeSupplier":Ljava/util/function/LongSupplier;
    goto :goto_43

    .line 400
    :cond_3e
    const/4 v0, 0x0

    sput-object v0, Landroid/net/TrafficStats;->sRateLimitIfaceCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    .line 401
    sput-object v0, Landroid/net/TrafficStats;->sRateLimitUidCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    .line 403
    :goto_43
    return-void
.end method

.method private static blacklist isEmpty(Landroid/net/connectivity/android/net/netstats/StatsResult;)Z
    .registers 2
    .param p0, "stats"    # Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 1199
    sget-object v0, Landroid/net/TrafficStats;->EMPTY_STATS:Landroid/net/connectivity/android/net/netstats/StatsResult;

    invoke-virtual {p0, v0}, Landroid/net/connectivity/android/net/netstats/StatsResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isEntryValueTypeValid(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 1363
    packed-switch p0, :pswitch_data_8

    .line 1370
    const/4 v0, 0x0

    return v0

    .line 1368
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$getIfaceStats$5(Ljava/lang/String;)Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 2
    .param p0, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1213
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;)Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getTotalStats$4()Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1207
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->getTotalStats()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getUidStats$3(I)Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 2
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/INetworkStatsService;->getUidStats(I)Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$initRateLimitCacheLocked$0()J
    .registers 2

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$initRateLimitCacheLocked$1(Landroid/net/connectivity/android/net/netstats/StatsResult;)Z
    .registers 2
    .param p0, "statsResult"    # Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 391
    invoke-static {p0}, Landroid/net/TrafficStats;->isEmpty(Landroid/net/connectivity/android/net/netstats/StatsResult;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$initRateLimitCacheLocked$2(Landroid/net/connectivity/android/net/netstats/StatsResult;)Z
    .registers 2
    .param p0, "statsResult"    # Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 397
    invoke-static {p0}, Landroid/net/TrafficStats;->isEmpty(Landroid/net/connectivity/android/net/netstats/StatsResult;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist maybeGetConfigAndInitRateLimitCache(Z)Z
    .registers 4
    .param p0, "forceReinit"    # Z

    .line 355
    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    sget-object v1, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    if-eqz v1, :cond_f

    if-nez p0, :cond_f

    .line 357
    sget-object v1, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    iget-boolean v1, v1, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    monitor-exit v0

    return v1

    .line 359
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_34

    .line 363
    :try_start_10
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->getRateLimitCacheConfig()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_2e

    .line 366
    .local v0, "config":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    nop

    .line 368
    sget-object v1, Landroid/net/TrafficStats;->sRateLimitCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_1c
    sget-object v2, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    if-eqz v2, :cond_22

    if-eqz p0, :cond_27

    .line 370
    :cond_22
    sput-object v0, Landroid/net/TrafficStats;->sRateLimitCacheConfig:Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    .line 371
    invoke-static {}, Landroid/net/TrafficStats;->initRateLimitCacheLocked()V

    .line 373
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2b

    .line 374
    iget-boolean v1, v0, Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;->isCacheEnabled:Z

    return v1

    .line 373
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .line 364
    .end local v0    # "config":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    :catch_2e
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private static blacklist maybeGetRateLimitIfaceCache()Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            ">;"
        }
    .end annotation

    .line 321
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->maybeGetConfigAndInitRateLimitCache(Z)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_9
    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_c
    sget-object v1, Landroid/net/TrafficStats;->sRateLimitIfaceCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    monitor-exit v0

    return-object v1

    .line 324
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static blacklist maybeGetRateLimitUidCache()Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<",
            "Ljava/lang/Integer;",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            ">;"
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->maybeGetConfigAndInitRateLimitCache(Z)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_9
    sget-object v0, Landroid/net/TrafficStats;->sRateLimitCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_c
    sget-object v1, Landroid/net/TrafficStats;->sRateLimitUidCache:Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;

    monitor-exit v0

    return-object v1

    .line 332
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static native blacklist native_tagSocketFd(Ljava/io/FileDescriptor;II)I
.end method

.method private static native blacklist native_untagSocketFd(Ljava/io/FileDescriptor;)I
.end method

.method public static blacklist reinitRateLimitCacheForTest()V
    .registers 1

    .line 276
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/TrafficStats;->maybeGetConfigAndInitRateLimitCache(Z)Z

    .line 277
    return-void
.end method

.method public static blacklist setServiceForTest(Landroid/net/INetworkStatsService;)V
    .registers 1
    .param p0, "statsService"    # Landroid/net/INetworkStatsService;

    .line 254
    sput-object p0, Landroid/net/TrafficStats;->sStatsServiceForTest:Landroid/net/INetworkStatsService;

    .line 255
    return-void
.end method

.method public static whitelist setThreadStatsTag(I)V
    .registers 1
    .param p0, "tag"    # I

    .line 490
    invoke-static {p0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 491
    return-void
.end method

.method public static whitelist setThreadStatsTagApp()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 547
    const/16 v0, -0xfb

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 548
    return-void
.end method

.method public static whitelist setThreadStatsTagBackup()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 522
    const/16 v0, -0xfd

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 523
    return-void
.end method

.method public static blacklist setThreadStatsTagDownload()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 559
    const/16 v0, -0xff

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 560
    return-void
.end method

.method public static whitelist setThreadStatsTagRestore()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 534
    const/16 v0, -0xfc

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 535
    return-void
.end method

.method public static whitelist setThreadStatsUid(I)V
    .registers 2
    .param p0, "uid"    # I

    .line 600
    sget-object v0, Landroid/net/TrafficStats;->sThreadUidTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TrafficStats$UidTag;

    iput p0, v0, Landroid/net/TrafficStats$UidTag;->uid:I

    .line 601
    return-void
.end method

.method public static greylist setThreadStatsUidSelf()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    invoke-static {}, Landroid/net/TrafficStats;->getMyUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 628
    return-void
.end method

.method public static blacklist setTimeSupplierForTest(Ljava/util/function/LongSupplier;)V
    .registers 1
    .param p0, "timeSupplier"    # Ljava/util/function/LongSupplier;

    .line 264
    sput-object p0, Landroid/net/TrafficStats;->sTimeSupplierForTest:Ljava/util/function/LongSupplier;

    .line 265
    return-void
.end method

.method public static greylist-max-o startDataProfiling(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 716
    sget-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_3
    sget-object v1, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v1, :cond_f

    .line 722
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    sput-object v1, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 723
    monitor-exit v0

    .line 724
    return-void

    .line 718
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1

    .line 723
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static greylist-max-o stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 734
    sget-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_3
    sget-object v1, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v1, :cond_16

    .line 740
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 741
    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 743
    .local v2, "profilingDelta":Landroid/net/NetworkStats;
    sput-object v3, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 744
    monitor-exit v0

    return-object v2

    .line 736
    .end local v1    # "profilingStop":Landroid/net/NetworkStats;
    .end local v2    # "profilingDelta":Landroid/net/NetworkStats;
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not profiling data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1

    .line 745
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public static whitelist tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 678
    invoke-static {}, Landroid/net/TrafficStats$SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/DatagramSocket;)V

    .line 679
    return-void
.end method

.method public static whitelist tagFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-static {}, Landroid/net/TrafficStats$SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V

    .line 699
    return-void
.end method

.method public static whitelist tagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 650
    invoke-static {}, Landroid/net/TrafficStats$SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 651
    return-void
.end method

.method public static whitelist untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 685
    invoke-static {}, Landroid/net/TrafficStats$SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/DatagramSocket;)V

    .line 686
    return-void
.end method

.method public static whitelist untagFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    invoke-static {}, Landroid/net/TrafficStats$SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V

    .line 707
    return-void
.end method

.method public static whitelist untagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 665
    invoke-static {}, Landroid/net/TrafficStats$SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 666
    return-void
.end method
