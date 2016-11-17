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
    .line 280
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    #@3
    .line 213
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@a
    .line 216
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@11
    .line 218
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@18
    .line 222
    const/4 v0, 0x0

    #@19
    new-array v0, v0, [Ljava/lang/String;

    #@1b
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    #@1d
    .line 225
    new-instance v0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;)V

    #@23
    .line 224
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    #@25
    .line 236
    new-instance v0, Landroid/util/SparseIntArray;

    #@27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    #@2c
    .line 239
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
    .line 246
    const-wide/32 v0, 0x200000

    #@3a
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    #@3c
    .line 821
    new-instance v0, Lcom/android/server/net/NetworkStatsService$1;

    #@3e
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@41
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    #@43
    .line 830
    new-instance v0, Lcom/android/server/net/NetworkStatsService$2;

    #@45
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@48
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    #@4a
    .line 842
    new-instance v0, Lcom/android/server/net/NetworkStatsService$3;

    #@4c
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@4f
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@51
    .line 862
    new-instance v0, Lcom/android/server/net/NetworkStatsService$4;

    #@53
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@56
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@58
    .line 882
    new-instance v0, Lcom/android/server/net/NetworkStatsService$5;

    #@5a
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@5d
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    #@5f
    .line 895
    new-instance v0, Lcom/android/server/net/NetworkStatsService$6;

    #@61
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@64
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@66
    .line 284
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
    .line 285
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
    .line 286
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
    .line 287
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
    .line 288
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
    .line 289
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
    .line 290
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
    .line 291
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
    .line 292
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
    .line 293
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
    .line 283
    return-void
.end method

.method private assertBandwidthControlEnabled()V
    .locals 2

    #@0
    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1360
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Bandwidth module disabled"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1358
    :cond_0
    return-void
.end method

.method private bootstrapStatsLocked()V
    .locals 7

    #@0
    .prologue
    .line 1036
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
    .line 1040
    .local v0, "currentTime":J
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1035
    :goto_1
    return-void

    #@12
    .line 1037
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v0

    #@16
    .restart local v0    # "currentTime":J
    goto :goto_0

    #@17
    .line 1043
    :catch_0
    move-exception v2

    #@18
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@19
    .line 1041
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    #@1a
    .line 1042
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
    .line 366
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 367
    const-string/jumbo v1, "dropbox"

    #@5
    .line 366
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v8

    #@9
    check-cast v8, Landroid/os/DropBoxManager;

    #@b
    .line 368
    .local v8, "dropBox":Landroid/os/DropBoxManager;
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    #@d
    new-instance v1, Lcom/android/internal/util/FileRotator;

    #@f
    .line 369
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    #@11
    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    #@13
    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    #@15
    move-object v3, p1

    #@16
    .line 368
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    #@19
    .line 370
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
    .line 368
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    #@23
    return-object v0
.end method

.method private checkAccessLevel(Ljava/lang/String;)I
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    .line 599
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
    .line 261
    const-string/jumbo v1, "alarm"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/app/AlarmManager;

    #@9
    .line 262
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    const-string/jumbo v1, "power"

    #@c
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v14

    #@10
    check-cast v14, Landroid/os/PowerManager;

    #@12
    .line 264
    .local v14, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "NetworkStats"

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v14, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@19
    move-result-object v4

    #@1a
    .line 266
    .local v4, "wakeLock":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/net/NetworkStatsService;

    #@1c
    .line 267
    invoke-static {p0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@1f
    move-result-object v5

    #@20
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@23
    move-result-object v6

    #@24
    .line 268
    new-instance v7, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    #@26
    invoke-direct {v7, p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    #@29
    new-instance v8, Lcom/android/server/net/NetworkStatsObservers;

    #@2b
    invoke-direct {v8}, Lcom/android/server/net/NetworkStatsObservers;-><init>()V

    #@2e
    .line 269
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
    .line 266
    invoke-direct/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Landroid/util/TrustedTime;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V

    #@3c
    .line 271
    .local v0, "service":Lcom/android/server/net/NetworkStatsService;
    new-instance v13, Landroid/os/HandlerThread;

    #@3e
    const-string/jumbo v1, "NetworkStats"

    #@41
    invoke-direct {v13, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@44
    .line 272
    .local v13, "handlerThread":Landroid/os/HandlerThread;
    new-instance v11, Lcom/android/server/net/NetworkStatsService$HandlerCallback;

    #@46
    invoke-direct {v11, v0}, Lcom/android/server/net/NetworkStatsService$HandlerCallback;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    #@49
    .line 273
    .local v11, "callback":Landroid/os/Handler$Callback;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    #@4c
    .line 274
    new-instance v12, Landroid/os/Handler;

    #@4e
    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@51
    move-result-object v1

    #@52
    invoke-direct {v12, v1, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@55
    .line 275
    .local v12, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v12, v11}, Lcom/android/server/net/NetworkStatsService;->setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    #@58
    .line 276
    return-object v0
.end method

.method private createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pollOnCreate"    # Z

    #@0
    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@3
    .line 470
    if-eqz p2, :cond_0

    #@5
    .line 471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 473
    .local v0, "ident":J
    const/4 v2, 0x3

    #@a
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 475
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 482
    .end local v0    # "ident":J
    :cond_0
    new-instance v2, Lcom/android/server/net/NetworkStatsService$7;

    #@12
    invoke-direct {v2, p0, p1}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@15
    return-object v2

    #@16
    .line 474
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    #@17
    .line 475
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 474
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
    .line 997
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    #@6
    .line 998
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_0

    #@8
    .line 999
    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    #@a
    .end local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    #@d
    .line 1000
    .restart local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1002
    :cond_0
    return-object v0
.end method

.method private static getDefaultBaseDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 254
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
    .line 255
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 256
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 250
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
    .line 1320
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
    .line 1321
    :catch_0
    move-exception v0

    #@8
    .line 1322
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "NetworkStats"

    #@b
    const-string/jumbo v2, "problem reading network stats"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1323
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
    .line 1304
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    const/4 v3, -0x1

    #@3
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    #@6
    move-result-object v1

    #@7
    .line 1307
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    #@a
    move-result-object v0

    #@b
    .line 1308
    .local v0, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    #@e
    .line 1309
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@10
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    #@13
    .line 1311
    return-object v1
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
    .line 623
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
    .line 612
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
    .line 1365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1367
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
    .line 1372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 1367
    return v1

    #@e
    .line 1368
    :catch_0
    move-exception v0

    #@f
    .line 1370
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    .line 1372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 1370
    return v1

    #@14
    .line 1371
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@15
    .line 1372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 1371
    throw v1
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 5

    #@0
    .prologue
    .line 401
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@2
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    #@4
    const-string/jumbo v4, "netstats.bin"

    #@7
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    .line 402
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 403
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@12
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    #@15
    .line 404
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@18
    .line 407
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
    .line 408
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 409
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@2b
    .line 412
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
    .line 413
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 414
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3d
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    #@40
    .line 415
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@42
    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    #@45
    .line 416
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 398
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    #@49
    .line 420
    :catch_0
    move-exception v1

    #@4a
    .line 421
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "NetworkStats"

    #@4d
    const-string/jumbo v4, "problem during legacy upgrade"

    #@50
    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0

    #@54
    .line 418
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    #@55
    .line 419
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
    .line 1050
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
    .line 1051
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    #@12
    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    #@15
    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@17
    monitor-enter v1

    #@18
    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 1058
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 1060
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    monitor-exit v1

    #@26
    .line 1048
    return-void

    #@27
    .line 1059
    :catchall_0
    move-exception v0

    #@28
    .line 1060
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2a
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2d
    .line 1059
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2e
    .line 1054
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
    .line 1070
    iget-boolean v10, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@2
    if-nez v10, :cond_0

    #@4
    return-void

    #@5
    .line 1073
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v8

    #@9
    .line 1075
    .local v8, "startRealtime":J
    and-int/lit8 v10, p1, 0x1

    #@b
    if-eqz v10, :cond_3

    #@d
    const/4 v5, 0x1

    #@e
    .line 1076
    .local v5, "persistNetwork":Z
    :goto_0
    and-int/lit8 v10, p1, 0x2

    #@10
    if-eqz v10, :cond_4

    #@12
    const/4 v6, 0x1

    #@13
    .line 1077
    .local v6, "persistUid":Z
    :goto_1
    and-int/lit16 v10, p1, 0x100

    #@15
    if-eqz v10, :cond_5

    #@17
    const/4 v4, 0x1

    #@18
    .line 1080
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
    .line 1084
    .local v0, "currentTime":J
    :goto_3
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1094
    if-eqz v4, :cond_7

    #@2b
    .line 1095
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2d
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@30
    .line 1096
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@32
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@35
    .line 1097
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@37
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3a
    .line 1098
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3c
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3f
    .line 1115
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
    .line 1117
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    #@4a
    .line 1121
    :cond_2
    new-instance v7, Landroid/content/Intent;

    #@4c
    const-string/jumbo v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    #@4f
    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@52
    .line 1122
    .local v7, "updatedIntent":Landroid/content/Intent;
    const/high16 v10, 0x40000000    # 2.0f

    #@54
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@57
    .line 1123
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@59
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5b
    .line 1124
    const-string/jumbo v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5e
    .line 1123
    invoke-virtual {v10, v7, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@61
    .line 1069
    return-void

    #@62
    .line 1075
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
    .line 1076
    :cond_4
    const/4 v6, 0x0

    #@65
    .restart local v6    # "persistUid":Z
    goto :goto_1

    #@66
    .line 1077
    :cond_5
    const/4 v4, 0x0

    #@67
    .restart local v4    # "persistForce":Z
    goto :goto_2

    #@68
    .line 1081
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6b
    move-result-wide v0

    #@6c
    .restart local v0    # "currentTime":J
    goto :goto_3

    #@6d
    .line 1088
    :catch_0
    move-exception v2

    #@6e
    .line 1090
    .local v2, "e":Landroid/os/RemoteException;
    return-void

    #@6f
    .line 1085
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    #@70
    .line 1086
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v10, "NetworkStats"

    #@73
    const-string/jumbo v11, "problem reading network stats"

    #@76
    invoke-static {v10, v11, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79
    .line 1087
    return-void

    #@7a
    .line 1100
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    if-eqz v5, :cond_8

    #@7c
    .line 1101
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@7e
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@81
    .line 1102
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@83
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@86
    .line 1104
    :cond_8
    if-eqz v6, :cond_1

    #@88
    .line 1105
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@8a
    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@8d
    .line 1106
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
    .line 1132
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
    .line 1140
    .local v26, "trustedTime":J
    :goto_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    #@15
    move-result-object v29

    #@16
    .line 1141
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
    .line 1142
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
    .line 1143
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
    .line 1146
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
    .line 1147
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
    .line 1148
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
    .line 1145
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    #@71
    .line 1152
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    #@74
    move-result-object v29

    #@75
    .line 1153
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
    .line 1154
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
    .line 1155
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
    .line 1158
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
    .line 1159
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
    .line 1160
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
    .line 1157
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    #@d0
    .line 1130
    return-void

    #@d1
    .line 1132
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
    .line 1008
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    #@3
    move-result-object v8

    #@4
    .line 1009
    .local v8, "uidSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@6
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    #@9
    move-result-object v14

    #@a
    .line 1010
    .local v14, "xtSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@c
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    #@f
    move-result-object v1

    #@10
    .line 1015
    .local v1, "devSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@12
    .line 1016
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@14
    const/4 v3, 0x0

    #@15
    move-wide/from16 v4, p1

    #@17
    .line 1015
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@1a
    .line 1017
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1c
    .line 1018
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@1e
    const/4 v5, 0x0

    #@1f
    move-object v3, v14

    #@20
    move-wide/from16 v6, p1

    #@22
    .line 1017
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@25
    .line 1021
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    #@27
    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    #@2a
    move-result-object v5

    #@2b
    .line 1022
    .local v5, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2d
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@2f
    move-object v3, v8

    #@30
    move-wide/from16 v6, p1

    #@32
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@35
    .line 1023
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@37
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@39
    move-object v3, v8

    #@3a
    move-wide/from16 v6, p1

    #@3c
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    #@3f
    .line 1027
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    #@41
    new-instance v9, Landroid/util/ArrayMap;

    #@43
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@45
    invoke-direct {v9, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@48
    .line 1028
    new-instance v10, Landroid/util/ArrayMap;

    #@4a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@4c
    invoke-direct {v10, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@4f
    move-object v7, v14

    #@50
    move-object v11, v5

    #@51
    move-wide/from16 v12, p1

    #@53
    .line 1027
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/net/NetworkStatsObservers;->updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V

    #@56
    .line 1005
    return-void
.end method

.method private registerGlobalAlert()V
    .locals 6

    #@0
    .prologue
    .line 449
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
    .line 447
    :goto_0
    return-void

    #@8
    .line 450
    :catch_0
    move-exception v1

    #@9
    .line 451
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
    .line 452
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
    .line 430
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 431
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    #@7
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@9
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@c
    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@e
    new-instance v1, Landroid/content/Intent;

    #@10
    const-string/jumbo v4, "com.android.server.action.NETWORK_STATS_POLL"

    #@13
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 434
    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@1c
    .line 437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1f
    move-result-wide v2

    #@20
    .line 438
    .local v2, "currentRealtime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    #@22
    .line 439
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    #@24
    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    #@27
    move-result-wide v4

    #@28
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    #@2a
    .line 438
    const/4 v1, 0x3

    #@2b
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    #@2e
    .line 429
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .locals 3
    .param p1, "uids"    # [I

    #@0
    .prologue
    .line 1171
    const/4 v1, 0x3

    #@1
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    #@4
    .line 1173
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    #@9
    .line 1174
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@b
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    #@e
    .line 1177
    const/4 v1, 0x0

    #@f
    array-length v2, p1

    #@10
    :goto_0
    if-ge v1, v2, :cond_0

    #@12
    aget v0, p1, v1

    #@14
    .line 1178
    .local v0, "uid":I
    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    #@17
    .line 1177
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1167
    .end local v0    # "uid":I
    :cond_0
    return-void
.end method

.method private removeUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1189
    const/4 v5, 0x0

    #@1
    new-array v4, v5, [I

    #@3
    .line 1190
    .local v4, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v5

    #@9
    .line 1191
    const/16 v6, 0x2200

    #@b
    .line 1190
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    .line 1192
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
    .line 1193
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@21
    invoke-static {p1, v5}, Landroid/os/UserHandle;->getUid(II)I

    #@24
    move-result v3

    #@25
    .line 1194
    .local v3, "uid":I
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@28
    move-result-object v4

    #@29
    goto :goto_0

    #@2a
    .line 1197
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "uid":I
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    #@2d
    .line 1185
    return-void
.end method

.method private shutdownLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 374
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@3
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@8
    .line 375
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@a
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 376
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@11
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@16
    .line 377
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@18
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@1d
    .line 379
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
    .line 383
    .local v0, "currentTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@2d
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@30
    .line 384
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@32
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@35
    .line 385
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@37
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3a
    .line 386
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3c
    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@3f
    .line 388
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@41
    .line 389
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@43
    .line 390
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@45
    .line 391
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@47
    .line 393
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    #@49
    .line 395
    const/4 v2, 0x0

    #@4a
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@4c
    .line 373
    return-void

    #@4d
    .line 380
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
    .line 914
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 917
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    .line 919
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10
    monitor-exit v1

    #@11
    .line 913
    return-void

    #@12
    .line 918
    :catchall_0
    move-exception v0

    #@13
    .line 919
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@15
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@18
    .line 918
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19
    .line 914
    :catchall_1
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 931
    iget-boolean v13, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@3
    if-nez v13, :cond_0

    #@5
    return-void

    #@6
    .line 940
    :cond_0
    const/4 v13, 0x1

    #@7
    invoke-direct {p0, v13}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    #@a
    .line 945
    :try_start_0
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    #@c
    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    #@f
    move-result-object v11

    #@10
    .line 946
    .local v11, "states":[Landroid/net/NetworkState;
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    #@12
    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v0

    #@16
    .line 952
    .local v0, "activeLink":Landroid/net/LinkProperties;
    if-eqz v0, :cond_1

    #@18
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@1b
    move-result-object v12

    #@1c
    :cond_1
    iput-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    #@1e
    .line 955
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    #@23
    .line 956
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    #@28
    .line 958
    new-instance v5, Landroid/util/ArraySet;

    #@2a
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    #@2d
    .line 959
    .local v5, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    #@2e
    array-length v13, v11

    #@2f
    :goto_0
    if-ge v12, v13, :cond_5

    #@31
    aget-object v10, v11, v12

    #@33
    .line 960
    .local v10, "state":Landroid/net/NetworkState;
    iget-object v14, v10, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@35
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    #@38
    move-result v14

    #@39
    if-eqz v14, :cond_4

    #@3b
    .line 961
    iget-object v14, v10, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@3d
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    #@40
    move-result v14

    #@41
    invoke-static {v14}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@44
    move-result v4

    #@45
    .line 962
    .local v4, "isMobile":Z
    iget-object v14, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@47
    invoke-static {v14, v10}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@4a
    move-result-object v3

    #@4b
    .line 966
    .local v3, "ident":Landroid/net/NetworkIdentity;
    iget-object v14, v10, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@4d
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    .line 967
    .local v1, "baseIface":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@53
    .line 968
    iget-object v14, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    #@55
    invoke-static {v14, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@58
    move-result-object v14

    #@59
    invoke-virtual {v14, v3}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@5c
    .line 969
    iget-object v14, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@5e
    invoke-static {v14, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@61
    move-result-object v14

    #@62
    invoke-virtual {v14, v3}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@65
    .line 970
    if-eqz v4, :cond_2

    #@67
    .line 971
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6a
    .line 979
    :cond_2
    iget-object v14, v10, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@6c
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@6f
    move-result-object v9

    #@70
    .line 980
    .local v9, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@73
    move-result-object v8

    #@74
    .local v8, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@77
    move-result v14

    #@78
    if-eqz v14, :cond_4

    #@7a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7d
    move-result-object v7

    #@7e
    check-cast v7, Landroid/net/LinkProperties;

    #@80
    .line 981
    .local v7, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    .line 982
    .local v6, "stackedIface":Ljava/lang/String;
    if-eqz v6, :cond_3

    #@86
    .line 983
    iget-object v14, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    #@88
    invoke-static {v14, v6}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    #@8b
    move-result-object v14

    #@8c
    invoke-virtual {v14, v3}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 984
    if-eqz v4, :cond_3

    #@91
    .line 985
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@94
    goto :goto_1

    #@95
    .line 947
    .end local v0    # "activeLink":Landroid/net/LinkProperties;
    .end local v1    # "baseIface":Ljava/lang/String;
    .end local v3    # "ident":Landroid/net/NetworkIdentity;
    .end local v4    # "isMobile":Z
    .end local v5    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "stackedIface":Ljava/lang/String;
    .end local v7    # "stackedLink":Landroid/net/LinkProperties;
    .end local v8    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v9    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v10    # "state":Landroid/net/NetworkState;
    .end local v11    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v2

    #@96
    .line 949
    .local v2, "e":Landroid/os/RemoteException;
    return-void

    #@97
    .line 959
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "activeLink":Landroid/net/LinkProperties;
    .restart local v5    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "state":Landroid/net/NetworkState;
    .restart local v11    # "states":[Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    #@99
    goto :goto_0

    #@9a
    .line 992
    .end local v10    # "state":Landroid/net/NetworkState;
    :cond_5
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@9d
    move-result v12

    #@9e
    new-array v12, v12, [Ljava/lang/String;

    #@a0
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a3
    move-result-object v12

    #@a4
    check-cast v12, [Ljava/lang/String;

    #@a6
    iput-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    #@a8
    .line 930
    return-void
.end method

.method private updatePersistThresholds()V
    .locals 4

    #@0
    .prologue
    .line 811
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
    .line 812
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
    .line 813
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
    .line 814
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
    .line 815
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
    .line 810
    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 9
    .param p1, "thresholdBytes"    # J

    #@0
    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    #@5
    const-string/jumbo v2, "NetworkStats"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 739
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 742
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
    .line 749
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
    .line 751
    .local v6, "currentTime":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@2b
    monitor-enter v1

    #@2c
    .line 752
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
    .line 750
    .end local v6    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@35
    move-result-wide v6

    #@36
    .restart local v6    # "currentTime":J
    goto :goto_0

    #@37
    .line 754
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    #@3a
    .line 756
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@3c
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@3f
    .line 757
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@41
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@44
    .line 758
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@46
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    #@49
    .line 759
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@4b
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    monitor-exit v1

    #@4f
    .line 763
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    #@52
    .line 737
    return-void

    #@53
    .line 751
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
    .line 303
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
    .line 302
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1202
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
    .line 1204
    const-wide/32 v12, 0x5265c00

    #@12
    .line 1205
    .local v12, "duration":J
    new-instance v9, Ljava/util/HashSet;

    #@14
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #@17
    .line 1206
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
    .line 1207
    .local v8, "arg":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@22
    .line 1209
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
    .line 1211
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
    .line 1206
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1218
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
    .line 1219
    :goto_2
    const-string/jumbo v2, "--checkin"

    #@4f
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@52
    move-result v10

    #@53
    .line 1220
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
    .line 1221
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
    .line 1222
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
    .line 1224
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
    .line 1226
    .local v19, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@93
    move-object/from16 v20, v0

    #@95
    monitor-enter v20

    #@96
    .line 1227
    if-eqz v18, :cond_6

    #@98
    .line 1228
    const/16 v2, 0x103

    #@9a
    :try_start_1
    move-object/from16 v0, p0

    #@9c
    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    #@9f
    .line 1229
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
    .line 1230
    return-void

    #@a9
    .line 1218
    .end local v10    # "checkin":Z
    .end local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_2
    const/16 v18, 0x1

    #@ab
    .local v18, "poll":Z
    goto :goto_2

    #@ac
    .line 1220
    .end local v18    # "poll":Z
    .restart local v10    # "checkin":Z
    :cond_3
    const/4 v11, 0x1

    #@ad
    .local v11, "fullHistory":Z
    goto :goto_3

    #@ae
    .line 1221
    .end local v11    # "fullHistory":Z
    :cond_4
    const/16 v17, 0x1

    #@b0
    .local v17, "includeUid":Z
    goto :goto_4

    #@b1
    .line 1222
    .end local v17    # "includeUid":Z
    :cond_5
    const/16 v16, 0x1

    #@b3
    .local v16, "includeTag":Z
    goto :goto_5

    #@b4
    .line 1233
    .end local v16    # "includeTag":Z
    .restart local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_6
    if-eqz v10, :cond_9

    #@b6
    .line 1234
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b9
    move-result-wide v6

    #@ba
    .line 1235
    .local v6, "end":J
    sub-long v4, v6, v12

    #@bc
    .line 1237
    .local v4, "start":J
    const-string/jumbo v2, "v1,"

    #@bf
    move-object/from16 v0, v19

    #@c1
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c4
    .line 1238
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
    .line 1239
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
    .line 1241
    const-string/jumbo v2, "xt"

    #@e3
    move-object/from16 v0, v19

    #@e5
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e8
    .line 1242
    move-object/from16 v0, p0

    #@ea
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@ec
    move-object/from16 v3, p2

    #@ee
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    #@f1
    .line 1244
    if-eqz v17, :cond_7

    #@f3
    .line 1245
    const-string/jumbo v2, "uid"

    #@f6
    move-object/from16 v0, v19

    #@f8
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@fb
    .line 1246
    move-object/from16 v0, p0

    #@fd
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@ff
    move-object/from16 v3, p2

    #@101
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    #@104
    .line 1248
    :cond_7
    if-eqz v16, :cond_8

    #@106
    .line 1249
    const-string/jumbo v2, "tag"

    #@109
    move-object/from16 v0, v19

    #@10b
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@10e
    .line 1250
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
    .line 1252
    return-void

    #@119
    .line 1255
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
    .line 1256
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@124
    .line 1257
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
    .line 1258
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
    .line 1259
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
    .line 1260
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@152
    .line 1257
    add-int/lit8 v14, v14, 0x1

    #@154
    goto :goto_6

    #@155
    .line 1262
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@158
    .line 1264
    const-string/jumbo v2, "Active UID interfaces:"

    #@15b
    move-object/from16 v0, v19

    #@15d
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@160
    .line 1265
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@163
    .line 1266
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
    .line 1267
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
    .line 1268
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
    .line 1269
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@191
    .line 1266
    add-int/lit8 v14, v14, 0x1

    #@193
    goto :goto_7

    #@194
    .line 1271
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@197
    .line 1273
    const-string/jumbo v2, "Dev stats:"

    #@19a
    move-object/from16 v0, v19

    #@19c
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19f
    .line 1274
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1a2
    .line 1275
    move-object/from16 v0, p0

    #@1a4
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1a6
    move-object/from16 v0, v19

    #@1a8
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1ab
    .line 1276
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1ae
    .line 1278
    const-string/jumbo v2, "Xt stats:"

    #@1b1
    move-object/from16 v0, v19

    #@1b3
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1b6
    .line 1279
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1b9
    .line 1280
    move-object/from16 v0, p0

    #@1bb
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1bd
    move-object/from16 v0, v19

    #@1bf
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1c2
    .line 1281
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1c5
    .line 1283
    if-eqz v17, :cond_c

    #@1c7
    .line 1284
    const-string/jumbo v2, "UID stats:"

    #@1ca
    move-object/from16 v0, v19

    #@1cc
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1cf
    .line 1285
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1d2
    .line 1286
    move-object/from16 v0, p0

    #@1d4
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1d6
    move-object/from16 v0, v19

    #@1d8
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1db
    .line 1287
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1de
    .line 1290
    :cond_c
    if-eqz v16, :cond_d

    #@1e0
    .line 1291
    const-string/jumbo v2, "UID tag stats:"

    #@1e3
    move-object/from16 v0, v19

    #@1e5
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1e8
    .line 1292
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1eb
    .line 1293
    move-object/from16 v0, p0

    #@1ed
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@1ef
    move-object/from16 v0, v19

    #@1f1
    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@1f4
    .line 1294
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1f7
    :cond_d
    monitor-exit v20

    #@1f8
    .line 1201
    return-void

    #@1f9
    .line 1226
    .end local v14    # "i":I
    :catchall_0
    move-exception v2

    #@1fa
    monitor-exit v20

    #@1fb
    throw v2

    #@1fc
    .line 1212
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
    .line 725
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5
    const-string/jumbo v4, "NetworkStats"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 726
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 730
    .local v0, "token":J
    const/4 v2, 0x3

    #@13
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 732
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 724
    return-void

    #@1a
    .line 731
    :catchall_0
    move-exception v2

    #@1b
    .line 732
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 731
    throw v2
.end method

.method public forceUpdateIfaces()V
    .locals 5

    #@0
    .prologue
    .line 712
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5
    const-string/jumbo v4, "NetworkStats"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 713
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 717
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 719
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 711
    return-void

    #@19
    .line 718
    :catchall_0
    move-exception v2

    #@1a
    .line 719
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 718
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
    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    if-eq v6, p1, :cond_0

    #@6
    .line 639
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v7, "android.permission.ACCESS_NETWORK_STATE"

    #@b
    const-string/jumbo v8, "NetworkStats"

    #@e
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@14
    .line 645
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v4

    #@18
    .line 648
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
    .line 650
    .local v3, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 654
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@23
    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    #@26
    .line 656
    new-instance v0, Landroid/net/NetworkStats;

    #@28
    .line 657
    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    #@2b
    move-result-wide v6

    #@2c
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    #@2f
    move-result v8

    #@30
    .line 656
    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@33
    .line 659
    .local v0, "dataLayer":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    #@34
    .line 660
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
    .line 661
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@3e
    move-result-object v1

    #@3f
    .line 662
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@41
    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@43
    .line 663
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@46
    .line 660
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 649
    .end local v0    # "dataLayer":Landroid/net/NetworkStats;
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v3    # "networkLayer":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v6

    #@4a
    .line 650
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 649
    throw v6

    #@4e
    .line 666
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
    .line 671
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
    .line 630
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@5
    const-string/jumbo v2, "NetworkStats"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 631
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    #@e
    .line 632
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
    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    move/from16 v0, p1

    #@6
    if-eq v2, v0, :cond_0

    #@8
    .line 677
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
    .line 680
    :cond_0
    if-gez p3, :cond_1

    #@17
    .line 681
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v3, "operation count can only be incremented"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 683
    :cond_1
    if-nez p2, :cond_2

    #@22
    .line 684
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v3, "operation count must have specific tag"

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 687
    :cond_2
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@2f
    move-object/from16 v18, v0

    #@31
    monitor-enter v18

    #@32
    .line 688
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
    .line 689
    .local v6, "set":I
    move-object/from16 v0, p0

    #@3f
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@41
    .line 690
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
    .line 689
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    #@59
    .line 691
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    #@5d
    .line 692
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
    .line 691
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    monitor-exit v18

    #@75
    .line 675
    return-void

    #@76
    .line 687
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
    .line 459
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
    .line 464
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
    .line 769
    const-string/jumbo v0, "calling package is null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 770
    const-string/jumbo v0, "DataUsageRequest is null"

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 771
    iget-object v0, p2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@e
    const-string/jumbo v1, "NetworkTemplate is null"

    #@11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 772
    const-string/jumbo v0, "messenger is null"

    #@17
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 773
    const-string/jumbo v0, "binder is null"

    #@1d
    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@23
    move-result v4

    #@24
    .line 776
    .local v4, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    #@27
    move-result v5

    #@28
    .line 778
    .local v5, "accessLevel":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v8

    #@2c
    .line 780
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
    .line 783
    .local v6, "normalizedRequest":Landroid/net/DataUsageRequest;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 787
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
    .line 789
    return-object v6

    #@4a
    .line 782
    .end local v6    # "normalizedRequest":Landroid/net/DataUsageRequest;
    :catchall_0
    move-exception v0

    #@4b
    .line 783
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 782
    throw v0
.end method

.method setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    #@0
    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@2
    .line 299
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@4
    .line 297
    return-void
.end method

.method public setUidForeground(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    #@0
    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    #@5
    const-string/jumbo v4, "NetworkStats"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 700
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 701
    if-eqz p2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    .line 702
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
    .line 703
    .local v0, "oldSet":I
    if-eq v0, v1, :cond_0

    #@1a
    .line 704
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@1f
    .line 705
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v3

    #@23
    .line 697
    return-void

    #@24
    .line 701
    .end local v0    # "oldSet":I
    .end local v1    # "set":I
    :cond_1
    const/4 v1, 0x0

    #@25
    .restart local v1    # "set":I
    goto :goto_0

    #@26
    .line 700
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
    .line 307
    iput-boolean v9, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    #@5
    .line 309
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    #@8
    move-result v6

    #@9
    if-nez v6, :cond_0

    #@b
    .line 310
    const-string/jumbo v6, "NetworkStats"

    #@e
    const-string/jumbo v7, "bandwidth controls disabled, unable to track stats"

    #@11
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 311
    return-void

    #@15
    .line 315
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
    .line 316
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
    .line 317
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
    .line 318
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
    .line 320
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    #@54
    .line 322
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    #@56
    monitor-enter v7

    #@57
    .line 324
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    #@5a
    .line 328
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    #@5c
    invoke-virtual {v6}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@5f
    move-result-object v6

    #@60
    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    #@62
    .line 331
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v7

    #@66
    .line 335
    new-instance v4, Landroid/content/IntentFilter;

    #@68
    const-string/jumbo v6, "android.net.conn.TETHER_STATE_CHANGED"

    #@6b
    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@6e
    .line 336
    .local v4, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@70
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    #@72
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@74
    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@77
    .line 339
    new-instance v1, Landroid/content/IntentFilter;

    #@79
    const-string/jumbo v6, "com.android.server.action.NETWORK_STATS_POLL"

    #@7c
    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@7f
    .line 340
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
    .line 343
    new-instance v2, Landroid/content/IntentFilter;

    #@8d
    const-string/jumbo v6, "android.intent.action.UID_REMOVED"

    #@90
    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@93
    .line 344
    .local v2, "removedFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@95
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@97
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@99
    invoke-virtual {v6, v7, v2, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@9c
    .line 347
    new-instance v5, Landroid/content/IntentFilter;

    #@9e
    const-string/jumbo v6, "android.intent.action.USER_REMOVED"

    #@a1
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@a4
    .line 348
    .local v5, "userFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@a6
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@a8
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    #@aa
    invoke-virtual {v6, v7, v5, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@ad
    .line 351
    new-instance v3, Landroid/content/IntentFilter;

    #@af
    const-string/jumbo v6, "android.intent.action.ACTION_SHUTDOWN"

    #@b2
    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@b5
    .line 352
    .local v3, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    #@b7
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    #@b9
    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@bc
    .line 355
    :try_start_1
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@be
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@c0
    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@c3
    .line 360
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    #@c6
    .line 361
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    #@c9
    .line 306
    return-void

    #@ca
    .line 322
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
    .line 356
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
    .line 794
    const-string/jumbo v1, "DataUsageRequest is null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 796
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    .line 797
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v2

    #@e
    .line 799
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    #@10
    invoke-virtual {v1, p1, v0}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 801
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 793
    return-void

    #@17
    .line 800
    :catchall_0
    move-exception v1

    #@18
    .line 801
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 800
    throw v1
.end method
