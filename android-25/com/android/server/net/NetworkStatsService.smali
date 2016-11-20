.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$1;,
        Lcom/android/server/net/NetworkStatsService$2;,
        Lcom/android/server/net/NetworkStatsService$3;,
        Lcom/android/server/net/NetworkStatsService$4;,
        Lcom/android/server/net/NetworkStatsService$5;,
        Lcom/android/server/net/NetworkStatsService$6;,
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$HandlerCallback;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final LOGV:Z = false

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static final VT_INTERFACE:Ljava/lang/String; = "vt_data0"


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mGlobalAlertBytes:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

.field private final mSystemDir:Ljava/io/File;

.field private mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I
    .param p3, "accessLevel"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "accessLevel"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkStatsService;[I)V
    .locals 0
    .param p1, "uids"    # [I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Landroid/util/TrustedTime;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/AlarmManager;
    .param p4, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p5, "time"    # Landroid/util/TrustedTime;
    .param p6, "teleManager"    # Landroid/telephony/TelephonyManager;
    .param p7, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    .param p8, "statsObservers"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p9, "systemDir"    # Ljava/io/File;
    .param p10, "baseDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 287
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    #@3
    .line 220
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@a
    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@11
    .line 225
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@18
    .line 229
    const/4 v0, 0x0

    #@19
    new-array v0, v0, [Ljava/lang/String;

    #@1b
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    #@1d
    .line 232
    new-instance v0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;)V

    #@23
    .line 231
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    #@25
    .line 243
    new-instance v0, Landroid/util/SparseIntArray;

    #@27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    #@2c
    .line 246
    new-instance v0, Landroid/net/NetworkStats;

    #@2e
    const-wide/16 v2, 0x0

    #@30
    const/16 v1, 0xa

    #@32
    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    #@35
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@37
    .line 253
    const-wide/32 v0, 0x200000

    #@3a
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@3c
    .line 828
    new-instance v0, Lcom/android/server/net/NetworkStatsService$1;

    #@3e
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@41
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    #@43
    .line 837
    new-instance v0, Lcom/android/server/net/NetworkStatsService$2;

    #@45
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@48
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    #@4a
    .line 849
    new-instance v0, Lcom/android/server/net/NetworkStatsService$3;

    #@4c
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@4f
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@51
    .line 869
    new-instance v0, Lcom/android/server/net/NetworkStatsService$4;

    #@53
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@56
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@58
    .line 889
    new-instance v0, Lcom/android/server/net/NetworkStatsService$5;

    #@5a
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@5d
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    #@5f
    .line 902
    new-instance v0, Lcom/android/server/net/NetworkStatsService$6;

    #@61
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@64
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@66
    .line 291
    const-string/jumbo v0, "missing Context"

    #@69
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Landroid/content/Context;

    #@6f
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@71
    .line 292
    const-string/jumbo v0, "missing INetworkManagementService"

    #@74
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Landroid/os/INetworkManagementService;

    #@7a
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@7c
    .line 293
    const-string/jumbo v0, "missing AlarmManager"

    #@7f
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v0

    #@83
    check-cast v0, Landroid/app/AlarmManager;

    #@85
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    #@87
    .line 294
    const-string/jumbo v0, "missing TrustedTime"

    #@8a
    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Landroid/util/TrustedTime;

    #@90
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@92
    .line 295
    const-string/jumbo v0, "missing NetworkStatsSettings"

    #@95
    invoke-static {p7, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    move-result-object v0

    #@99
    check-cast v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@9b
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@9d
    .line 296
    const-string/jumbo v0, "missing TelephonyManager"

    #@a0
    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a3
    move-result-object v0

    #@a4
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@a6
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    #@a8
    .line 297
    const-string/jumbo v0, "missing WakeLock"

    #@ab
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    move-result-object v0

    #@af
    check-cast v0, Landroid/os/PowerManager$WakeLock;

    #@b1
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b3
    .line 298
    const-string/jumbo v0, "missing NetworkStatsObservers"

    #@b6
    invoke-static {p8, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b9
    move-result-object v0

    #@ba
    check-cast v0, Lcom/android/server/net/NetworkStatsObservers;

    #@bc
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    #@be
    .line 299
    const-string/jumbo v0, "missing systemDir"

    #@c1
    invoke-static {p9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    move-result-object v0

    #@c5
    check-cast v0, Ljava/io/File;

    #@c7
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    #@c9
    .line 300
    const-string/jumbo v0, "missing baseDir"

    #@cc
    invoke-static {p10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    move-result-object v0

    #@d0
    check-cast v0, Ljava/io/File;

    #@d2
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    #@d4
    .line 290
    return-void
.end method

.method private assertBandwidthControlEnabled()V
    .locals 2

    #@0
    .prologue
    .line 1419
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1420
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Bandwidth module disabled"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1418
    :cond_0
    return-void
.end method

.method private bootstrapStatsLocked()V
    .locals 7

    #@0
    .prologue
    .line 1060
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@2
    invoke-interface {v4}, Landroid/util/TrustedTime;->hasCache()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@a
    invoke-interface {v4}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@d
    move-result-wide v0

    #@e
    .line 1064
    .local v0, "currentTime":J
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1059
    :goto_1
    return-void

    #@12
    .line 1061
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v0

    #@16
    .restart local v0    # "currentTime":J
    goto :goto_0

    #@17
    .line 1067
    :catch_0
    move-exception v2

    #@18
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@19
    .line 1065
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    #@1a
    .line 1066
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "NetworkStats"

    #@1d
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "problem reading network stats: "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    goto :goto_1
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 374
    const-string/jumbo v1, "dropbox"

    #@5
    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v8

    #@9
    check-cast v8, Landroid/os/DropBoxManager;

    #@b
    .line 375
    .local v8, "dropBox":Landroid/os/DropBoxManager;
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    #@d
    new-instance v1, Lcom/android/internal/util/FileRotator;

    #@f
    .line 376
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    #@11
    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    #@13
    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    #@15
    move-object v3, p1

    #@16
    .line 375
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    #@19
    .line 377
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    #@1b
    iget-wide v5, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    #@1d
    move-object v3, v8

    #@1e
    move-object v4, p1

    #@1f
    move v7, p3

    #@20
    .line 375
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    #@23
    return-object v0
.end method

.method private checkAccessLevel(Ljava/lang/String;)I
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    .line 606
    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsAccess;->checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkManager"    # Landroid/os/INetworkManagementService;

    #@0
    .prologue
    .line 268
    const-string/jumbo v1, "alarm"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/app/AlarmManager;

    #@9
    .line 269
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    const-string/jumbo v1, "power"

    #@c
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v14

    #@10
    check-cast v14, Landroid/os/PowerManager;

    #@12
    .line 271
    .local v14, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "NetworkStats"

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v14, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@19
    move-result-object v4

    #@1a
    .line 273
    .local v4, "wakeLock":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/net/NetworkStatsService;

    #@1c
    .line 274
    invoke-static {p0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@1f
    move-result-object v5

    #@20
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@23
    move-result-object v6

    #@24
    .line 275
    new-instance v7, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    #@26
    invoke-direct {v7, p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    #@29
    new-instance v8, Lcom/android/server/net/NetworkStatsObservers;

    #@2b
    invoke-direct {v8}, Lcom/android/server/net/NetworkStatsObservers;-><init>()V

    #@2e
    .line 276
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    #@31
    move-result-object v9

    #@32
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultBaseDir()Ljava/io/File;

    #@35
    move-result-object v10

    #@36
    move-object v1, p0

    #@37
    move-object/from16 v2, p1

    #@39
    .line 273
    invoke-direct/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Landroid/util/TrustedTime;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V

    #@3c
    .line 278
    .local v0, "service":Lcom/android/server/net/NetworkStatsService;
    new-instance v13, Landroid/os/HandlerThread;

    #@3e
    const-string/jumbo v1, "NetworkStats"

    #@41
    invoke-direct {v13, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@44
    .line 279
    .local v13, "handlerThread":Landroid/os/HandlerThread;
    new-instance v11, Lcom/android/server/net/NetworkStatsService$HandlerCallback;

    #@46
    invoke-direct {v11, v0}, Lcom/android/server/net/NetworkStatsService$HandlerCallback;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@49
    .line 280
    .local v11, "callback":Landroid/os/Handler$Callback;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    #@4c
    .line 281
    new-instance v12, Landroid/os/Handler;

    #@4e
    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@51
    move-result-object v1

    #@52
    invoke-direct {v12, v1, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@55
    .line 282
    .local v12, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v12, v11}, Lcom/android/server/net/NetworkStatsService;->setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    #@58
    .line 283
    return-object v0
.end method

.method private createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pollOnCreate"    # Z

    #@0
    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@3
    .line 477
    if-eqz p2, :cond_0

    #@5
    .line 478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 480
    .local v0, "ident":J
    const/4 v2, 0x3

    #@a
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 489
    .end local v0    # "ident":J
    :cond_0
    new-instance v2, Lcom/android/server/net/NetworkStatsService$7;

    #@12
    invoke-direct {v2, p0, p1}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@15
    return-object v2

    #@16
    .line 481
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    #@17
    .line 482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 481
    throw v2
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap",
            "<TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    #@0
    .prologue
    .line 1021
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    #@6
    .line 1022
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_0

    #@8
    .line 1023
    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    #@a
    .end local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    #@d
    .line 1024
    .restart local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1026
    :cond_0
    return-object v0
.end method

.method private static getDefaultBaseDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 261
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "netstats"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 262
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 263
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "system"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1381
    :catch_0
    move-exception v0

    #@8
    .line 1382
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "NetworkStats"

    #@b
    const-string/jumbo v2, "problem reading network stats"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1383
    new-instance v1, Landroid/net/NetworkStats;

    #@13
    const-wide/16 v2, 0x0

    #@15
    const/16 v4, 0xa

    #@17
    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    #@1a
    return-object v1
.end method

.method private getNetworkStatsUidDetail()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    const/4 v3, -0x1

    #@3
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    #@6
    move-result-object v1

    #@7
    .line 1331
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    #@a
    move-result-object v0

    #@b
    .line 1332
    .local v0, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    #@e
    .line 1333
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@10
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    #@13
    .line 1335
    return-object v1
.end method

.method private getNetworkStatsXtAndVt()Landroid/net/NetworkStats;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v9, -0x1

    #@3
    .line 1342
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v6}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    #@8
    move-result-object v5

    #@9
    .line 1344
    .local v5, "xtSnapshot":Landroid/net/NetworkStats;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@b
    .line 1345
    const-string/jumbo v7, "phone"

    #@e
    .line 1344
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@14
    .line 1347
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVtDataUsage()J

    #@17
    move-result-wide v2

    #@18
    .line 1351
    .local v2, "usage":J
    new-instance v4, Landroid/net/NetworkStats;

    #@1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v6

    #@1e
    const/4 v8, 0x1

    #@1f
    invoke-direct {v4, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@22
    .line 1353
    .local v4, "vtSnapshot":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@24
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@27
    .line 1354
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const-string/jumbo v6, "vt_data0"

    #@2a
    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@2c
    .line 1355
    iput v9, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@2e
    .line 1356
    iput v9, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@30
    .line 1357
    const/4 v6, 0x0

    #@31
    iput v6, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@33
    .line 1362
    const-wide/16 v6, 0x2

    #@35
    div-long v6, v2, v6

    #@37
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@39
    .line 1363
    iput-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@3b
    .line 1364
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@3d
    sub-long v6, v2, v6

    #@3f
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@41
    .line 1365
    iput-wide v10, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@43
    .line 1366
    invoke-virtual {v4, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@46
    .line 1369
    invoke-virtual {v5, v4}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    #@49
    .line 1371
    return-object v5
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I
    .param p3, "accessLevel"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 630
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    #@3
    const/4 v4, 0x0

    #@4
    move-object v1, p1

    #@5
    move v3, v2

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIII)Landroid/net/NetworkStatsHistory;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "accessLevel"    # I

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    move v6, p6

    #@6
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 1425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1427
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@6
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    .line 1432
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 1427
    return v1

    #@e
    .line 1428
    :catch_0
    move-exception v0

    #@f
    .line 1430
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    .line 1432
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 1430
    return v1

    #@14
    .line 1431
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@15
    .line 1432
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 1431
    throw v1
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 5

    #@0
    .prologue
    .line 408
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@2
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    #@4
    const-string/jumbo v4, "netstats.bin"

    #@7
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    .line 409
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 410
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@12
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    #@15
    .line 411
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@18
    .line 414
    :cond_0
    new-instance v2, Ljava/io/File;

    #@1a
    .end local v2    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    #@1c
    const-string/jumbo v4, "netstats_xt.bin"

    #@1f
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@22
    .line 415
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 416
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@2b
    .line 419
    :cond_1
    new-instance v2, Ljava/io/File;

    #@2d
    .end local v2    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    #@2f
    const-string/jumbo v4, "netstats_uid.bin"

    #@32
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    .line 420
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 421
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3d
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    #@40
    .line 422
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@42
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    #@45
    .line 423
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 405
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    #@49
    .line 427
    :catch_0
    move-exception v1

    #@4a
    .line 428
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "NetworkStats"

    #@4d
    const-string/jumbo v4, "problem during legacy upgrade"

    #@50
    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0

    #@54
    .line 425
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    #@55
    .line 426
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NetworkStats"

    #@58
    const-string/jumbo v4, "problem during legacy upgrade"

    #@5b
    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    goto :goto_0
.end method

.method private performPoll(I)V
    .locals 4
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@2
    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    #@5
    move-result-wide v0

    #@6
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@8
    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    #@b
    move-result-wide v2

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_0

    #@10
    .line 1075
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@12
    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    #@15
    .line 1078
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@17
    monitor-enter v1

    #@18
    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 1082
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 1084
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    monitor-exit v1

    #@26
    .line 1072
    return-void

    #@27
    .line 1083
    :catchall_0
    move-exception v0

    #@28
    .line 1084
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2a
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2d
    .line 1083
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2e
    .line 1078
    :catchall_1
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method private performPollLocked(I)V
    .locals 13
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1094
    iget-boolean v10, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@2
    if-nez v10, :cond_0

    #@4
    return-void

    #@5
    .line 1097
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v8

    #@9
    .line 1099
    .local v8, "startRealtime":J
    and-int/lit8 v10, p1, 0x1

    #@b
    if-eqz v10, :cond_3

    #@d
    const/4 v5, 0x1

    #@e
    .line 1100
    .local v5, "persistNetwork":Z
    :goto_0
    and-int/lit8 v10, p1, 0x2

    #@10
    if-eqz v10, :cond_4

    #@12
    const/4 v6, 0x1

    #@13
    .line 1101
    .local v6, "persistUid":Z
    :goto_1
    and-int/lit16 v10, p1, 0x100

    #@15
    if-eqz v10, :cond_5

    #@17
    const/4 v4, 0x1

    #@18
    .line 1104
    .local v4, "persistForce":Z
    :goto_2
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@1a
    invoke-interface {v10}, Landroid/util/TrustedTime;->hasCache()Z

    #@1d
    move-result v10

    #@1e
    if-eqz v10, :cond_6

    #@20
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@22
    invoke-interface {v10}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@25
    move-result-wide v0

    #@26
    .line 1108
    .local v0, "currentTime":J
    :goto_3
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1118
    if-eqz v4, :cond_7

    #@2b
    .line 1119
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2d
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@30
    .line 1120
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@32
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@35
    .line 1121
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@37
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3a
    .line 1122
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3c
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3f
    .line 1139
    :cond_1
    :goto_4
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@41
    invoke-interface {v10}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    #@44
    move-result v10

    #@45
    if-eqz v10, :cond_2

    #@47
    .line 1141
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    #@4a
    .line 1145
    :cond_2
    new-instance v7, Landroid/content/Intent;

    #@4c
    const-string/jumbo v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    #@4f
    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@52
    .line 1146
    .local v7, "updatedIntent":Landroid/content/Intent;
    const/high16 v10, 0x40000000    # 2.0f

    #@54
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@57
    .line 1147
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@59
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5b
    .line 1148
    const-string/jumbo v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5e
    .line 1147
    invoke-virtual {v10, v7, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@61
    .line 1093
    return-void

    #@62
    .line 1099
    .end local v0    # "currentTime":J
    .end local v4    # "persistForce":Z
    .end local v5    # "persistNetwork":Z
    .end local v6    # "persistUid":Z
    .end local v7    # "updatedIntent":Landroid/content/Intent;
    :cond_3
    const/4 v5, 0x0

    #@63
    .restart local v5    # "persistNetwork":Z
    goto :goto_0

    #@64
    .line 1100
    :cond_4
    const/4 v6, 0x0

    #@65
    .restart local v6    # "persistUid":Z
    goto :goto_1

    #@66
    .line 1101
    :cond_5
    const/4 v4, 0x0

    #@67
    .restart local v4    # "persistForce":Z
    goto :goto_2

    #@68
    .line 1105
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6b
    move-result-wide v0

    #@6c
    .restart local v0    # "currentTime":J
    goto :goto_3

    #@6d
    .line 1112
    :catch_0
    move-exception v2

    #@6e
    .line 1114
    .local v2, "e":Landroid/os/RemoteException;
    return-void

    #@6f
    .line 1109
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    #@70
    .line 1110
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v10, "NetworkStats"

    #@73
    const-string/jumbo v11, "problem reading network stats"

    #@76
    invoke-static {v10, v11, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79
    .line 1111
    return-void

    #@7a
    .line 1124
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    if-eqz v5, :cond_8

    #@7c
    .line 1125
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@7e
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@81
    .line 1126
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@83
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@86
    .line 1128
    :cond_8
    if-eqz v6, :cond_1

    #@88
    .line 1129
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@8a
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@8d
    .line 1130
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@8f
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@92
    goto :goto_4
.end method

.method private performSampleLocked()V
    .locals 32

    #@0
    .prologue
    .line 1156
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@4
    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@e
    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@11
    move-result-wide v26

    #@12
    .line 1164
    .local v26, "trustedTime":J
    :goto_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    #@15
    move-result-object v29

    #@16
    .line 1165
    .local v29, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1a
    move-object/from16 v0, v29

    #@1c
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    #@1f
    move-result-object v28

    #@20
    .line 1166
    .local v28, "devTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@24
    move-object/from16 v0, v29

    #@26
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    #@29
    move-result-object v31

    #@2a
    .line 1167
    .local v31, "xtTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2e
    move-object/from16 v0, v29

    #@30
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    #@33
    move-result-object v30

    #@34
    .line 1170
    .local v30, "uidTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, v28

    #@36
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@38
    move-object/from16 v0, v28

    #@3a
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@3c
    move-object/from16 v0, v28

    #@3e
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@40
    move-object/from16 v0, v28

    #@42
    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@44
    .line 1171
    move-object/from16 v0, v31

    #@46
    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@48
    move-object/from16 v0, v31

    #@4a
    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@4c
    move-object/from16 v0, v31

    #@4e
    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@50
    move-object/from16 v0, v31

    #@52
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@54
    move-wide/from16 v16, v0

    #@56
    .line 1172
    move-object/from16 v0, v30

    #@58
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@5a
    move-wide/from16 v18, v0

    #@5c
    move-object/from16 v0, v30

    #@5e
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@60
    move-wide/from16 v20, v0

    #@62
    move-object/from16 v0, v30

    #@64
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@66
    move-wide/from16 v22, v0

    #@68
    move-object/from16 v0, v30

    #@6a
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@6c
    move-wide/from16 v24, v0

    #@6e
    .line 1169
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    #@71
    .line 1176
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    #@74
    move-result-object v29

    #@75
    .line 1177
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@79
    move-object/from16 v0, v29

    #@7b
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    #@7e
    move-result-object v28

    #@7f
    .line 1178
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@83
    move-object/from16 v0, v29

    #@85
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    #@88
    move-result-object v31

    #@89
    .line 1179
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@8d
    move-object/from16 v0, v29

    #@8f
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    #@92
    move-result-object v30

    #@93
    .line 1182
    move-object/from16 v0, v28

    #@95
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@97
    move-object/from16 v0, v28

    #@99
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@9b
    move-object/from16 v0, v28

    #@9d
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@9f
    move-object/from16 v0, v28

    #@a1
    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@a3
    .line 1183
    move-object/from16 v0, v31

    #@a5
    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@a7
    move-object/from16 v0, v31

    #@a9
    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@ab
    move-object/from16 v0, v31

    #@ad
    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@af
    move-object/from16 v0, v31

    #@b1
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@b3
    move-wide/from16 v16, v0

    #@b5
    .line 1184
    move-object/from16 v0, v30

    #@b7
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@b9
    move-wide/from16 v18, v0

    #@bb
    move-object/from16 v0, v30

    #@bd
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@bf
    move-wide/from16 v20, v0

    #@c1
    move-object/from16 v0, v30

    #@c3
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@c5
    move-wide/from16 v22, v0

    #@c7
    move-object/from16 v0, v30

    #@c9
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@cb
    move-wide/from16 v24, v0

    #@cd
    .line 1181
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    #@d0
    .line 1154
    return-void

    #@d1
    .line 1156
    .end local v26    # "trustedTime":J
    .end local v28    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v29    # "template":Landroid/net/NetworkTemplate;
    .end local v30    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .end local v31    # "xtTotal":Landroid/net/NetworkStats$Entry;
    :cond_0
    const-wide/16 v26, -0x1

    #@d3
    .restart local v26    # "trustedTime":J
    goto/16 :goto_0
.end method

.method private recordSnapshotLocked(J)V
    .locals 15
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    #@3
    move-result-object v8

    #@4
    .line 1033
    .local v8, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsXtAndVt()Landroid/net/NetworkStats;

    #@7
    move-result-object v14

    #@8
    .line 1034
    .local v14, "xtSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@a
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    #@d
    move-result-object v1

    #@e
    .line 1039
    .local v1, "devSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@10
    .line 1040
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@12
    const/4 v3, 0x0

    #@13
    move-wide/from16 v4, p1

    #@15
    .line 1039
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@18
    .line 1041
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1a
    .line 1042
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@1c
    const/4 v5, 0x0

    #@1d
    move-object v3, v14

    #@1e
    move-wide/from16 v6, p1

    #@20
    .line 1041
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@23
    .line 1045
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    #@25
    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    #@28
    move-result-object v5

    #@29
    .line 1046
    .local v5, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2b
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@2d
    move-object v3, v8

    #@2e
    move-wide/from16 v6, p1

    #@30
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@33
    .line 1047
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@35
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@37
    move-object v3, v8

    #@38
    move-wide/from16 v6, p1

    #@3a
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@3d
    .line 1051
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    #@3f
    new-instance v9, Landroid/util/ArrayMap;

    #@41
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@43
    invoke-direct {v9, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@46
    .line 1052
    new-instance v10, Landroid/util/ArrayMap;

    #@48
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@4a
    invoke-direct {v10, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@4d
    move-object v7, v14

    #@4e
    move-object v11, v5

    #@4f
    move-wide/from16 v12, p1

    #@51
    .line 1051
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/net/NetworkStatsObservers;->updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V

    #@54
    .line 1029
    return-void
.end method

.method private registerGlobalAlert()V
    .locals 6

    #@0
    .prologue
    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    #@4
    invoke-interface {v2, v4, v5}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@7
    .line 454
    :goto_0
    return-void

    #@8
    .line 457
    :catch_0
    move-exception v1

    #@9
    .line 458
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkStats"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "problem registering for global alert: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_0

    #@24
    .line 459
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 437
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 438
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    #@7
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@9
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@c
    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@e
    new-instance v1, Landroid/content/Intent;

    #@10
    const-string/jumbo v4, "com.android.server.action.NETWORK_STATS_POLL"

    #@13
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 441
    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@1c
    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1f
    move-result-wide v2

    #@20
    .line 445
    .local v2, "currentRealtime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    #@22
    .line 446
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@24
    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    #@27
    move-result-wide v4

    #@28
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@2a
    .line 445
    const/4 v1, 0x3

    #@2b
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    #@2e
    .line 436
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .locals 3
    .param p1, "uids"    # [I

    #@0
    .prologue
    .line 1195
    const/4 v1, 0x3

    #@1
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    #@4
    .line 1197
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    #@9
    .line 1198
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@b
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    #@e
    .line 1201
    const/4 v1, 0x0

    #@f
    array-length v2, p1

    #@10
    :goto_0
    if-ge v1, v2, :cond_0

    #@12
    aget v0, p1, v1

    #@14
    .line 1202
    .local v0, "uid":I
    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    #@17
    .line 1201
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1191
    .end local v0    # "uid":I
    :cond_0
    return-void
.end method

.method private removeUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1213
    const/4 v5, 0x0

    #@1
    new-array v4, v5, [I

    #@3
    .line 1214
    .local v4, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v5

    #@9
    .line 1215
    const/16 v6, 0x2200

    #@b
    .line 1214
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    .line 1216
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@1f
    .line 1217
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@21
    invoke-static {p1, v5}, Landroid/os/UserHandle;->getUid(II)I

    #@24
    move-result v3

    #@25
    .line 1218
    .local v3, "uid":I
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@28
    move-result-object v4

    #@29
    goto :goto_0

    #@2a
    .line 1221
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "uid":I
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    #@2d
    .line 1209
    return-void
.end method

.method private shutdownLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 381
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@3
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@8
    .line 382
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@a
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 383
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@11
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@16
    .line 384
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@18
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@1d
    .line 386
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@1f
    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@27
    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@2a
    move-result-wide v0

    #@2b
    .line 390
    .local v0, "currentTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2d
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@30
    .line 391
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@32
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@35
    .line 392
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@37
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3a
    .line 393
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3c
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3f
    .line 395
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@41
    .line 396
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@43
    .line 397
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@45
    .line 398
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@47
    .line 400
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    #@49
    .line 402
    const/4 v2, 0x0

    #@4a
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@4c
    .line 380
    return-void

    #@4d
    .line 387
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@50
    move-result-wide v0

    #@51
    .restart local v0    # "currentTime":J
    goto :goto_0
.end method

.method private updateIfaces()V
    .locals 3

    #@0
    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 924
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    .line 926
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10
    monitor-exit v1

    #@11
    .line 920
    return-void

    #@12
    .line 925
    :catchall_0
    move-exception v0

    #@13
    .line 926
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@15
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@18
    .line 925
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19
    .line 921
    :catchall_1
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 23

    #@0
    .prologue
    .line 938
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@4
    if-nez v3, :cond_0

    #@6
    return-void

    #@7
    .line 947
    :cond_0
    const/4 v3, 0x1

    #@8
    move-object/from16 v0, p0

    #@a
    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    #@d
    .line 952
    :try_start_0
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    #@11
    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    #@14
    move-result-object v20

    #@15
    .line 953
    .local v20, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    #@19
    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v9

    #@1d
    .line 959
    .local v9, "activeLink":Landroid/net/LinkProperties;
    if-eqz v9, :cond_4

    #@1f
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    :goto_0
    move-object/from16 v0, p0

    #@25
    iput-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    #@27
    .line 962
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@2e
    .line 963
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@32
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@35
    .line 965
    new-instance v14, Landroid/util/ArraySet;

    #@37
    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    #@3a
    .line 966
    .local v14, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@3b
    move-object/from16 v0, v20

    #@3d
    array-length v0, v0

    #@3e
    move/from16 v22, v0

    #@40
    move/from16 v21, v3

    #@42
    :goto_1
    move/from16 v0, v21

    #@44
    move/from16 v1, v22

    #@46
    if-ge v0, v1, :cond_7

    #@48
    aget-object v19, v20, v21

    #@4a
    .line 967
    .local v19, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v19

    #@4c
    iget-object v3, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@4e
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_6

    #@54
    .line 968
    move-object/from16 v0, v19

    #@56
    iget-object v3, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@58
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    #@5b
    move-result v3

    #@5c
    invoke-static {v3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@5f
    move-result v13

    #@60
    .line 969
    .local v13, "isMobile":Z
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@64
    move-object/from16 v0, v19

    #@66
    invoke-static {v3, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@69
    move-result-object v12

    #@6a
    .line 973
    .local v12, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v19

    #@6c
    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@6e
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@71
    move-result-object v10

    #@72
    .line 974
    .local v10, "baseIface":Ljava/lang/String;
    if-eqz v10, :cond_2

    #@74
    .line 975
    move-object/from16 v0, p0

    #@76
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@78
    invoke-static {v3, v10}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@7f
    .line 976
    move-object/from16 v0, p0

    #@81
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@83
    invoke-static {v3, v10}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@8a
    .line 983
    move-object/from16 v0, v19

    #@8c
    iget-object v3, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8e
    .line 984
    const/4 v4, 0x4

    #@8f
    .line 983
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_1

    #@95
    .line 984
    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getMetered()Z

    #@98
    move-result v3

    #@99
    if-eqz v3, :cond_5

    #@9b
    .line 994
    :cond_1
    :goto_2
    if-eqz v13, :cond_2

    #@9d
    .line 995
    invoke-virtual {v14, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@a0
    .line 1003
    :cond_2
    move-object/from16 v0, v19

    #@a2
    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@a4
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@a7
    move-result-object v18

    #@a8
    .line 1004
    .local v18, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ab
    move-result-object v17

    #@ac
    .local v17, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@af
    move-result v3

    #@b0
    if-eqz v3, :cond_6

    #@b2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b5
    move-result-object v16

    #@b6
    check-cast v16, Landroid/net/LinkProperties;

    #@b8
    .line 1005
    .local v16, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@bb
    move-result-object v15

    #@bc
    .line 1006
    .local v15, "stackedIface":Ljava/lang/String;
    if-eqz v15, :cond_3

    #@be
    .line 1007
    move-object/from16 v0, p0

    #@c0
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@c2
    invoke-static {v3, v15}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {v3, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@c9
    .line 1008
    if-eqz v13, :cond_3

    #@cb
    .line 1009
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@ce
    goto :goto_3

    #@cf
    .line 954
    .end local v9    # "activeLink":Landroid/net/LinkProperties;
    .end local v10    # "baseIface":Ljava/lang/String;
    .end local v12    # "ident":Landroid/net/NetworkIdentity;
    .end local v13    # "isMobile":Z
    .end local v14    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "stackedIface":Ljava/lang/String;
    .end local v16    # "stackedLink":Landroid/net/LinkProperties;
    .end local v17    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v18    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v19    # "state":Landroid/net/NetworkState;
    .end local v20    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v11

    #@d0
    .line 956
    .local v11, "e":Landroid/os/RemoteException;
    return-void

    #@d1
    .line 959
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v9    # "activeLink":Landroid/net/LinkProperties;
    .restart local v20    # "states":[Landroid/net/NetworkState;
    :cond_4
    const/4 v3, 0x0

    #@d2
    goto/16 :goto_0

    #@d4
    .line 987
    .restart local v10    # "baseIface":Ljava/lang/String;
    .restart local v12    # "ident":Landroid/net/NetworkIdentity;
    .restart local v13    # "isMobile":Z
    .restart local v14    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "state":Landroid/net/NetworkState;
    :cond_5
    new-instance v2, Landroid/net/NetworkIdentity;

    #@d6
    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getType()I

    #@d9
    move-result v3

    #@da
    .line 988
    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getSubType()I

    #@dd
    move-result v4

    #@de
    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    #@e1
    move-result-object v5

    #@e2
    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    #@e5
    move-result-object v6

    #@e6
    .line 989
    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getRoaming()Z

    #@e9
    move-result v7

    #@ea
    const/4 v8, 0x1

    #@eb
    .line 987
    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@ee
    .line 990
    .local v2, "vtIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    #@f0
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@f2
    const-string/jumbo v4, "vt_data0"

    #@f5
    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@f8
    move-result-object v3

    #@f9
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@fc
    .line 991
    move-object/from16 v0, p0

    #@fe
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@100
    const-string/jumbo v4, "vt_data0"

    #@103
    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@106
    move-result-object v3

    #@107
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@10a
    goto :goto_2

    #@10b
    .line 966
    .end local v2    # "vtIdent":Landroid/net/NetworkIdentity;
    .end local v10    # "baseIface":Ljava/lang/String;
    .end local v12    # "ident":Landroid/net/NetworkIdentity;
    .end local v13    # "isMobile":Z
    :cond_6
    add-int/lit8 v3, v21, 0x1

    #@10d
    move/from16 v21, v3

    #@10f
    goto/16 :goto_1

    #@111
    .line 1016
    .end local v19    # "state":Landroid/net/NetworkState;
    :cond_7
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    #@114
    move-result v3

    #@115
    new-array v3, v3, [Ljava/lang/String;

    #@117
    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11a
    move-result-object v3

    #@11b
    check-cast v3, [Ljava/lang/String;

    #@11d
    move-object/from16 v0, p0

    #@11f
    iput-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    #@121
    .line 937
    return-void
.end method

.method private updatePersistThresholds()V
    .locals 4

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@4
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@6
    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    #@d
    .line 819
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@f
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@11
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@13
    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    #@16
    move-result-wide v2

    #@17
    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    #@1a
    .line 820
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1c
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@1e
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@20
    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    #@23
    move-result-wide v2

    #@24
    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    #@27
    .line 821
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@29
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@2b
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@2d
    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    #@30
    move-result-wide v2

    #@31
    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    #@34
    .line 822
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@36
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@38
    invoke-interface {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    #@3b
    move-result-wide v0

    #@3c
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    #@3e
    .line 817
    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 9
    .param p1, "thresholdBytes"    # J

    #@0
    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    #@5
    const-string/jumbo v2, "NetworkStats"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 746
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 749
    const-wide/32 v2, 0x20000

    #@11
    const-wide/32 v4, 0x200000

    #@14
    move-wide v0, p1

    #@15
    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@1b
    .line 756
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@1d
    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@25
    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@28
    move-result-wide v6

    #@29
    .line 758
    .local v6, "currentTime":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@2b
    monitor-enter v1

    #@2c
    .line 759
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    if-nez v0, :cond_1

    #@30
    monitor-exit v1

    #@31
    return-void

    #@32
    .line 757
    .end local v6    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@35
    move-result-wide v6

    #@36
    .restart local v6    # "currentTime":J
    goto :goto_0

    #@37
    .line 761
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    #@3a
    .line 763
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3c
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@3f
    .line 764
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@41
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@44
    .line 765
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@46
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@49
    .line 766
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@4b
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    monitor-exit v1

    #@4f
    .line 770
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    #@52
    .line 744
    return-void

    #@53
    .line 758
    :catchall_0
    move-exception v0

    #@54
    monitor-exit v1

    #@55
    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    #@0
    .prologue
    .line 310
    const-string/jumbo v0, "missing IConnectivityManager"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/net/IConnectivityManager;

    #@9
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    #@b
    .line 309
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1226
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v3, "android.permission.DUMP"

    #@7
    const-string/jumbo v20, "NetworkStats"

    #@a
    move-object/from16 v0, v20

    #@c
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1228
    const-wide/32 v12, 0x5265c00

    #@12
    .line 1229
    .local v12, "duration":J
    new-instance v9, Ljava/util/HashSet;

    #@14
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #@17
    .line 1230
    .local v9, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@18
    move-object/from16 v0, p3

    #@1a
    array-length v3, v0

    #@1b
    :goto_0
    if-ge v2, v3, :cond_1

    #@1d
    aget-object v8, p3, v2

    #@1f
    .line 1231
    .local v8, "arg":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@22
    .line 1233
    const-string/jumbo v20, "--duration="

    #@25
    move-object/from16 v0, v20

    #@27
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v20

    #@2b
    if-eqz v20, :cond_0

    #@2d
    .line 1235
    const/16 v20, 0xb

    #@2f
    :try_start_0
    move/from16 v0, v20

    #@31
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v20

    #@35
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-wide v12

    #@39
    .line 1230
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1242
    .end local v8    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "--poll"

    #@3f
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-nez v2, :cond_2

    #@45
    const-string/jumbo v2, "poll"

    #@48
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@4b
    move-result v18

    #@4c
    .line 1243
    :goto_2
    const-string/jumbo v2, "--checkin"

    #@4f
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@52
    move-result v10

    #@53
    .line 1244
    .local v10, "checkin":Z
    const-string/jumbo v2, "--full"

    #@56
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@59
    move-result v2

    #@5a
    if-nez v2, :cond_3

    #@5c
    const-string/jumbo v2, "full"

    #@5f
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@62
    move-result v11

    #@63
    .line 1245
    :goto_3
    const-string/jumbo v2, "--uid"

    #@66
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@69
    move-result v2

    #@6a
    if-nez v2, :cond_4

    #@6c
    const-string/jumbo v2, "detail"

    #@6f
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@72
    move-result v17

    #@73
    .line 1246
    :goto_4
    const-string/jumbo v2, "--tag"

    #@76
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@79
    move-result v2

    #@7a
    if-nez v2, :cond_5

    #@7c
    const-string/jumbo v2, "detail"

    #@7f
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@82
    move-result v16

    #@83
    .line 1248
    :goto_5
    new-instance v19, Lcom/android/internal/util/IndentingPrintWriter;

    #@85
    const-string/jumbo v2, "  "

    #@88
    move-object/from16 v0, v19

    #@8a
    move-object/from16 v1, p2

    #@8c
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8f
    .line 1250
    .local v19, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@93
    move-object/from16 v20, v0

    #@95
    monitor-enter v20

    #@96
    .line 1251
    if-eqz v18, :cond_6

    #@98
    .line 1252
    const/16 v2, 0x103

    #@9a
    :try_start_1
    move-object/from16 v0, p0

    #@9c
    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    #@9f
    .line 1253
    const-string/jumbo v2, "Forced poll"

    #@a2
    move-object/from16 v0, v19

    #@a4
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    monitor-exit v20

    #@a8
    .line 1254
    return-void

    #@a9
    .line 1242
    .end local v10    # "checkin":Z
    .end local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_2
    const/16 v18, 0x1

    #@ab
    .local v18, "poll":Z
    goto :goto_2

    #@ac
    .line 1244
    .end local v18    # "poll":Z
    .restart local v10    # "checkin":Z
    :cond_3
    const/4 v11, 0x1

    #@ad
    .local v11, "fullHistory":Z
    goto :goto_3

    #@ae
    .line 1245
    .end local v11    # "fullHistory":Z
    :cond_4
    const/16 v17, 0x1

    #@b0
    .local v17, "includeUid":Z
    goto :goto_4

    #@b1
    .line 1246
    .end local v17    # "includeUid":Z
    :cond_5
    const/16 v16, 0x1

    #@b3
    .local v16, "includeTag":Z
    goto :goto_5

    #@b4
    .line 1257
    .end local v16    # "includeTag":Z
    .restart local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_6
    if-eqz v10, :cond_9

    #@b6
    .line 1258
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b9
    move-result-wide v6

    #@ba
    .line 1259
    .local v6, "end":J
    sub-long v4, v6, v12

    #@bc
    .line 1261
    .local v4, "start":J
    const-string/jumbo v2, "v1,"

    #@bf
    move-object/from16 v0, v19

    #@c1
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c4
    .line 1262
    const-wide/16 v2, 0x3e8

    #@c6
    div-long v2, v4, v2

    #@c8
    move-object/from16 v0, v19

    #@ca
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@cd
    const/16 v2, 0x2c

    #@cf
    move-object/from16 v0, v19

    #@d1
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    #@d4
    .line 1263
    const-wide/16 v2, 0x3e8

    #@d6
    div-long v2, v6, v2

    #@d8
    move-object/from16 v0, v19

    #@da
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@dd
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@e0
    .line 1265
    const-string/jumbo v2, "xt"

    #@e3
    move-object/from16 v0, v19

    #@e5
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e8
    .line 1266
    move-object/from16 v0, p0

    #@ea
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@ec
    move-object/from16 v3, p2

    #@ee
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    #@f1
    .line 1268
    if-eqz v17, :cond_7

    #@f3
    .line 1269
    const-string/jumbo v2, "uid"

    #@f6
    move-object/from16 v0, v19

    #@f8
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@fb
    .line 1270
    move-object/from16 v0, p0

    #@fd
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@ff
    move-object/from16 v3, p2

    #@101
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    #@104
    .line 1272
    :cond_7
    if-eqz v16, :cond_8

    #@106
    .line 1273
    const-string/jumbo v2, "tag"

    #@109
    move-object/from16 v0, v19

    #@10b
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@10e
    .line 1274
    move-object/from16 v0, p0

    #@110
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@112
    move-object/from16 v3, p2

    #@114
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@117
    :cond_8
    monitor-exit v20

    #@118
    .line 1276
    return-void

    #@119
    .line 1279
    .end local v4    # "start":J
    .end local v6    # "end":J
    :cond_9
    :try_start_3
    const-string/jumbo v2, "Active interfaces:"

    #@11c
    move-object/from16 v0, v19

    #@11e
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@121
    .line 1280
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@124
    .line 1281
    const/4 v14, 0x0

    #@125
    .local v14, "i":I
    :goto_6
    move-object/from16 v0, p0

    #@127
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@129
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@12c
    move-result v2

    #@12d
    if-ge v14, v2, :cond_a

    #@12f
    .line 1282
    const-string/jumbo v2, "iface"

    #@132
    move-object/from16 v0, p0

    #@134
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@136
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@139
    move-result-object v3

    #@13a
    move-object/from16 v0, v19

    #@13c
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@13f
    .line 1283
    const-string/jumbo v2, "ident"

    #@142
    move-object/from16 v0, p0

    #@144
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@146
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@149
    move-result-object v3

    #@14a
    move-object/from16 v0, v19

    #@14c
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@14f
    .line 1284
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@152
    .line 1281
    add-int/lit8 v14, v14, 0x1

    #@154
    goto :goto_6

    #@155
    .line 1286
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@158
    .line 1288
    const-string/jumbo v2, "Active UID interfaces:"

    #@15b
    move-object/from16 v0, v19

    #@15d
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@160
    .line 1289
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@163
    .line 1290
    const/4 v14, 0x0

    #@164
    :goto_7
    move-object/from16 v0, p0

    #@166
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@168
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@16b
    move-result v2

    #@16c
    if-ge v14, v2, :cond_b

    #@16e
    .line 1291
    const-string/jumbo v2, "iface"

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@175
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@178
    move-result-object v3

    #@179
    move-object/from16 v0, v19

    #@17b
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@17e
    .line 1292
    const-string/jumbo v2, "ident"

    #@181
    move-object/from16 v0, p0

    #@183
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@185
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@188
    move-result-object v3

    #@189
    move-object/from16 v0, v19

    #@18b
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@18e
    .line 1293
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@191
    .line 1290
    add-int/lit8 v14, v14, 0x1

    #@193
    goto :goto_7

    #@194
    .line 1295
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@197
    .line 1297
    const-string/jumbo v2, "Dev stats:"

    #@19a
    move-object/from16 v0, v19

    #@19c
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19f
    .line 1298
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1a2
    .line 1299
    move-object/from16 v0, p0

    #@1a4
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1a6
    move-object/from16 v0, v19

    #@1a8
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1ab
    .line 1300
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1ae
    .line 1302
    const-string/jumbo v2, "Xt stats:"

    #@1b1
    move-object/from16 v0, v19

    #@1b3
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1b6
    .line 1303
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1b9
    .line 1304
    move-object/from16 v0, p0

    #@1bb
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1bd
    move-object/from16 v0, v19

    #@1bf
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1c2
    .line 1305
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1c5
    .line 1307
    if-eqz v17, :cond_c

    #@1c7
    .line 1308
    const-string/jumbo v2, "UID stats:"

    #@1ca
    move-object/from16 v0, v19

    #@1cc
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1cf
    .line 1309
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1d2
    .line 1310
    move-object/from16 v0, p0

    #@1d4
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1d6
    move-object/from16 v0, v19

    #@1d8
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1db
    .line 1311
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1de
    .line 1314
    :cond_c
    if-eqz v16, :cond_d

    #@1e0
    .line 1315
    const-string/jumbo v2, "UID tag stats:"

    #@1e3
    move-object/from16 v0, v19

    #@1e5
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1e8
    .line 1316
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1eb
    .line 1317
    move-object/from16 v0, p0

    #@1ed
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1ef
    move-object/from16 v0, v19

    #@1f1
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1f4
    .line 1318
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1f7
    :cond_d
    monitor-exit v20

    #@1f8
    .line 1225
    return-void

    #@1f9
    .line 1250
    .end local v14    # "i":I
    :catchall_0
    move-exception v2

    #@1fa
    monitor-exit v20

    #@1fb
    throw v2

    #@1fc
    .line 1236
    .end local v10    # "checkin":Z
    .end local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v15

    #@1fd
    .local v15, "ignored":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method public forceUpdate()V
    .locals 5

    #@0
    .prologue
    .line 732
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5
    const-string/jumbo v4, "NetworkStats"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 733
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 737
    .local v0, "token":J
    const/4 v2, 0x3

    #@13
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 731
    return-void

    #@1a
    .line 738
    :catchall_0
    move-exception v2

    #@1b
    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 738
    throw v2
.end method

.method public forceUpdateIfaces()V
    .locals 5

    #@0
    .prologue
    .line 719
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5
    const-string/jumbo v4, "NetworkStats"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 720
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 724
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 718
    return-void

    #@19
    .line 725
    :catchall_0
    move-exception v2

    #@1a
    .line 726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 725
    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    if-eq v6, p1, :cond_0

    #@6
    .line 646
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v7, "android.permission.ACCESS_NETWORK_STATE"

    #@b
    const-string/jumbo v8, "NetworkStats"

    #@e
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@14
    .line 652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v4

    #@18
    .line 655
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@1a
    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .line 657
    .local v3, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 661
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@23
    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    #@26
    .line 663
    new-instance v0, Landroid/net/NetworkStats;

    #@28
    .line 664
    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    #@2b
    move-result-wide v6

    #@2c
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    #@2f
    move-result v8

    #@30
    .line 663
    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@33
    .line 666
    .local v0, "dataLayer":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    #@34
    .line 667
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    #@35
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    #@38
    move-result v6

    #@39
    if-ge v2, v6, :cond_1

    #@3b
    .line 668
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@3e
    move-result-object v1

    #@3f
    .line 669
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@41
    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@43
    .line 670
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@46
    .line 667
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 656
    .end local v0    # "dataLayer":Landroid/net/NetworkStats;
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v3    # "networkLayer":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v6

    #@4a
    .line 657
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 656
    throw v6

    #@4e
    .line 673
    .restart local v0    # "dataLayer":Landroid/net/NetworkStats;
    .restart local v2    # "i":I
    .restart local v3    # "networkLayer":Landroid/net/NetworkStats;
    :cond_1
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5
    const-string/jumbo v2, "NetworkStats"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 638
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 639
    const/4 v6, 0x3

    #@f
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move-wide v2, p2

    #@12
    move-wide v4, p4

    #@13
    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    #@1a
    move-result-wide v0

    #@1b
    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .locals 19
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    #@0
    .prologue
    .line 683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    move/from16 v0, p1

    #@6
    if-eq v2, v0, :cond_0

    #@8
    .line 684
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    #@f
    const-string/jumbo v4, "NetworkStats"

    #@12
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 687
    :cond_0
    if-gez p3, :cond_1

    #@17
    .line 688
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v3, "operation count can only be incremented"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 690
    :cond_1
    if-nez p2, :cond_2

    #@22
    .line 691
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v3, "operation count must have specific tag"

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 694
    :cond_2
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@2f
    move-object/from16 v18, v0

    #@31
    monitor-enter v18

    #@32
    .line 695
    :try_start_0
    move-object/from16 v0, p0

    #@34
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    #@36
    const/4 v3, 0x0

    #@37
    move/from16 v0, p1

    #@39
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@3c
    move-result v6

    #@3d
    .line 696
    .local v6, "set":I
    move-object/from16 v0, p0

    #@3f
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@41
    .line 697
    move-object/from16 v0, p0

    #@43
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    #@45
    move/from16 v0, p3

    #@47
    int-to-long v0, v0

    #@48
    move-wide/from16 v16, v0

    #@4a
    const-wide/16 v8, 0x0

    #@4c
    const-wide/16 v10, 0x0

    #@4e
    const-wide/16 v12, 0x0

    #@50
    const-wide/16 v14, 0x0

    #@52
    move/from16 v5, p1

    #@54
    move/from16 v7, p2

    #@56
    .line 696
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    #@59
    .line 698
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@5d
    .line 699
    move-object/from16 v0, p0

    #@5f
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    #@61
    move/from16 v0, p3

    #@63
    int-to-long v0, v0

    #@64
    move-wide/from16 v16, v0

    #@66
    const/4 v7, 0x0

    #@67
    const-wide/16 v8, 0x0

    #@69
    const-wide/16 v10, 0x0

    #@6b
    const-wide/16 v12, 0x0

    #@6d
    const-wide/16 v14, 0x0

    #@6f
    move/from16 v5, p1

    #@71
    .line 698
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    monitor-exit v18

    #@75
    .line 682
    return-void

    #@76
    .line 694
    .end local v6    # "set":I
    :catchall_0
    move-exception v2

    #@77
    monitor-exit v18

    #@78
    throw v2
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 2

    #@0
    .prologue
    .line 466
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 471
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 776
    const-string/jumbo v0, "calling package is null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 777
    const-string/jumbo v0, "DataUsageRequest is null"

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 778
    iget-object v0, p2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@e
    const-string/jumbo v1, "NetworkTemplate is null"

    #@11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 779
    const-string/jumbo v0, "messenger is null"

    #@17
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 780
    const-string/jumbo v0, "binder is null"

    #@1d
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@23
    move-result v4

    #@24
    .line 783
    .local v4, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    #@27
    move-result v5

    #@28
    .line 785
    .local v5, "accessLevel":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v8

    #@2c
    .line 787
    .local v8, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    #@2e
    move-object v1, p2

    #@2f
    move-object v2, p3

    #@30
    move-object v3, p4

    #@31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsObservers;->register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v6

    #@35
    .line 790
    .local v6, "normalizedRequest":Landroid/net/DataUsageRequest;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 794
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@3a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@3c
    const/4 v2, 0x3

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v2

    #@41
    const/4 v3, 0x1

    #@42
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@49
    .line 796
    return-object v6

    #@4a
    .line 789
    .end local v6    # "normalizedRequest":Landroid/net/DataUsageRequest;
    :catchall_0
    move-exception v0

    #@4b
    .line 790
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 789
    throw v0
.end method

.method setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    #@0
    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@2
    .line 306
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@4
    .line 304
    return-void
.end method

.method public setUidForeground(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    #@0
    .prologue
    .line 705
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    #@5
    const-string/jumbo v4, "NetworkStats"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 707
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 708
    if-eqz p2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    .line 709
    .local v1, "set":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@17
    move-result v0

    #@18
    .line 710
    .local v0, "oldSet":I
    if-eq v0, v1, :cond_0

    #@1a
    .line 711
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@1f
    .line 712
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v3

    #@23
    .line 704
    return-void

    #@24
    .line 708
    .end local v0    # "oldSet":I
    .end local v1    # "set":I
    :cond_1
    const/4 v1, 0x0

    #@25
    .restart local v1    # "set":I
    goto :goto_0

    #@26
    .line 707
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2
.end method

.method public systemReady()V
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 314
    iput-boolean v9, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@5
    .line 316
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    #@8
    move-result v6

    #@9
    if-nez v6, :cond_0

    #@b
    .line 317
    const-string/jumbo v6, "NetworkStats"

    #@e
    const-string/jumbo v7, "bandwidth controls disabled, unable to track stats"

    #@11
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 318
    return-void

    #@15
    .line 322
    :cond_0
    const-string/jumbo v6, "dev"

    #@18
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@1a
    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@1d
    move-result-object v7

    #@1e
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    #@21
    move-result-object v6

    #@22
    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@24
    .line 323
    const-string/jumbo v6, "xt"

    #@27
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@29
    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@2c
    move-result-object v7

    #@2d
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    #@30
    move-result-object v6

    #@31
    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@33
    .line 324
    const-string/jumbo v6, "uid"

    #@36
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@38
    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@3b
    move-result-object v7

    #@3c
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    #@3f
    move-result-object v6

    #@40
    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@42
    .line 325
    const-string/jumbo v6, "uid_tag"

    #@45
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@47
    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    #@4a
    move-result-object v7

    #@4b
    invoke-direct {p0, v6, v7, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    #@4e
    move-result-object v6

    #@4f
    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@51
    .line 327
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    #@54
    .line 329
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@56
    monitor-enter v7

    #@57
    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    #@5a
    .line 335
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@5c
    invoke-virtual {v6}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@5f
    move-result-object v6

    #@60
    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    #@62
    .line 338
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v7

    #@66
    .line 342
    new-instance v4, Landroid/content/IntentFilter;

    #@68
    const-string/jumbo v6, "android.net.conn.TETHER_STATE_CHANGED"

    #@6b
    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@6e
    .line 343
    .local v4, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@70
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    #@72
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@74
    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@77
    .line 346
    new-instance v1, Landroid/content/IntentFilter;

    #@79
    const-string/jumbo v6, "com.android.server.action.NETWORK_STATS_POLL"

    #@7c
    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@7f
    .line 347
    .local v1, "pollFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@81
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    #@83
    const-string/jumbo v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@86
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@88
    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@8b
    .line 350
    new-instance v2, Landroid/content/IntentFilter;

    #@8d
    const-string/jumbo v6, "android.intent.action.UID_REMOVED"

    #@90
    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@93
    .line 351
    .local v2, "removedFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@95
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@97
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@99
    invoke-virtual {v6, v7, v2, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@9c
    .line 354
    new-instance v5, Landroid/content/IntentFilter;

    #@9e
    const-string/jumbo v6, "android.intent.action.USER_REMOVED"

    #@a1
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@a4
    .line 355
    .local v5, "userFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@a6
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@a8
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@aa
    invoke-virtual {v6, v7, v5, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@ad
    .line 358
    new-instance v3, Landroid/content/IntentFilter;

    #@af
    const-string/jumbo v6, "android.intent.action.ACTION_SHUTDOWN"

    #@b2
    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@b5
    .line 359
    .local v3, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@b7
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    #@b9
    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@bc
    .line 362
    :try_start_1
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@be
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@c0
    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c3
    .line 367
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    #@c6
    .line 368
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    #@c9
    .line 313
    return-void

    #@ca
    .line 329
    .end local v1    # "pollFilter":Landroid/content/IntentFilter;
    .end local v2    # "removedFilter":Landroid/content/IntentFilter;
    .end local v3    # "shutdownFilter":Landroid/content/IntentFilter;
    .end local v4    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v5    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v6

    #@cb
    monitor-exit v7

    #@cc
    throw v6

    #@cd
    .line 363
    .restart local v1    # "pollFilter":Landroid/content/IntentFilter;
    .restart local v2    # "removedFilter":Landroid/content/IntentFilter;
    .restart local v3    # "shutdownFilter":Landroid/content/IntentFilter;
    .restart local v4    # "tetherFilter":Landroid/content/IntentFilter;
    .restart local v5    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    #@ce
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    #@0
    .prologue
    .line 801
    const-string/jumbo v1, "DataUsageRequest is null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    .line 804
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v2

    #@e
    .line 806
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    #@10
    invoke-virtual {v1, p1, v0}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 808
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 800
    return-void

    #@17
    .line 807
    :catchall_0
    move-exception v1

    #@18
    .line 808
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 807
    throw v1
.end method
