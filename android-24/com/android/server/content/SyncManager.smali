.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$1;,
        Lcom/android/server/content/SyncManager$2;,
        Lcom/android/server/content/SyncManager$3;,
        Lcom/android/server/content/SyncManager$4;,
        Lcom/android/server/content/SyncManager$5;,
        Lcom/android/server/content/SyncManager$6;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field private static final MIN_SYNC_JOB_ID:I = 0x186a0

.field private static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field private static final SYNC_DELAY_ON_LOW_STORAGE:J = 0x36ee80L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private volatile mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mDeviceIsIdle:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private volatile mJobServiceReady:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mProvisioned:Z

.field private final mRand:Ljava/util/Random;

.field private volatile mReportedSyncActive:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private mSyncJobService:Lcom/android/server/content/SyncJobService;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncJobService;)Lcom/android/server/content/SyncJobService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/content/SyncManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/content/SyncManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/content/SyncManager;I)J
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap9(Lcom/android/server/content/SyncManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->clearAllBackoffs()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 141
    const-string/jumbo v0, "sync.local_sync_delay"

    #@3
    const-wide/16 v2, 0x7530

    #@5
    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    .line 140
    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    #@b
    .line 199
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    #@e
    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    #@10
    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    #@0
    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 202
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    #@5
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@7
    .line 206
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    #@a
    .line 207
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@d
    .line 208
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    #@10
    .line 209
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    #@13
    .line 219
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@19
    .line 269
    new-instance v0, Lcom/android/server/content/SyncManager$1;

    #@1b
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    #@1e
    .line 268
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@20
    .line 291
    new-instance v0, Lcom/android/server/content/SyncManager$2;

    #@22
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    #@25
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    #@27
    .line 301
    new-instance v0, Lcom/android/server/content/SyncManager$3;

    #@29
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@2e
    .line 350
    new-instance v0, Lcom/android/server/content/SyncManager$4;

    #@30
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    #@33
    .line 349
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    #@35
    .line 380
    new-instance v0, Lcom/android/server/content/SyncManager$5;

    #@37
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    #@3a
    .line 379
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    #@3c
    .line 388
    new-instance v0, Lcom/android/server/content/SyncManager$6;

    #@3e
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    #@41
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@43
    .line 407
    const/4 v0, 0x0

    #@44
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    #@46
    .line 408
    const/4 v0, 0x0

    #@47
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    #@49
    .line 485
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@4b
    .line 487
    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    #@4e
    .line 488
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@54
    .line 489
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@56
    new-instance v1, Lcom/android/server/content/SyncManager$8;

    #@58
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    #@5b
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    #@5e
    .line 499
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@60
    .line 500
    new-instance v1, Lcom/android/server/content/SyncManager$9;

    #@62
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    #@65
    .line 499
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    #@68
    .line 508
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@6a
    new-instance v1, Lcom/android/server/content/SyncManager$10;

    #@6c
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    #@6f
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    #@72
    .line 515
    new-instance v0, Landroid/content/SyncAdaptersCache;

    #@74
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@76
    invoke-direct {v0, v1}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    #@79
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@7b
    .line 517
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler;

    #@7d
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@84
    move-result-object v1

    #@85
    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    #@88
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@8a
    .line 519
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@8c
    new-instance v1, Lcom/android/server/content/SyncManager$11;

    #@8e
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    #@91
    .line 529
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@93
    .line 519
    invoke-virtual {v0, v1, v2}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    #@96
    .line 531
    new-instance v0, Ljava/util/Random;

    #@98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9b
    move-result-wide v4

    #@9c
    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    #@9f
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    #@a1
    .line 533
    new-instance v3, Landroid/content/IntentFilter;

    #@a3
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@a6
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@a9
    .line 534
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    #@ab
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@ae
    .line 536
    if-nez p2, :cond_0

    #@b0
    .line 537
    new-instance v3, Landroid/content/IntentFilter;

    #@b2
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    #@b5
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@b8
    .line 538
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    #@ba
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@bd
    .line 539
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    #@bf
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@c2
    .line 542
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    #@c4
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_LOW"

    #@c7
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@ca
    .line 543
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_OK"

    #@cd
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d0
    .line 544
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@d2
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@d5
    .line 546
    new-instance v3, Landroid/content/IntentFilter;

    #@d7
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    #@da
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@dd
    .line 547
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x64

    #@df
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@e2
    .line 548
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    #@e4
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e7
    .line 550
    new-instance v3, Landroid/content/IntentFilter;

    #@e9
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@ec
    .line 551
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@ef
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f2
    .line 552
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    #@f5
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f8
    .line 553
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    #@fb
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@fe
    .line 554
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@100
    .line 555
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@102
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@104
    const/4 v4, 0x0

    #@105
    const/4 v5, 0x0

    #@106
    .line 554
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@109
    .line 557
    if-nez p2, :cond_4

    #@10b
    .line 559
    const-string/jumbo v0, "notification"

    #@10e
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@111
    move-result-object v0

    #@112
    .line 558
    check-cast v0, Landroid/app/NotificationManager;

    #@114
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    #@116
    .line 563
    :goto_0
    const-string/jumbo v0, "power"

    #@119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11c
    move-result-object v0

    #@11d
    check-cast v0, Landroid/os/PowerManager;

    #@11f
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@121
    .line 564
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@123
    const-string/jumbo v1, "user"

    #@126
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@129
    move-result-object v0

    #@12a
    check-cast v0, Landroid/os/UserManager;

    #@12c
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    #@12e
    .line 566
    const-string/jumbo v0, "batterystats"

    #@131
    .line 565
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@134
    move-result-object v0

    #@135
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@138
    move-result-object v0

    #@139
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@13b
    .line 572
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@13d
    .line 573
    const-string/jumbo v1, "SyncManagerHandleSyncAlarm"

    #@140
    .line 572
    const/4 v2, 0x1

    #@141
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@144
    move-result-object v0

    #@145
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    #@147
    .line 574
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    #@149
    const/4 v1, 0x0

    #@14a
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@14d
    .line 581
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@14f
    .line 582
    const-string/jumbo v1, "SyncLoopWakeLock"

    #@152
    .line 581
    const/4 v2, 0x1

    #@153
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@156
    move-result-object v0

    #@157
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@159
    .line 583
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@15b
    const/4 v1, 0x0

    #@15c
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@15f
    .line 585
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    #@162
    move-result v0

    #@163
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@165
    .line 586
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@167
    if-nez v0, :cond_2

    #@169
    .line 587
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16c
    move-result-object v11

    #@16d
    .line 589
    .local v11, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Lcom/android/server/content/SyncManager$12;

    #@16f
    const/4 v0, 0x0

    #@170
    invoke-direct {v10, p0, v0, v11}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    #@173
    .line 599
    .local v10, "provisionedObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@175
    monitor-enter v1

    #@176
    .line 601
    :try_start_0
    const-string/jumbo v0, "device_provisioned"

    #@179
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@17c
    move-result-object v0

    #@17d
    .line 602
    const/4 v2, 0x0

    #@17e
    .line 600
    invoke-virtual {v11, v0, v2, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@181
    .line 607
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@183
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    #@186
    move-result v2

    #@187
    or-int/2addr v0, v2

    #@188
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@18a
    .line 608
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@18c
    if-eqz v0, :cond_1

    #@18e
    .line 609
    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@191
    :cond_1
    monitor-exit v1

    #@192
    .line 614
    .end local v10    # "provisionedObserver":Landroid/database/ContentObserver;
    .end local v11    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    if-nez p2, :cond_3

    #@194
    .line 616
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@196
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@198
    .line 617
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@19a
    .line 618
    new-instance v7, Landroid/content/IntentFilter;

    #@19c
    const-string/jumbo v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    #@19f
    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1a2
    .line 619
    const/4 v8, 0x0

    #@1a3
    const/4 v9, 0x0

    #@1a4
    .line 616
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1a7
    .line 626
    :cond_3
    new-instance v12, Landroid/content/Intent;

    #@1a9
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@1ab
    const-class v1, Lcom/android/server/content/SyncJobService;

    #@1ad
    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@1b0
    .line 627
    .local v12, "startServiceIntent":Landroid/content/Intent;
    const-string/jumbo v0, "messenger"

    #@1b3
    new-instance v1, Landroid/os/Messenger;

    #@1b5
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@1b7
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@1ba
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1bd
    .line 628
    new-instance v0, Landroid/os/Handler;

    #@1bf
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@1c1
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1c8
    new-instance v1, Lcom/android/server/content/SyncManager$13;

    #@1ca
    invoke-direct {v1, p0, v12}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;Landroid/content/Intent;)V

    #@1cd
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1d0
    .line 482
    return-void

    #@1d1
    .line 561
    .end local v12    # "startServiceIntent":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x0

    #@1d2
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    #@1d4
    goto/16 :goto_0

    #@1d6
    .line 599
    .restart local v10    # "provisionedObserver":Landroid/database/ContentObserver;
    .restart local v11    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    #@1d7
    monitor-exit v1

    #@1d8
    throw v0
.end method

.method private cleanupJobs()V
    .locals 2

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2
    new-instance v1, Lcom/android/server/content/SyncManager$7;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@a
    .line 423
    return-void
.end method

.method private clearAllBackoffs()V
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    #@5
    .line 371
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@a
    .line 369
    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 1065
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@7
    move-result-object v6

    #@8
    .line 1066
    .local v6, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v6, :cond_0

    #@a
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@c
    check-cast v0, Ljava/lang/Long;

    #@e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@11
    move-result-wide v0

    #@12
    cmp-long v0, v0, v2

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1067
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@18
    check-cast v0, Ljava/lang/Long;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@1d
    move-result-wide v0

    #@1e
    cmp-long v0, v0, v2

    #@20
    if-nez v0, :cond_0

    #@22
    .line 1068
    return-void

    #@23
    .line 1070
    :cond_0
    const-string/jumbo v0, "SyncManager"

    #@26
    const/4 v1, 0x2

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 1071
    const-string/jumbo v0, "SyncManager"

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "Clearing backoffs for "

    #@38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@49
    move-object v1, p1

    #@4a
    move-wide v4, v2

    #@4b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@4e
    .line 1077
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@51
    .line 1064
    return-void
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 318
    const/4 v0, 0x0

    #@1
    .line 319
    .local v0, "found":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 320
    aget-object v2, p1, v1

    #@7
    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@9
    if-ne v2, p3, :cond_1

    #@b
    .line 321
    aget-object v2, p1, v1

    #@d
    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@f
    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    .line 320
    if-eqz v2, :cond_1

    #@15
    .line 322
    const/4 v0, 0x1

    #@16
    .line 326
    :cond_0
    return v0

    #@17
    .line 319
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0
.end method

.method private doDatabaseCleanup()V
    .locals 6

    #@0
    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/content/pm/UserInfo;

    #@17
    .line 341
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 342
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@1e
    move-result-object v3

    #@1f
    .line 343
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@21
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 342
    invoke-virtual {v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    #@2a
    move-result-object v0

    #@2b
    .line 345
    .local v0, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2d
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {v3, v0, v4}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    #@32
    goto :goto_0

    #@33
    .line 338
    .end local v0    # "accountsForUser":[Landroid/accounts/Account;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ds"    # Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@0
    .prologue
    .line 1782
    const-string/jumbo v0, "Success ("

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b
    .line 1783
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@d
    if-lez v0, :cond_0

    #@f
    .line 1784
    const-string/jumbo v0, " for "

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@17
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    #@1a
    .line 1785
    const-string/jumbo v0, " avg="

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@22
    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@24
    int-to-long v2, v2

    #@25
    div-long/2addr v0, v2

    #@26
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    #@29
    .line 1787
    :cond_0
    const-string/jumbo v0, ") Failure ("

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@34
    .line 1788
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@36
    if-lez v0, :cond_1

    #@38
    .line 1789
    const-string/jumbo v0, " for "

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@40
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    #@43
    .line 1790
    const-string/jumbo v0, " avg="

    #@46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@4b
    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@4d
    int-to-long v2, v2

    #@4e
    div-long/2addr v0, v2

    #@4f
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    #@52
    .line 1792
    :cond_1
    const-string/jumbo v0, ")"

    #@55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 1781
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/4 v12, 0x6

    #@1
    const/4 v8, 0x0

    #@2
    .line 2036
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@4
    invoke-virtual {v7}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@7
    move-result-object v3

    #@8
    .line 2037
    .local v3, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v3, :cond_6

    #@a
    aget-object v7, v3, v8

    #@c
    if-eqz v7, :cond_6

    #@e
    .line 2038
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@11
    .line 2039
    const-string/jumbo v7, "Sync Statistics"

    #@14
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 2040
    const-string/jumbo v7, "  Today:  "

    #@1a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    aget-object v7, v3, v8

    #@1f
    invoke-direct {p0, p1, v7}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    #@22
    .line 2041
    aget-object v7, v3, v8

    #@24
    iget v5, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@26
    .line 2046
    .local v5, "today":I
    const/4 v4, 0x1

    #@27
    .local v4, "i":I
    :goto_0
    if-gt v4, v12, :cond_0

    #@29
    array-length v7, v3

    #@2a
    if-ge v4, v7, :cond_0

    #@2c
    .line 2047
    aget-object v2, v3, v4

    #@2e
    .line 2048
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_3

    #@30
    .line 2057
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_0
    move v6, v5

    #@31
    .line 2058
    .local v6, "weekDay":I
    :cond_1
    :goto_1
    array-length v7, v3

    #@32
    if-ge v4, v7, :cond_6

    #@34
    .line 2059
    const/4 v0, 0x0

    #@35
    .line 2060
    .local v0, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v6, v6, -0x7

    #@37
    .line 2061
    .end local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :goto_2
    array-length v7, v3

    #@38
    if-ge v4, v7, :cond_2

    #@3a
    .line 2062
    aget-object v2, v3, v4

    #@3c
    .line 2063
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_4

    #@3e
    .line 2064
    array-length v4, v3

    #@3f
    .line 2079
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v0, :cond_1

    #@41
    .line 2080
    const-string/jumbo v7, "  Week-"

    #@44
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    sub-int v7, v5, v6

    #@49
    div-int/lit8 v7, v7, 0x7

    #@4b
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    #@4e
    const-string/jumbo v7, ": "

    #@51
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    .line 2081
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    #@57
    goto :goto_1

    #@58
    .line 2049
    .end local v6    # "weekDay":I
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@5a
    sub-int v1, v5, v7

    #@5c
    .line 2050
    .local v1, "delta":I
    if-gt v1, v12, :cond_0

    #@5e
    .line 2052
    const-string/jumbo v7, "  Day-"

    #@61
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@67
    const-string/jumbo v7, ":  "

    #@6a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 2053
    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    #@70
    .line 2046
    add-int/lit8 v4, v4, 0x1

    #@72
    goto :goto_0

    #@73
    .line 2067
    .end local v1    # "delta":I
    .restart local v6    # "weekDay":I
    :cond_4
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@75
    sub-int v1, v6, v7

    #@77
    .line 2068
    .restart local v1    # "delta":I
    if-gt v1, v12, :cond_2

    #@79
    .line 2069
    add-int/lit8 v4, v4, 0x1

    #@7b
    .line 2071
    if-nez v0, :cond_5

    #@7d
    .line 2072
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@7f
    invoke-direct {v0, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    #@82
    .line 2074
    :cond_5
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@84
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@86
    add-int/2addr v7, v8

    #@87
    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@89
    .line 2075
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@8b
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@8d
    add-long/2addr v8, v10

    #@8e
    iput-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@90
    .line 2076
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@92
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@94
    add-int/2addr v7, v8

    #@95
    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@97
    .line 2077
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@99
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@9b
    add-long/2addr v8, v10

    #@9c
    iput-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@9e
    goto :goto_2

    #@9f
    .line 2035
    .end local v1    # "delta":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v4    # "i":I
    .end local v5    # "today":I
    .end local v6    # "weekDay":I
    :cond_6
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 58
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1802
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@4
    move-object/from16 v54, v0

    #@6
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    #@9
    move-result-object v28

    #@a
    .line 1803
    .local v28, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v28, :cond_15

    #@c
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v54

    #@10
    if-lez v54, :cond_15

    #@12
    .line 1804
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@15
    move-result-object v11

    #@16
    .line 1805
    .local v11, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v50, 0x0

    #@18
    .line 1806
    .local v50, "totalElapsedTime":J
    const-wide/16 v52, 0x0

    #@1a
    .line 1807
    .local v52, "totalTimes":J
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v4

    #@1e
    .line 1809
    .local v4, "N":I
    const/16 v34, 0x0

    #@20
    .line 1810
    .local v34, "maxAuthority":I
    const/16 v33, 0x0

    #@22
    .line 1811
    .local v33, "maxAccount":I
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v27

    #@26
    .local v27, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v54

    #@2a
    if-eqz v54, :cond_5

    #@2c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v26

    #@30
    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@32
    .line 1813
    .local v26, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@36
    move-object/from16 v54, v0

    #@38
    move-object/from16 v0, v26

    #@3a
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@3c
    move/from16 v55, v0

    #@3e
    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@41
    move-result-object v10

    #@42
    .line 1816
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_4

    #@44
    .line 1817
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@46
    move-object/from16 v54, v0

    #@48
    move-object/from16 v0, v54

    #@4a
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@4c
    .line 1818
    .local v12, "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@53
    move-object/from16 v55, v0

    #@55
    move-object/from16 v0, v55

    #@57
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@59
    move-object/from16 v55, v0

    #@5b
    move-object/from16 v0, v55

    #@5d
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@5f
    move-object/from16 v55, v0

    #@61
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v54

    #@65
    const-string/jumbo v55, "/"

    #@68
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v54

    #@6c
    .line 1819
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6e
    move-object/from16 v55, v0

    #@70
    move-object/from16 v0, v55

    #@72
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@74
    move-object/from16 v55, v0

    #@76
    move-object/from16 v0, v55

    #@78
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7a
    move-object/from16 v55, v0

    #@7c
    .line 1818
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v54

    #@80
    .line 1820
    const-string/jumbo v55, " u"

    #@83
    .line 1818
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v54

    #@87
    .line 1820
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@89
    move-object/from16 v55, v0

    #@8b
    move-object/from16 v0, v55

    #@8d
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@8f
    move/from16 v55, v0

    #@91
    .line 1818
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v54

    #@95
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v6

    #@99
    .line 1826
    .local v6, "accountKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@9c
    move-result v32

    #@9d
    .line 1827
    .local v32, "length":I
    move/from16 v0, v32

    #@9f
    move/from16 v1, v34

    #@a1
    if-le v0, v1, :cond_0

    #@a3
    .line 1828
    move/from16 v34, v32

    #@a5
    .line 1830
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@a8
    move-result v32

    #@a9
    .line 1831
    move/from16 v0, v32

    #@ab
    move/from16 v1, v33

    #@ad
    if-le v0, v1, :cond_1

    #@af
    .line 1832
    move/from16 v33, v32

    #@b1
    .line 1835
    :cond_1
    move-object/from16 v0, v26

    #@b3
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    #@b5
    move-wide/from16 v20, v0

    #@b7
    .line 1836
    .local v20, "elapsedTime":J
    add-long v50, v50, v20

    #@b9
    .line 1837
    const-wide/16 v54, 0x1

    #@bb
    add-long v52, v52, v54

    #@bd
    .line 1838
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    move-result-object v13

    #@c1
    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@c3
    .line 1839
    .local v13, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    if-nez v13, :cond_2

    #@c5
    .line 1840
    new-instance v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@c7
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    const/16 v54, 0x0

    #@c9
    move-object/from16 v0, v54

    #@cb
    invoke-direct {v13, v12, v0}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)V

    #@ce
    .line 1841
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    .line 1843
    :cond_2
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@d3
    move-wide/from16 v54, v0

    #@d5
    add-long v54, v54, v20

    #@d7
    move-wide/from16 v0, v54

    #@d9
    iput-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@db
    .line 1844
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@dd
    move/from16 v54, v0

    #@df
    add-int/lit8 v54, v54, 0x1

    #@e1
    move/from16 v0, v54

    #@e3
    iput v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@e5
    .line 1845
    iget-object v7, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    #@e7
    .line 1846
    .local v7, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    move-result-object v8

    #@eb
    check-cast v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    #@ed
    .line 1847
    .local v8, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v8, :cond_3

    #@ef
    .line 1848
    new-instance v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    #@f1
    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    const/16 v54, 0x0

    #@f3
    move-object/from16 v0, v54

    #@f5
    invoke-direct {v8, v6, v0}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;)V

    #@f8
    .line 1849
    .restart local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    .line 1851
    :cond_3
    iget-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    #@fd
    move-wide/from16 v54, v0

    #@ff
    add-long v54, v54, v20

    #@101
    move-wide/from16 v0, v54

    #@103
    iput-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    #@105
    .line 1852
    iget v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    #@107
    move/from16 v54, v0

    #@109
    add-int/lit8 v54, v54, 0x1

    #@10b
    move/from16 v0, v54

    #@10d
    iput v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    #@10f
    goto/16 :goto_0

    #@111
    .line 1822
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v20    # "elapsedTime":J
    .end local v32    # "length":I
    :cond_4
    const-string/jumbo v12, "Unknown"

    #@114
    .line 1823
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@117
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto :goto_1

    #@118
    .line 1856
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_5
    const-wide/16 v54, 0x0

    #@11a
    cmp-long v54, v50, v54

    #@11c
    if-lez v54, :cond_7

    #@11e
    .line 1857
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@121
    .line 1858
    const-string/jumbo v54, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    #@124
    const/16 v55, 0x2

    #@126
    move/from16 v0, v55

    #@128
    new-array v0, v0, [Ljava/lang/Object;

    #@12a
    move-object/from16 v55, v0

    #@12c
    .line 1860
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12f
    move-result-object v56

    #@130
    const/16 v57, 0x0

    #@132
    aput-object v56, v55, v57

    #@134
    const-wide/16 v56, 0x3e8

    #@136
    div-long v56, v50, v56

    #@138
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13b
    move-result-object v56

    #@13c
    const/16 v57, 0x1

    #@13e
    aput-object v56, v55, v57

    #@140
    .line 1858
    move-object/from16 v0, p1

    #@142
    move-object/from16 v1, v54

    #@144
    move-object/from16 v2, v55

    #@146
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@149
    .line 1863
    new-instance v43, Ljava/util/ArrayList;

    #@14b
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@14e
    move-result-object v54

    #@14f
    move-object/from16 v0, v43

    #@151
    move-object/from16 v1, v54

    #@153
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@156
    .line 1864
    .local v43, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v54, Lcom/android/server/content/SyncManager$15;

    #@158
    move-object/from16 v0, v54

    #@15a
    move-object/from16 v1, p0

    #@15c
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$15;-><init>(Lcom/android/server/content/SyncManager;)V

    #@15f
    move-object/from16 v0, v43

    #@161
    move-object/from16 v1, v54

    #@163
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@166
    .line 1876
    add-int/lit8 v54, v33, 0x3

    #@168
    move/from16 v0, v34

    #@16a
    move/from16 v1, v54

    #@16c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@16f
    move-result v35

    #@170
    .line 1877
    .local v35, "maxLength":I
    add-int/lit8 v54, v35, 0x4

    #@172
    add-int/lit8 v54, v54, 0x2

    #@174
    add-int/lit8 v54, v54, 0xa

    #@176
    add-int/lit8 v37, v54, 0xb

    #@178
    .line 1878
    .local v37, "padLength":I
    move/from16 v0, v37

    #@17a
    new-array v15, v0, [C

    #@17c
    .line 1879
    .local v15, "chars":[C
    const/16 v54, 0x2d

    #@17e
    move/from16 v0, v54

    #@180
    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([CC)V

    #@183
    .line 1880
    new-instance v39, Ljava/lang/String;

    #@185
    move-object/from16 v0, v39

    #@187
    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([C)V

    #@18a
    .line 1883
    .local v39, "separator":Ljava/lang/String;
    const-string/jumbo v54, "  %%-%ds: %%-9s  %%-11s\n"

    #@18d
    const/16 v55, 0x1

    #@18f
    move/from16 v0, v55

    #@191
    new-array v0, v0, [Ljava/lang/Object;

    #@193
    move-object/from16 v55, v0

    #@195
    add-int/lit8 v56, v35, 0x2

    #@197
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19a
    move-result-object v56

    #@19b
    const/16 v57, 0x0

    #@19d
    aput-object v56, v55, v57

    #@19f
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a2
    move-result-object v9

    #@1a3
    .line 1885
    .local v9, "authorityFormat":Ljava/lang/String;
    const-string/jumbo v54, "    %%-%ds:   %%-9s  %%-11s\n"

    #@1a6
    const/16 v55, 0x1

    #@1a8
    move/from16 v0, v55

    #@1aa
    new-array v0, v0, [Ljava/lang/Object;

    #@1ac
    move-object/from16 v55, v0

    #@1ae
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b1
    move-result-object v56

    #@1b2
    const/16 v57, 0x0

    #@1b4
    aput-object v56, v55, v57

    #@1b6
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b9
    move-result-object v5

    #@1ba
    .line 1887
    .local v5, "accountFormat":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1bc
    move-object/from16 v1, v39

    #@1be
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c1
    .line 1888
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c4
    move-result-object v14

    #@1c5
    .local v14, "authoritySyncStats$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@1c8
    move-result v54

    #@1c9
    if-eqz v54, :cond_7

    #@1cb
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ce
    move-result-object v13

    #@1cf
    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@1d1
    .line 1889
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    #@1d3
    move-object/from16 v36, v0

    #@1d5
    .line 1895
    .local v36, "name":Ljava/lang/String;
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@1d7
    move-wide/from16 v20, v0

    #@1d9
    .line 1896
    .restart local v20    # "elapsedTime":J
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@1db
    move/from16 v48, v0

    #@1dd
    .line 1897
    .local v48, "times":I
    const-string/jumbo v54, "%ds/%d%%"

    #@1e0
    const/16 v55, 0x2

    #@1e2
    move/from16 v0, v55

    #@1e4
    new-array v0, v0, [Ljava/lang/Object;

    #@1e6
    move-object/from16 v55, v0

    #@1e8
    .line 1898
    const-wide/16 v56, 0x3e8

    #@1ea
    div-long v56, v20, v56

    #@1ec
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1ef
    move-result-object v56

    #@1f0
    const/16 v57, 0x0

    #@1f2
    aput-object v56, v55, v57

    #@1f4
    .line 1899
    const-wide/16 v56, 0x64

    #@1f6
    mul-long v56, v56, v20

    #@1f8
    div-long v56, v56, v50

    #@1fa
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1fd
    move-result-object v56

    #@1fe
    const/16 v57, 0x1

    #@200
    aput-object v56, v55, v57

    #@202
    .line 1897
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@205
    move-result-object v47

    #@206
    .line 1900
    .local v47, "timeStr":Ljava/lang/String;
    const-string/jumbo v54, "%d/%d%%"

    #@209
    const/16 v55, 0x2

    #@20b
    move/from16 v0, v55

    #@20d
    new-array v0, v0, [Ljava/lang/Object;

    #@20f
    move-object/from16 v55, v0

    #@211
    .line 1901
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@214
    move-result-object v56

    #@215
    const/16 v57, 0x0

    #@217
    aput-object v56, v55, v57

    #@219
    .line 1902
    mul-int/lit8 v56, v48, 0x64

    #@21b
    move/from16 v0, v56

    #@21d
    int-to-long v0, v0

    #@21e
    move-wide/from16 v56, v0

    #@220
    div-long v56, v56, v52

    #@222
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@225
    move-result-object v56

    #@226
    const/16 v57, 0x1

    #@228
    aput-object v56, v55, v57

    #@22a
    .line 1900
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@22d
    move-result-object v49

    #@22e
    .line 1903
    .local v49, "timesStr":Ljava/lang/String;
    const/16 v54, 0x3

    #@230
    move/from16 v0, v54

    #@232
    new-array v0, v0, [Ljava/lang/Object;

    #@234
    move-object/from16 v54, v0

    #@236
    const/16 v55, 0x0

    #@238
    aput-object v36, v54, v55

    #@23a
    const/16 v55, 0x1

    #@23c
    aput-object v49, v54, v55

    #@23e
    const/16 v55, 0x2

    #@240
    aput-object v47, v54, v55

    #@242
    move-object/from16 v0, p1

    #@244
    move-object/from16 v1, v54

    #@246
    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@249
    .line 1906
    new-instance v42, Ljava/util/ArrayList;

    #@24b
    .line 1907
    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    #@24d
    move-object/from16 v54, v0

    #@24f
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@252
    move-result-object v54

    #@253
    .line 1906
    move-object/from16 v0, v42

    #@255
    move-object/from16 v1, v54

    #@257
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@25a
    .line 1908
    .local v42, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v54, Lcom/android/server/content/SyncManager$16;

    #@25c
    move-object/from16 v0, v54

    #@25e
    move-object/from16 v1, p0

    #@260
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$16;-><init>(Lcom/android/server/content/SyncManager;)V

    #@263
    move-object/from16 v0, v42

    #@265
    move-object/from16 v1, v54

    #@267
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@26a
    .line 1919
    invoke-interface/range {v42 .. v42}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26d
    move-result-object v45

    #@26e
    .local v45, "stats$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    #@271
    move-result v54

    #@272
    if-eqz v54, :cond_6

    #@274
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@277
    move-result-object v44

    #@278
    check-cast v44, Lcom/android/server/content/SyncManager$AccountSyncStats;

    #@27a
    .line 1920
    .local v44, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move-object/from16 v0, v44

    #@27c
    iget-wide v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    #@27e
    move-wide/from16 v20, v0

    #@280
    .line 1921
    move-object/from16 v0, v44

    #@282
    iget v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    #@284
    move/from16 v48, v0

    #@286
    .line 1922
    const-string/jumbo v54, "%ds/%d%%"

    #@289
    const/16 v55, 0x2

    #@28b
    move/from16 v0, v55

    #@28d
    new-array v0, v0, [Ljava/lang/Object;

    #@28f
    move-object/from16 v55, v0

    #@291
    .line 1923
    const-wide/16 v56, 0x3e8

    #@293
    div-long v56, v20, v56

    #@295
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@298
    move-result-object v56

    #@299
    const/16 v57, 0x0

    #@29b
    aput-object v56, v55, v57

    #@29d
    .line 1924
    const-wide/16 v56, 0x64

    #@29f
    mul-long v56, v56, v20

    #@2a1
    div-long v56, v56, v50

    #@2a3
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a6
    move-result-object v56

    #@2a7
    const/16 v57, 0x1

    #@2a9
    aput-object v56, v55, v57

    #@2ab
    .line 1922
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2ae
    move-result-object v47

    #@2af
    .line 1925
    const-string/jumbo v54, "%d/%d%%"

    #@2b2
    const/16 v55, 0x2

    #@2b4
    move/from16 v0, v55

    #@2b6
    new-array v0, v0, [Ljava/lang/Object;

    #@2b8
    move-object/from16 v55, v0

    #@2ba
    .line 1926
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2bd
    move-result-object v56

    #@2be
    const/16 v57, 0x0

    #@2c0
    aput-object v56, v55, v57

    #@2c2
    .line 1927
    mul-int/lit8 v56, v48, 0x64

    #@2c4
    move/from16 v0, v56

    #@2c6
    int-to-long v0, v0

    #@2c7
    move-wide/from16 v56, v0

    #@2c9
    div-long v56, v56, v52

    #@2cb
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2ce
    move-result-object v56

    #@2cf
    const/16 v57, 0x1

    #@2d1
    aput-object v56, v55, v57

    #@2d3
    .line 1925
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d6
    move-result-object v49

    #@2d7
    .line 1928
    const/16 v54, 0x3

    #@2d9
    move/from16 v0, v54

    #@2db
    new-array v0, v0, [Ljava/lang/Object;

    #@2dd
    move-object/from16 v54, v0

    #@2df
    move-object/from16 v0, v44

    #@2e1
    iget-object v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    #@2e3
    move-object/from16 v55, v0

    #@2e5
    const/16 v56, 0x0

    #@2e7
    aput-object v55, v54, v56

    #@2e9
    const/16 v55, 0x1

    #@2eb
    aput-object v49, v54, v55

    #@2ed
    const/16 v55, 0x2

    #@2ef
    aput-object v47, v54, v55

    #@2f1
    move-object/from16 v0, p1

    #@2f3
    move-object/from16 v1, v54

    #@2f5
    invoke-virtual {v0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@2f8
    goto/16 :goto_3

    #@2fa
    .line 1930
    .end local v44    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    :cond_6
    move-object/from16 v0, p1

    #@2fc
    move-object/from16 v1, v39

    #@2fe
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@301
    goto/16 :goto_2

    #@303
    .line 1934
    .end local v5    # "accountFormat":Ljava/lang/String;
    .end local v9    # "authorityFormat":Ljava/lang/String;
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v14    # "authoritySyncStats$iterator":Ljava/util/Iterator;
    .end local v15    # "chars":[C
    .end local v20    # "elapsedTime":J
    .end local v35    # "maxLength":I
    .end local v36    # "name":Ljava/lang/String;
    .end local v37    # "padLength":I
    .end local v39    # "separator":Ljava/lang/String;
    .end local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v43    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v45    # "stats$iterator":Ljava/util/Iterator;
    .end local v47    # "timeStr":Ljava/lang/String;
    .end local v48    # "times":I
    .end local v49    # "timesStr":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@306
    .line 1935
    const-string/jumbo v54, "Recent Sync History"

    #@309
    move-object/from16 v0, p1

    #@30b
    move-object/from16 v1, v54

    #@30d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@310
    .line 1936
    new-instance v54, Ljava/lang/StringBuilder;

    #@312
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@315
    const-string/jumbo v55, "  %-"

    #@318
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v54

    #@31c
    move-object/from16 v0, v54

    #@31e
    move/from16 v1, v33

    #@320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@323
    move-result-object v54

    #@324
    const-string/jumbo v55, "s  %-"

    #@327
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v54

    #@32b
    move-object/from16 v0, v54

    #@32d
    move/from16 v1, v34

    #@32f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@332
    move-result-object v54

    #@333
    const-string/jumbo v55, "s %s\n"

    #@336
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@339
    move-result-object v54

    #@33a
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33d
    move-result-object v24

    #@33e
    .line 1937
    .local v24, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@341
    move-result-object v31

    #@342
    .line 1938
    .local v31, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    #@344
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@346
    move-object/from16 v54, v0

    #@348
    invoke-virtual/range {v54 .. v54}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@34b
    move-result-object v38

    #@34c
    .line 1939
    .local v38, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x0

    #@34e
    .local v25, "i":I
    :goto_4
    move/from16 v0, v25

    #@350
    if-ge v0, v4, :cond_11

    #@352
    .line 1940
    move-object/from16 v0, v28

    #@354
    move/from16 v1, v25

    #@356
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@359
    move-result-object v26

    #@35a
    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@35c
    .line 1942
    .restart local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    #@35e
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@360
    move-object/from16 v54, v0

    #@362
    move-object/from16 v0, v26

    #@364
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@366
    move/from16 v55, v0

    #@368
    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@36b
    move-result-object v10

    #@36c
    .line 1945
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_b

    #@36e
    .line 1946
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@370
    move-object/from16 v54, v0

    #@372
    move-object/from16 v0, v54

    #@374
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@376
    .line 1947
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    #@378
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@37b
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@37d
    move-object/from16 v55, v0

    #@37f
    move-object/from16 v0, v55

    #@381
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@383
    move-object/from16 v55, v0

    #@385
    move-object/from16 v0, v55

    #@387
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@389
    move-object/from16 v55, v0

    #@38b
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38e
    move-result-object v54

    #@38f
    const-string/jumbo v55, "/"

    #@392
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@395
    move-result-object v54

    #@396
    .line 1948
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@398
    move-object/from16 v55, v0

    #@39a
    move-object/from16 v0, v55

    #@39c
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@39e
    move-object/from16 v55, v0

    #@3a0
    move-object/from16 v0, v55

    #@3a2
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@3a4
    move-object/from16 v55, v0

    #@3a6
    .line 1947
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v54

    #@3aa
    .line 1949
    const-string/jumbo v55, " u"

    #@3ad
    .line 1947
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v54

    #@3b1
    .line 1949
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3b3
    move-object/from16 v55, v0

    #@3b5
    move-object/from16 v0, v55

    #@3b7
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@3b9
    move/from16 v55, v0

    #@3bb
    .line 1947
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3be
    move-result-object v54

    #@3bf
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c2
    move-result-object v6

    #@3c3
    .line 1954
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v26

    #@3c5
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    #@3c7
    move-wide/from16 v20, v0

    #@3c9
    .line 1955
    .restart local v20    # "elapsedTime":J
    new-instance v46, Landroid/text/format/Time;

    #@3cb
    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    #@3ce
    .line 1956
    .local v46, "time":Landroid/text/format/Time;
    move-object/from16 v0, v26

    #@3d0
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@3d2
    move-wide/from16 v22, v0

    #@3d4
    .line 1957
    .local v22, "eventTime":J
    move-object/from16 v0, v46

    #@3d6
    move-wide/from16 v1, v22

    #@3d8
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    #@3db
    .line 1959
    new-instance v54, Ljava/lang/StringBuilder;

    #@3dd
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@3e0
    move-object/from16 v0, v54

    #@3e2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e5
    move-result-object v54

    #@3e6
    const-string/jumbo v55, "/"

    #@3e9
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ec
    move-result-object v54

    #@3ed
    move-object/from16 v0, v54

    #@3ef
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f2
    move-result-object v54

    #@3f3
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f6
    move-result-object v29

    #@3f7
    .line 1960
    .local v29, "key":Ljava/lang/String;
    move-object/from16 v0, v31

    #@3f9
    move-object/from16 v1, v29

    #@3fb
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3fe
    move-result-object v30

    #@3ff
    check-cast v30, Ljava/lang/Long;

    #@401
    .line 1962
    .local v30, "lastEventTime":Ljava/lang/Long;
    if-nez v30, :cond_c

    #@403
    .line 1963
    const-string/jumbo v18, ""

    #@406
    .line 1976
    .local v18, "diffString":Ljava/lang/String;
    :goto_6
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@409
    move-result-object v54

    #@40a
    move-object/from16 v0, v31

    #@40c
    move-object/from16 v1, v29

    #@40e
    move-object/from16 v2, v54

    #@410
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@413
    .line 1978
    const-string/jumbo v54, "  #%-3d: %s %8s  %5.1fs  %8s"

    #@416
    const/16 v55, 0x5

    #@418
    move/from16 v0, v55

    #@41a
    new-array v0, v0, [Ljava/lang/Object;

    #@41c
    move-object/from16 v55, v0

    #@41e
    .line 1979
    add-int/lit8 v56, v25, 0x1

    #@420
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@423
    move-result-object v56

    #@424
    const/16 v57, 0x0

    #@426
    aput-object v56, v55, v57

    #@428
    .line 1980
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@42b
    move-result-object v56

    #@42c
    const/16 v57, 0x1

    #@42e
    aput-object v56, v55, v57

    #@430
    .line 1981
    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@432
    move-object/from16 v0, v26

    #@434
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@436
    move/from16 v57, v0

    #@438
    aget-object v56, v56, v57

    #@43a
    const/16 v57, 0x2

    #@43c
    aput-object v56, v55, v57

    #@43e
    .line 1982
    move-wide/from16 v0, v20

    #@440
    long-to-float v0, v0

    #@441
    move/from16 v56, v0

    #@443
    const/high16 v57, 0x447a0000    # 1000.0f

    #@445
    div-float v56, v56, v57

    #@447
    invoke-static/range {v56 .. v56}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@44a
    move-result-object v56

    #@44b
    const/16 v57, 0x3

    #@44d
    aput-object v56, v55, v57

    #@44f
    .line 1983
    const/16 v56, 0x4

    #@451
    aput-object v18, v55, v56

    #@453
    .line 1978
    move-object/from16 v0, p1

    #@455
    move-object/from16 v1, v54

    #@457
    move-object/from16 v2, v55

    #@459
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@45c
    .line 1984
    const/16 v54, 0x3

    #@45e
    move/from16 v0, v54

    #@460
    new-array v0, v0, [Ljava/lang/Object;

    #@462
    move-object/from16 v54, v0

    #@464
    const/16 v55, 0x0

    #@466
    aput-object v6, v54, v55

    #@468
    const/16 v55, 0x1

    #@46a
    aput-object v12, v54, v55

    #@46c
    .line 1985
    move-object/from16 v0, v26

    #@46e
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    #@470
    move/from16 v55, v0

    #@472
    move-object/from16 v0, v38

    #@474
    move/from16 v1, v55

    #@476
    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    #@479
    move-result-object v55

    #@47a
    const/16 v56, 0x2

    #@47c
    aput-object v55, v54, v56

    #@47e
    .line 1984
    move-object/from16 v0, p1

    #@480
    move-object/from16 v1, v24

    #@482
    move-object/from16 v2, v54

    #@484
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@487
    .line 1987
    move-object/from16 v0, v26

    #@489
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@48b
    move/from16 v54, v0

    #@48d
    const/16 v55, 0x1

    #@48f
    move/from16 v0, v54

    #@491
    move/from16 v1, v55

    #@493
    if-ne v0, v1, :cond_8

    #@495
    .line 1988
    move-object/from16 v0, v26

    #@497
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    #@499
    move-wide/from16 v54, v0

    #@49b
    const-wide/16 v56, 0x0

    #@49d
    cmp-long v54, v54, v56

    #@49f
    if-eqz v54, :cond_f

    #@4a1
    .line 1990
    :cond_8
    :goto_7
    const-string/jumbo v54, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    #@4a4
    const/16 v55, 0x3

    #@4a6
    move/from16 v0, v55

    #@4a8
    new-array v0, v0, [Ljava/lang/Object;

    #@4aa
    move-object/from16 v55, v0

    #@4ac
    .line 1991
    move-object/from16 v0, v26

    #@4ae
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@4b0
    move/from16 v56, v0

    #@4b2
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b5
    move-result-object v56

    #@4b6
    const/16 v57, 0x0

    #@4b8
    aput-object v56, v55, v57

    #@4ba
    .line 1992
    move-object/from16 v0, v26

    #@4bc
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    #@4be
    move-wide/from16 v56, v0

    #@4c0
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4c3
    move-result-object v56

    #@4c4
    const/16 v57, 0x1

    #@4c6
    aput-object v56, v55, v57

    #@4c8
    .line 1993
    move-object/from16 v0, v26

    #@4ca
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    #@4cc
    move-wide/from16 v56, v0

    #@4ce
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d1
    move-result-object v56

    #@4d2
    const/16 v57, 0x2

    #@4d4
    aput-object v56, v55, v57

    #@4d6
    .line 1990
    move-object/from16 v0, p1

    #@4d8
    move-object/from16 v1, v54

    #@4da
    move-object/from16 v2, v55

    #@4dc
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@4df
    .line 1995
    :cond_9
    move-object/from16 v0, v26

    #@4e1
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@4e3
    move-object/from16 v54, v0

    #@4e5
    if-eqz v54, :cond_a

    #@4e7
    .line 1996
    const-string/jumbo v54, "success"

    #@4ea
    move-object/from16 v0, v26

    #@4ec
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@4ee
    move-object/from16 v55, v0

    #@4f0
    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f3
    move-result v54

    #@4f4
    if-eqz v54, :cond_10

    #@4f6
    .line 1939
    :cond_a
    :goto_8
    add-int/lit8 v25, v25, 0x1

    #@4f8
    goto/16 :goto_4

    #@4fa
    .line 1951
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v18    # "diffString":Ljava/lang/String;
    .end local v20    # "elapsedTime":J
    .end local v22    # "eventTime":J
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_b
    const-string/jumbo v12, "Unknown"

    #@4fd
    .line 1952
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@500
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    #@502
    .line 1965
    .restart local v20    # "elapsedTime":J
    .restart local v22    # "eventTime":J
    .restart local v29    # "key":Ljava/lang/String;
    .restart local v30    # "lastEventTime":Ljava/lang/Long;
    .restart local v46    # "time":Landroid/text/format/Time;
    :cond_c
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    #@505
    move-result-wide v54

    #@506
    sub-long v54, v54, v22

    #@508
    const-wide/16 v56, 0x3e8

    #@50a
    div-long v16, v54, v56

    #@50c
    .line 1966
    .local v16, "diff":J
    const-wide/16 v54, 0x3c

    #@50e
    cmp-long v54, v16, v54

    #@510
    if-gez v54, :cond_d

    #@512
    .line 1967
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@515
    move-result-object v18

    #@516
    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    #@518
    .line 1968
    .end local v18    # "diffString":Ljava/lang/String;
    :cond_d
    const-wide/16 v54, 0xe10

    #@51a
    cmp-long v54, v16, v54

    #@51c
    if-gez v54, :cond_e

    #@51e
    .line 1969
    const-string/jumbo v54, "%02d:%02d"

    #@521
    const/16 v55, 0x2

    #@523
    move/from16 v0, v55

    #@525
    new-array v0, v0, [Ljava/lang/Object;

    #@527
    move-object/from16 v55, v0

    #@529
    const-wide/16 v56, 0x3c

    #@52b
    div-long v56, v16, v56

    #@52d
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@530
    move-result-object v56

    #@531
    const/16 v57, 0x0

    #@533
    aput-object v56, v55, v57

    #@535
    const-wide/16 v56, 0x3c

    #@537
    rem-long v56, v16, v56

    #@539
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53c
    move-result-object v56

    #@53d
    const/16 v57, 0x1

    #@53f
    aput-object v56, v55, v57

    #@541
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@544
    move-result-object v18

    #@545
    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    #@547
    .line 1971
    .end local v18    # "diffString":Ljava/lang/String;
    :cond_e
    const-wide/16 v54, 0xe10

    #@549
    rem-long v40, v16, v54

    #@54b
    .line 1972
    .local v40, "sec":J
    const-string/jumbo v54, "%02d:%02d:%02d"

    #@54e
    const/16 v55, 0x3

    #@550
    move/from16 v0, v55

    #@552
    new-array v0, v0, [Ljava/lang/Object;

    #@554
    move-object/from16 v55, v0

    #@556
    .line 1973
    const-wide/16 v56, 0xe10

    #@558
    div-long v56, v16, v56

    #@55a
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@55d
    move-result-object v56

    #@55e
    const/16 v57, 0x0

    #@560
    aput-object v56, v55, v57

    #@562
    const-wide/16 v56, 0x3c

    #@564
    div-long v56, v40, v56

    #@566
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@569
    move-result-object v56

    #@56a
    const/16 v57, 0x1

    #@56c
    aput-object v56, v55, v57

    #@56e
    const-wide/16 v56, 0x3c

    #@570
    rem-long v56, v40, v56

    #@572
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@575
    move-result-object v56

    #@576
    const/16 v57, 0x2

    #@578
    aput-object v56, v55, v57

    #@57a
    .line 1972
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@57d
    move-result-object v18

    #@57e
    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    #@580
    .line 1989
    .end local v16    # "diff":J
    .end local v40    # "sec":J
    :cond_f
    move-object/from16 v0, v26

    #@582
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    #@584
    move-wide/from16 v54, v0

    #@586
    const-wide/16 v56, 0x0

    #@588
    cmp-long v54, v54, v56

    #@58a
    if-eqz v54, :cond_9

    #@58c
    goto/16 :goto_7

    #@58e
    .line 1997
    :cond_10
    const-string/jumbo v54, "    mesg=%s\n"

    #@591
    const/16 v55, 0x1

    #@593
    move/from16 v0, v55

    #@595
    new-array v0, v0, [Ljava/lang/Object;

    #@597
    move-object/from16 v55, v0

    #@599
    move-object/from16 v0, v26

    #@59b
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@59d
    move-object/from16 v56, v0

    #@59f
    const/16 v57, 0x0

    #@5a1
    aput-object v56, v55, v57

    #@5a3
    move-object/from16 v0, p1

    #@5a5
    move-object/from16 v1, v54

    #@5a7
    move-object/from16 v2, v55

    #@5a9
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@5ac
    goto/16 :goto_8

    #@5ae
    .line 2000
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v18    # "diffString":Ljava/lang/String;
    .end local v20    # "elapsedTime":J
    .end local v22    # "eventTime":J
    .end local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@5b1
    .line 2001
    const-string/jumbo v54, "Recent Sync History Extras"

    #@5b4
    move-object/from16 v0, p1

    #@5b6
    move-object/from16 v1, v54

    #@5b8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5bb
    .line 2002
    const/16 v25, 0x0

    #@5bd
    :goto_9
    move/from16 v0, v25

    #@5bf
    if-ge v0, v4, :cond_15

    #@5c1
    .line 2003
    move-object/from16 v0, v28

    #@5c3
    move/from16 v1, v25

    #@5c5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c8
    move-result-object v26

    #@5c9
    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@5cb
    .line 2004
    .restart local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, v26

    #@5cd
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    #@5cf
    move-object/from16 v19, v0

    #@5d1
    .line 2005
    .local v19, "extras":Landroid/os/Bundle;
    if-eqz v19, :cond_12

    #@5d3
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    #@5d6
    move-result v54

    #@5d7
    if-nez v54, :cond_13

    #@5d9
    .line 2002
    :cond_12
    :goto_a
    add-int/lit8 v25, v25, 0x1

    #@5db
    goto :goto_9

    #@5dc
    .line 2009
    :cond_13
    move-object/from16 v0, p0

    #@5de
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@5e0
    move-object/from16 v54, v0

    #@5e2
    move-object/from16 v0, v26

    #@5e4
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@5e6
    move/from16 v55, v0

    #@5e8
    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@5eb
    move-result-object v10

    #@5ec
    .line 2012
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_14

    #@5ee
    .line 2013
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5f0
    move-object/from16 v54, v0

    #@5f2
    move-object/from16 v0, v54

    #@5f4
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@5f6
    .line 2014
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    #@5f8
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@5fb
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5fd
    move-object/from16 v55, v0

    #@5ff
    move-object/from16 v0, v55

    #@601
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@603
    move-object/from16 v55, v0

    #@605
    move-object/from16 v0, v55

    #@607
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@609
    move-object/from16 v55, v0

    #@60b
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60e
    move-result-object v54

    #@60f
    const-string/jumbo v55, "/"

    #@612
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@615
    move-result-object v54

    #@616
    .line 2015
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@618
    move-object/from16 v55, v0

    #@61a
    move-object/from16 v0, v55

    #@61c
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@61e
    move-object/from16 v55, v0

    #@620
    move-object/from16 v0, v55

    #@622
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@624
    move-object/from16 v55, v0

    #@626
    .line 2014
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@629
    move-result-object v54

    #@62a
    .line 2016
    const-string/jumbo v55, " u"

    #@62d
    .line 2014
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@630
    move-result-object v54

    #@631
    .line 2016
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@633
    move-object/from16 v55, v0

    #@635
    move-object/from16 v0, v55

    #@637
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@639
    move/from16 v55, v0

    #@63b
    .line 2014
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63e
    move-result-object v54

    #@63f
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@642
    move-result-object v6

    #@643
    .line 2021
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_b
    new-instance v46, Landroid/text/format/Time;

    #@645
    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    #@648
    .line 2022
    .restart local v46    # "time":Landroid/text/format/Time;
    move-object/from16 v0, v26

    #@64a
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@64c
    move-wide/from16 v22, v0

    #@64e
    .line 2023
    .restart local v22    # "eventTime":J
    move-object/from16 v0, v46

    #@650
    move-wide/from16 v1, v22

    #@652
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    #@655
    .line 2025
    const-string/jumbo v54, "  #%-3d: %s %8s "

    #@658
    const/16 v55, 0x3

    #@65a
    move/from16 v0, v55

    #@65c
    new-array v0, v0, [Ljava/lang/Object;

    #@65e
    move-object/from16 v55, v0

    #@660
    .line 2026
    add-int/lit8 v56, v25, 0x1

    #@662
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@665
    move-result-object v56

    #@666
    const/16 v57, 0x0

    #@668
    aput-object v56, v55, v57

    #@66a
    .line 2027
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@66d
    move-result-object v56

    #@66e
    const/16 v57, 0x1

    #@670
    aput-object v56, v55, v57

    #@672
    .line 2028
    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@674
    move-object/from16 v0, v26

    #@676
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@678
    move/from16 v57, v0

    #@67a
    aget-object v56, v56, v57

    #@67c
    const/16 v57, 0x2

    #@67e
    aput-object v56, v55, v57

    #@680
    .line 2025
    move-object/from16 v0, p1

    #@682
    move-object/from16 v1, v54

    #@684
    move-object/from16 v2, v55

    #@686
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@689
    .line 2030
    const/16 v54, 0x3

    #@68b
    move/from16 v0, v54

    #@68d
    new-array v0, v0, [Ljava/lang/Object;

    #@68f
    move-object/from16 v54, v0

    #@691
    const/16 v55, 0x0

    #@693
    aput-object v6, v54, v55

    #@695
    const/16 v55, 0x1

    #@697
    aput-object v12, v54, v55

    #@699
    const/16 v55, 0x2

    #@69b
    aput-object v19, v54, v55

    #@69d
    move-object/from16 v0, p1

    #@69f
    move-object/from16 v1, v24

    #@6a1
    move-object/from16 v2, v54

    #@6a3
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@6a6
    goto/16 :goto_a

    #@6a8
    .line 2018
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v22    # "eventTime":J
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_14
    const-string/jumbo v12, "Unknown"

    #@6ab
    .line 2019
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@6ae
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto :goto_b

    #@6af
    .line 1800
    .end local v4    # "N":I
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v24    # "format":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v27    # "item$iterator":Ljava/util/Iterator;
    .end local v31    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v33    # "maxAccount":I
    .end local v34    # "maxAuthority":I
    .end local v38    # "pm":Landroid/content/pm/PackageManager;
    .end local v50    # "totalElapsedTime":J
    .end local v52    # "totalTimes":J
    :cond_15
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 2088
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3
    .line 2089
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    #@6
    move-result-object v4

    #@7
    .line 2090
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_1

    #@9
    .line 2091
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/content/pm/UserInfo;

    #@19
    .line 2092
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v6, "Sync adapters for "

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    const-string/jumbo v6, ":"

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 2093
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3a
    .line 2095
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@3c
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@3e
    invoke-virtual {v5, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@41
    move-result-object v5

    #@42
    .line 2094
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v1

    #@46
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_0

    #@4c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@52
    .line 2096
    .local v0, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@55
    goto :goto_1

    #@56
    .line 2098
    .end local v0    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@59
    .line 2099
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@5c
    goto :goto_0

    #@5d
    .line 2087
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # J

    #@0
    .prologue
    .line 1777
    const-wide/16 v0, 0x3e8

    #@2
    div-long v0, p2, v0

    #@4
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@7
    const/16 v0, 0x2e

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@c
    const-wide/16 v0, 0x64

    #@e
    div-long v0, p2, v0

    #@10
    const-wide/16 v2, 0xa

    #@12
    rem-long/2addr v0, v2

    #@13
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@16
    .line 1778
    const/16 v0, 0x73

    #@18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@1b
    .line 1776
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 1607
    new-instance v0, Landroid/text/format/Time;

    #@2
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@5
    .line 1608
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    #@8
    .line 1609
    const-string/jumbo v1, "%Y-%m-%d %H:%M:%S"

    #@b
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private getAllPendingSyncs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    #@3
    .line 257
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    #@5
    invoke-interface {v5}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    .line 258
    .local v3, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@b
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@e
    move-result v5

    #@f
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    .line 259
    .local v4, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "job$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/app/job/JobInfo;

    #@22
    .line 260
    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    #@25
    move-result-object v5

    #@26
    invoke-static {v5}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    #@29
    move-result-object v2

    #@2a
    .line 261
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_0

    #@2c
    .line 262
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 265
    .end local v0    # "job":Landroid/app/job/JobInfo;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-object v4
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    #@0
    .prologue
    .line 411
    monitor-enter p0

    #@1
    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 413
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@7
    .line 414
    const-string/jumbo v1, "connectivity"

    #@a
    .line 413
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/net/ConnectivityManager;

    #@10
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    #@12
    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v0

    #@16
    .line 411
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3257
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@2
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 3258
    :catch_0
    move-exception v0

    #@f
    .line 3260
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@11
    return-object v1
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 1

    #@0
    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    #@3
    .line 475
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    #@5
    return-object v0
.end method

.method private getTotalBytesTransferredByUid(I)J
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1031
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    #@7
    move-result-wide v2

    #@8
    add-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method private getUnusedJobIdH()I
    .locals 3

    #@0
    .prologue
    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    #@2
    const/16 v2, 0x2710

    #@4
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    #@7
    move-result v1

    #@8
    const v2, 0x186a0

    #@b
    add-int v0, v2, v1

    #@d
    .line 251
    .local v0, "newJobId":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    #@f
    invoke-interface {v1}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    .line 250
    invoke-direct {p0, v0, v1}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 252
    return v0
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 18
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v10

    #@4
    .line 1084
    .local v10, "now":J
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@d
    move-result-object v12

    #@e
    .line 1085
    .local v12, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    #@10
    .line 1086
    .local v6, "newDelayInMs":J
    if-eqz v12, :cond_2

    #@12
    .line 1089
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14
    check-cast v2, Ljava/lang/Long;

    #@16
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide v2

    #@1a
    cmp-long v2, v10, v2

    #@1c
    if-gez v2, :cond_1

    #@1e
    .line 1090
    const-string/jumbo v2, "SyncManager"

    #@21
    const/4 v3, 0x2

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 1091
    const-string/jumbo v3, "SyncManager"

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v13, "Still in backoff, do not increase it. Remaining: "

    #@33
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v13

    #@37
    .line 1092
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@39
    check-cast v2, Ljava/lang/Long;

    #@3b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@3e
    move-result-wide v14

    #@3f
    sub-long/2addr v14, v10

    #@40
    const-wide/16 v16, 0x3e8

    #@42
    div-long v14, v14, v16

    #@44
    .line 1091
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 1092
    const-string/jumbo v13, " seconds."

    #@4b
    .line 1091
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 1094
    :cond_0
    return-void

    #@57
    .line 1097
    :cond_1
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@59
    check-cast v2, Ljava/lang/Long;

    #@5b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@5e
    move-result-wide v2

    #@5f
    const-wide/16 v14, 0x2

    #@61
    mul-long v6, v2, v14

    #@63
    .line 1099
    :cond_2
    const-wide/16 v2, 0x0

    #@65
    cmp-long v2, v6, v2

    #@67
    if-gtz v2, :cond_3

    #@69
    .line 1101
    const-wide/16 v2, 0x7530

    #@6b
    .line 1102
    const-wide/32 v14, 0x80e8

    #@6e
    .line 1101
    move-object/from16 v0, p0

    #@70
    invoke-direct {v0, v2, v3, v14, v15}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    #@73
    move-result-wide v6

    #@74
    .line 1106
    :cond_3
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@78
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7b
    move-result-object v2

    #@7c
    .line 1107
    const-string/jumbo v3, "sync_max_retry_delay_in_seconds"

    #@7f
    .line 1108
    const-wide/16 v14, 0xe10

    #@81
    .line 1106
    invoke-static {v2, v3, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@84
    move-result-wide v8

    #@85
    .line 1109
    .local v8, "maxSyncRetryTimeInSeconds":J
    const-wide/16 v2, 0x3e8

    #@87
    mul-long/2addr v2, v8

    #@88
    cmp-long v2, v6, v2

    #@8a
    if-lez v2, :cond_4

    #@8c
    .line 1110
    const-wide/16 v2, 0x3e8

    #@8e
    mul-long v6, v8, v2

    #@90
    .line 1113
    :cond_4
    add-long v4, v10, v6

    #@92
    .line 1114
    .local v4, "backoff":J
    const-string/jumbo v2, "SyncManager"

    #@95
    const/4 v3, 0x2

    #@96
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_5

    #@9c
    .line 1115
    const-string/jumbo v2, "SyncManager"

    #@9f
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v13, "Backoff until: "

    #@a7
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    const-string/jumbo v13, ", delayTime: "

    #@b2
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v3

    #@be
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 1117
    :cond_5
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@c5
    move-object/from16 v3, p1

    #@c7
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@ca
    .line 1118
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@cd
    .line 1080
    return-void
.end method

.method private isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4
    move-result-wide v2

    #@5
    .line 1158
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@7
    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@a
    move-result-object v0

    #@b
    .line 1159
    .local v0, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    #@d
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@f
    check-cast v1, Ljava/lang/Long;

    #@11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@14
    move-result-wide v4

    #@15
    const-wide/16 v6, -0x1

    #@17
    cmp-long v1, v4, v6

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 1160
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1d
    check-cast v1, Ljava/lang/Long;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@22
    move-result-wide v4

    #@23
    cmp-long v1, v4, v2

    #@25
    if-lez v1, :cond_0

    #@27
    .line 1161
    return v8

    #@28
    .line 1163
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2a
    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@2d
    move-result-wide v4

    #@2e
    cmp-long v1, v4, v2

    #@30
    if-lez v1, :cond_1

    #@32
    .line 1164
    return v8

    #@33
    .line 1166
    :cond_1
    const/4 v1, 0x0

    #@34
    return v1
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 637
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 638
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    #@a
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :cond_0
    return v1
.end method

.method private isJobIdInUseLockedH(ILjava/util/List;)Z
    .locals 6
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v5, 0x1

    #@1
    .line 233
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v3

    #@5
    .local v3, "job$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/app/job/JobInfo;

    #@11
    .line 234
    .local v2, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    #@14
    move-result v4

    #@15
    if-ne v4, p1, :cond_0

    #@17
    .line 235
    return v5

    #@18
    .line 238
    .end local v2    # "job":Landroid/app/job/JobInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@1a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "asc$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_3

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@2a
    .line 239
    .local v0, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2c
    iget v4, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    #@2e
    if-ne v4, p1, :cond_2

    #@30
    .line 240
    return v5

    #@31
    .line 243
    .end local v0    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_3
    const/4 v4, 0x0

    #@32
    return v4
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3150
    const-string/jumbo v0, "expedited"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3151
    return v1

    #@b
    .line 3153
    :cond_0
    const-string/jumbo v0, "ignore_settings"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 3154
    return v1

    #@15
    .line 3156
    :cond_1
    const-string/jumbo v0, "ignore_backoff"

    #@18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 3157
    return v1

    #@1f
    .line 3159
    :cond_2
    const-string/jumbo v0, "do_not_retry"

    #@22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 3160
    return v1

    #@29
    .line 3162
    :cond_3
    const-string/jumbo v0, "force"

    #@2c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_4

    #@32
    .line 3163
    return v1

    #@33
    .line 3165
    :cond_4
    const-string/jumbo v0, "upload"

    #@36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_5

    #@3c
    .line 3166
    return v1

    #@3d
    .line 3168
    :cond_5
    const-string/jumbo v0, "deletions_override"

    #@40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_6

    #@46
    .line 3169
    return v1

    #@47
    .line 3171
    :cond_6
    const-string/jumbo v0, "discard_deletions"

    #@4a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_7

    #@50
    .line 3172
    return v1

    #@51
    .line 3174
    :cond_7
    const-string/jumbo v0, "expected_upload"

    #@54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_8

    #@5a
    .line 3175
    return v1

    #@5b
    .line 3177
    :cond_8
    const-string/jumbo v0, "expected_download"

    #@5e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_9

    #@64
    .line 3178
    return v1

    #@65
    .line 3180
    :cond_9
    const-string/jumbo v0, "sync_priority"

    #@68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_a

    #@6e
    .line 3181
    return v1

    #@6f
    .line 3183
    :cond_a
    const-string/jumbo v0, "allow_metered"

    #@72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_b

    #@78
    .line 3184
    return v1

    #@79
    .line 3186
    :cond_b
    const-string/jumbo v0, "initialize"

    #@7c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_c

    #@82
    .line 3187
    return v1

    #@83
    .line 3189
    :cond_c
    const/4 v0, 0x0

    #@84
    return v0
.end method

.method private isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 3108
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "sync$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@12
    .line 3109
    .local v0, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v0, p1, :cond_0

    #@14
    .line 3110
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 3113
    .end local v0    # "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1
    const/4 v2, 0x0

    #@17
    return v2
.end method

.method private jitterize(JJ)J
    .locals 7
    .param p1, "minValue"    # J
    .param p3, "maxValue"    # J

    #@0
    .prologue
    .line 645
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v4

    #@6
    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    #@9
    .line 646
    .local v0, "random":Ljava/util/Random;
    sub-long v2, p3, p1

    #@b
    .line 647
    .local v2, "spread":J
    const-wide/32 v4, 0x7fffffff

    #@e
    cmp-long v1, v2, v4

    #@10
    if-lez v1, :cond_0

    #@12
    .line 648
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 651
    :cond_0
    long-to-int v1, v2

    #@1c
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    #@1f
    move-result v1

    #@20
    int-to-long v4, v1

    #@21
    add-long/2addr v4, p1

    #@22
    return-wide v4
.end method

.method private maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 5
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1346
    const-string/jumbo v1, "SyncManager"

    #@4
    const/4 v2, 0x3

    #@5
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    .line 1347
    .local v0, "isLoggable":Z
    if-eqz v0, :cond_0

    #@b
    .line 1348
    const-string/jumbo v1, "SyncManager"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "encountered error(s) during the sync: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, ", "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1354
    :cond_0
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@32
    const-string/jumbo v2, "ignore_backoff"

    #@35
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 1355
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@3d
    const-string/jumbo v2, "ignore_backoff"

    #@40
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@43
    .line 1358
    :cond_1
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@45
    const-string/jumbo v2, "do_not_retry"

    #@48
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 1359
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@50
    if-eqz v1, :cond_5

    #@52
    .line 1367
    :cond_2
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@54
    const-string/jumbo v2, "upload"

    #@57
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_3

    #@5d
    .line 1368
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@5f
    if-eqz v1, :cond_6

    #@61
    .line 1376
    :cond_3
    iget-boolean v1, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    #@63
    if-eqz v1, :cond_8

    #@65
    .line 1379
    if-eqz v0, :cond_4

    #@67
    .line 1380
    const-string/jumbo v1, "SyncManager"

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 1345
    :cond_4
    :goto_0
    return-void

    #@82
    .line 1363
    :cond_5
    if-eqz v0, :cond_4

    #@84
    .line 1364
    const-string/jumbo v1, "SyncManager"

    #@87
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    goto :goto_0

    #@9f
    .line 1370
    :cond_6
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@a1
    const-string/jumbo v2, "upload"

    #@a4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a7
    .line 1371
    if-eqz v0, :cond_7

    #@a9
    .line 1372
    const-string/jumbo v1, "SyncManager"

    #@ac
    new-instance v2, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    #@b4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v2

    #@c0
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 1375
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    #@c6
    goto :goto_0

    #@c7
    .line 1383
    :cond_8
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    #@ca
    move-result v1

    #@cb
    if-eqz v1, :cond_a

    #@cd
    .line 1385
    if-eqz v0, :cond_9

    #@cf
    .line 1386
    const-string/jumbo v1, "SyncManager"

    #@d2
    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    #@d5
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    .line 1389
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    #@db
    goto :goto_0

    #@dc
    .line 1390
    :cond_a
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@de
    if-eqz v1, :cond_c

    #@e0
    .line 1391
    if-eqz v0, :cond_b

    #@e2
    .line 1392
    const-string/jumbo v1, "SyncManager"

    #@e5
    new-instance v2, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    #@ed
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v2

    #@f1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v2

    #@f9
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 1395
    :cond_b
    const-wide/16 v2, 0x2710

    #@fe
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    #@101
    goto :goto_0

    #@102
    .line 1396
    :cond_c
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    #@105
    move-result v1

    #@106
    if-eqz v1, :cond_e

    #@108
    .line 1398
    if-eqz v0, :cond_d

    #@10a
    .line 1399
    const-string/jumbo v1, "SyncManager"

    #@10d
    new-instance v2, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    #@115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v2

    #@119
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v2

    #@11d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v2

    #@121
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@124
    .line 1402
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    #@127
    goto/16 :goto_0

    #@129
    .line 1405
    :cond_e
    const-string/jumbo v1, "SyncManager"

    #@12c
    new-instance v2, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    #@134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v2

    #@138
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v2

    #@140
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@143
    goto/16 :goto_0
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1442
    const/4 v3, 0x0

    #@1
    invoke-direct {p0, v3}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@4
    .line 1445
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@6
    const/4 v4, 0x0

    #@7
    new-array v4, v4, [Landroid/accounts/Account;

    #@9
    invoke-virtual {v3, v4, p1}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    #@c
    .line 1446
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@f
    move-result-object v2

    #@10
    .line 1447
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@20
    .line 1448
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@22
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@24
    if-ne v3, p1, :cond_0

    #@26
    .line 1449
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@29
    move-result-object v3

    #@2a
    iget v4, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@2c
    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@2f
    goto :goto_0

    #@30
    .line 1441
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method private onUserStopped(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1430
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@4
    .line 1433
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6
    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@9
    .line 1432
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@c
    .line 1429
    return-void
.end method

.method private onUserUnlocked(I)V
    .locals 17
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1412
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@3
    move-result-object v2

    #@4
    move/from16 v0, p1

    #@6
    invoke-virtual {v2, v0}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    #@9
    .line 1414
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@d
    move/from16 v0, p1

    #@f
    invoke-virtual {v2, v0}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    #@12
    .line 1416
    new-instance v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@14
    const/4 v2, 0x0

    #@15
    const/4 v4, 0x0

    #@16
    move/from16 v0, p1

    #@18
    invoke-direct {v14, v2, v4, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@1b
    .line 1417
    .local v14, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v0, v14}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@20
    .line 1420
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@23
    move-result-object v2

    #@24
    .line 1421
    move-object/from16 v0, p0

    #@26
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 1420
    move/from16 v0, p1

    #@2e
    invoke-virtual {v2, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    #@31
    move-result-object v13

    #@32
    .line 1422
    .local v13, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    #@33
    array-length v0, v13

    #@34
    move/from16 v16, v0

    #@36
    move v15, v2

    #@37
    :goto_0
    move/from16 v0, v16

    #@39
    if-ge v15, v0, :cond_0

    #@3b
    aget-object v3, v13, v15

    #@3d
    .line 1424
    .local v3, "account":Landroid/accounts/Account;
    const-wide/16 v8, 0x0

    #@3f
    const-wide/16 v10, 0x0

    #@41
    .line 1423
    const/4 v5, -0x8

    #@42
    const/4 v6, 0x0

    #@43
    const/4 v7, 0x0

    #@44
    .line 1425
    const/4 v12, 0x1

    #@45
    move-object/from16 v2, p0

    #@47
    move/from16 v4, p1

    #@49
    .line 1423
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@4c
    .line 1422
    add-int/lit8 v2, v15, 0x1

    #@4e
    move v15, v2

    #@4f
    goto :goto_0

    #@50
    .line 1410
    .end local v3    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 1007
    const-string/jumbo v1, "SyncManager"

    #@3
    const/4 v2, 0x2

    #@4
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1008
    const-string/jumbo v1, "SyncManager"

    #@d
    const-string/jumbo v2, "posting MESSAGE_SYNC_MONITOR in 60s"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1013
    :cond_0
    iget v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    #@15
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    #@18
    move-result-wide v2

    #@19
    .line 1012
    iput-wide v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    #@1b
    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e
    move-result-wide v2

    #@1f
    iput-wide v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    #@21
    .line 1016
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@23
    .line 1017
    const/16 v2, 0x8

    #@25
    .line 1016
    invoke-virtual {v1, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v0

    #@29
    .line 1019
    .local v0, "monitorMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2b
    const-wide/32 v2, 0xea60

    #@2e
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@31
    .line 1006
    return-void
.end method

.method private postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2
    const/16 v1, 0xc

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 1022
    return-void
.end method

.method private readDataConnectionState()Z
    .locals 2

    #@0
    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@7
    move-result-object v0

    #@8
    .line 376
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method private removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 908
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    #@3
    .line 909
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 910
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@17
    .line 911
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@19
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 912
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@22
    move-result-object v3

    #@23
    iget v4, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@25
    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@28
    goto :goto_0

    #@29
    .line 907
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method private rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 1127
    .local v3, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v0, 0x0

    #@5
    .line 1128
    .local v0, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/content/SyncOperation;

    #@15
    .line 1129
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@17
    if-nez v4, :cond_0

    #@19
    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1b
    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 1130
    add-int/lit8 v0, v0, 0x1

    #@23
    .line 1131
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@26
    move-result-object v4

    #@27
    iget v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@29
    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@2c
    .line 1132
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;)V

    #@2f
    goto :goto_0

    #@30
    .line 1135
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    const-string/jumbo v4, "SyncManager"

    #@33
    const/4 v5, 0x2

    #@34
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_2

    #@3a
    .line 1136
    const-string/jumbo v4, "SyncManager"

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "Rescheduled "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    const-string/jumbo v6, " syncs for "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 1125
    :cond_2
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 1183
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    #@5
    .line 1182
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .locals 30
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    #@0
    .prologue
    .line 1187
    const-string/jumbo v24, "SyncManager"

    #@3
    const/16 v25, 0x2

    #@5
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v15

    #@9
    .line 1188
    .local v15, "isLoggable":Z
    if-nez p1, :cond_0

    #@b
    .line 1189
    const-string/jumbo v24, "SyncManager"

    #@e
    const-string/jumbo v25, "Can\'t schedule null sync operation."

    #@11
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1190
    return-void

    #@15
    .line 1192
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    #@18
    move-result v24

    #@19
    if-nez v24, :cond_3

    #@1b
    .line 1193
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1f
    move-object/from16 v24, v0

    #@21
    move-object/from16 v0, p1

    #@23
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@25
    move-object/from16 v25, v0

    #@27
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@2a
    move-result-object v7

    #@2b
    .line 1194
    .local v7, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez v7, :cond_1

    #@2d
    .line 1195
    const-string/jumbo v24, "SyncManager"

    #@30
    new-instance v25, Ljava/lang/StringBuilder;

    #@32
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v26, "Couldn\'t find backoff values for "

    #@38
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v25

    #@3c
    move-object/from16 v0, p1

    #@3e
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@40
    move-object/from16 v26, v0

    #@42
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v25

    #@46
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v25

    #@4a
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1196
    new-instance v7, Landroid/util/Pair;

    #@4f
    .end local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v24, -0x1

    #@51
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@54
    move-result-object v24

    #@55
    .line 1197
    const-wide/16 v26, -0x1

    #@57
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5a
    move-result-object v25

    #@5b
    .line 1196
    move-object/from16 v0, v24

    #@5d
    move-object/from16 v1, v25

    #@5f
    invoke-direct {v7, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@62
    .line 1199
    .restart local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@65
    move-result-wide v18

    #@66
    .line 1200
    .local v18, "now":J
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@68
    move-object/from16 v24, v0

    #@6a
    check-cast v24, Ljava/lang/Long;

    #@6c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    #@6f
    move-result-wide v24

    #@70
    const-wide/16 v26, -0x1

    #@72
    cmp-long v24, v24, v26

    #@74
    if-nez v24, :cond_7

    #@76
    const-wide/16 v8, 0x0

    #@78
    .line 1202
    .local v8, "backoffDelay":J
    :goto_0
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@7c
    move-object/from16 v24, v0

    #@7e
    move-object/from16 v0, p1

    #@80
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@82
    move-object/from16 v25, v0

    #@84
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@87
    move-result-wide v10

    #@88
    .line 1203
    .local v10, "delayUntil":J
    cmp-long v24, v10, v18

    #@8a
    if-lez v24, :cond_8

    #@8c
    sub-long v12, v10, v18

    #@8e
    .line 1204
    .local v12, "delayUntilDelay":J
    :goto_1
    if-eqz v15, :cond_2

    #@90
    .line 1205
    const-string/jumbo v24, "SyncManager"

    #@93
    new-instance v25, Ljava/lang/StringBuilder;

    #@95
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v26, "backoff delay:"

    #@9b
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v25

    #@9f
    move-object/from16 v0, v25

    #@a1
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v25

    #@a5
    .line 1206
    const-string/jumbo v26, " delayUntil delay:"

    #@a8
    .line 1205
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v25

    #@ac
    move-object/from16 v0, v25

    #@ae
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v25

    #@b2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v25

    #@b6
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    .line 1208
    :cond_2
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    #@bc
    move-result-wide v24

    #@bd
    move-wide/from16 v0, p2

    #@bf
    move-wide/from16 v2, v24

    #@c1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@c4
    move-result-wide p2

    #@c5
    .line 1211
    .end local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v8    # "backoffDelay":J
    .end local v10    # "delayUntil":J
    .end local v12    # "delayUntilDelay":J
    .end local v18    # "now":J
    :cond_3
    const-wide/16 v24, 0x0

    #@c7
    cmp-long v24, p2, v24

    #@c9
    if-gez v24, :cond_4

    #@cb
    .line 1212
    const-wide/16 p2, 0x0

    #@cd
    .line 1216
    :cond_4
    move-object/from16 v0, p1

    #@cf
    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@d1
    move/from16 v24, v0

    #@d3
    if-nez v24, :cond_12

    #@d5
    .line 1218
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@d9
    move-object/from16 v24, v0

    #@db
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@de
    move-result-object v5

    #@df
    .local v5, "asc$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@e2
    move-result v24

    #@e3
    if-eqz v24, :cond_9

    #@e5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e8
    move-result-object v4

    #@e9
    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@eb
    .line 1219
    .local v4, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v0, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@ed
    move-object/from16 v24, v0

    #@ef
    move-object/from16 v0, v24

    #@f1
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@f3
    move-object/from16 v24, v0

    #@f5
    move-object/from16 v0, p1

    #@f7
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@f9
    move-object/from16 v25, v0

    #@fb
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fe
    move-result v24

    #@ff
    if-eqz v24, :cond_5

    #@101
    .line 1220
    if-eqz v15, :cond_6

    #@103
    .line 1221
    const-string/jumbo v24, "SyncManager"

    #@106
    new-instance v25, Ljava/lang/StringBuilder;

    #@108
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v26, "Duplicate sync is already running. Not scheduling "

    #@10e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v25

    #@112
    move-object/from16 v0, v25

    #@114
    move-object/from16 v1, p1

    #@116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v25

    #@11a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v25

    #@11e
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    .line 1224
    :cond_6
    return-void

    #@122
    .line 1201
    .end local v4    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v5    # "asc$iterator":Ljava/util/Iterator;
    .restart local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v18    # "now":J
    :cond_7
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@124
    move-object/from16 v24, v0

    #@126
    check-cast v24, Ljava/lang/Long;

    #@128
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    #@12b
    move-result-wide v24

    #@12c
    sub-long v8, v24, v18

    #@12e
    .restart local v8    # "backoffDelay":J
    goto/16 :goto_0

    #@130
    .line 1203
    .restart local v10    # "delayUntil":J
    :cond_8
    const-wide/16 v12, 0x0

    #@132
    .restart local v12    # "delayUntilDelay":J
    goto/16 :goto_1

    #@134
    .line 1228
    .end local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v8    # "backoffDelay":J
    .end local v10    # "delayUntil":J
    .end local v12    # "delayUntilDelay":J
    .end local v18    # "now":J
    .restart local v5    # "asc$iterator":Ljava/util/Iterator;
    :cond_9
    const/4 v14, 0x0

    #@135
    .line 1229
    .local v14, "duplicatesCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@138
    move-result-wide v18

    #@139
    .line 1230
    .restart local v18    # "now":J
    add-long v24, v18, p2

    #@13b
    move-wide/from16 v0, v24

    #@13d
    move-object/from16 v2, p1

    #@13f
    iput-wide v0, v2, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    #@141
    .line 1231
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@144
    move-result-object v22

    #@145
    .line 1232
    .local v22, "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v21, p1

    #@147
    .line 1233
    .local v21, "opWithLeastExpectedRuntime":Lcom/android/server/content/SyncOperation;
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14a
    move-result-object v20

    #@14b
    .local v20, "op$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@14e
    move-result v24

    #@14f
    if-eqz v24, :cond_c

    #@151
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@154
    move-result-object v17

    #@155
    check-cast v17, Lcom/android/server/content/SyncOperation;

    #@157
    .line 1234
    .local v17, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v17

    #@159
    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@15b
    move/from16 v24, v0

    #@15d
    if-nez v24, :cond_a

    #@15f
    .line 1237
    move-object/from16 v0, v17

    #@161
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@163
    move-object/from16 v24, v0

    #@165
    move-object/from16 v0, p1

    #@167
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@169
    move-object/from16 v25, v0

    #@16b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16e
    move-result v24

    #@16f
    if-eqz v24, :cond_a

    #@171
    .line 1238
    move-object/from16 v0, v21

    #@173
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    #@175
    move-wide/from16 v24, v0

    #@177
    move-object/from16 v0, v17

    #@179
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    #@17b
    move-wide/from16 v26, v0

    #@17d
    cmp-long v24, v24, v26

    #@17f
    if-lez v24, :cond_b

    #@181
    .line 1239
    move-object/from16 v21, v17

    #@183
    .line 1241
    :cond_b
    add-int/lit8 v14, v14, 0x1

    #@185
    goto :goto_2

    #@186
    .line 1244
    .end local v17    # "op":Lcom/android/server/content/SyncOperation;
    :cond_c
    const/16 v24, 0x1

    #@188
    move/from16 v0, v24

    #@18a
    if-le v14, v0, :cond_d

    #@18c
    .line 1245
    const-string/jumbo v24, "SyncManager"

    #@18f
    const-string/jumbo v25, "FATAL ERROR! File a bug if you see this."

    #@192
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@195
    .line 1247
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@198
    move-result-object v20

    #@199
    :cond_e
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@19c
    move-result v24

    #@19d
    if-eqz v24, :cond_10

    #@19f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a2
    move-result-object v17

    #@1a3
    check-cast v17, Lcom/android/server/content/SyncOperation;

    #@1a5
    .line 1248
    .restart local v17    # "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v17

    #@1a7
    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@1a9
    move/from16 v24, v0

    #@1ab
    if-nez v24, :cond_e

    #@1ad
    .line 1251
    move-object/from16 v0, v17

    #@1af
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@1b1
    move-object/from16 v24, v0

    #@1b3
    move-object/from16 v0, p1

    #@1b5
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@1b7
    move-object/from16 v25, v0

    #@1b9
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bc
    move-result v24

    #@1bd
    if-eqz v24, :cond_e

    #@1bf
    .line 1252
    move-object/from16 v0, v17

    #@1c1
    move-object/from16 v1, v21

    #@1c3
    if-eq v0, v1, :cond_e

    #@1c5
    .line 1253
    if-eqz v15, :cond_f

    #@1c7
    .line 1254
    const-string/jumbo v24, "SyncManager"

    #@1ca
    new-instance v25, Ljava/lang/StringBuilder;

    #@1cc
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1cf
    const-string/jumbo v26, "Cancelling duplicate sync "

    #@1d2
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v25

    #@1d6
    move-object/from16 v0, v25

    #@1d8
    move-object/from16 v1, v17

    #@1da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v25

    #@1de
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v25

    #@1e2
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e5
    .line 1256
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@1e8
    move-result-object v24

    #@1e9
    move-object/from16 v0, v17

    #@1eb
    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@1ed
    move/from16 v25, v0

    #@1ef
    invoke-virtual/range {v24 .. v25}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@1f2
    goto :goto_3

    #@1f3
    .line 1260
    .end local v17    # "op":Lcom/android/server/content/SyncOperation;
    :cond_10
    move-object/from16 v0, v21

    #@1f5
    move-object/from16 v1, p1

    #@1f7
    if-eq v0, v1, :cond_12

    #@1f9
    .line 1262
    if-eqz v15, :cond_11

    #@1fb
    .line 1263
    const-string/jumbo v24, "SyncManager"

    #@1fe
    const-string/jumbo v25, "Not scheduling because a duplicate exists."

    #@201
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@204
    .line 1265
    :cond_11
    return-void

    #@205
    .line 1270
    .end local v5    # "asc$iterator":Ljava/util/Iterator;
    .end local v14    # "duplicatesCount":I
    .end local v18    # "now":J
    .end local v20    # "op$iterator":Ljava/util/Iterator;
    .end local v21    # "opWithLeastExpectedRuntime":Lcom/android/server/content/SyncOperation;
    .end local v22    # "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    :cond_12
    move-object/from16 v0, p1

    #@207
    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@209
    move/from16 v24, v0

    #@20b
    const/16 v25, -0x1

    #@20d
    move/from16 v0, v24

    #@20f
    move/from16 v1, v25

    #@211
    if-ne v0, v1, :cond_13

    #@213
    .line 1271
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    #@216
    move-result v24

    #@217
    move/from16 v0, v24

    #@219
    move-object/from16 v1, p1

    #@21b
    iput v0, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@21d
    .line 1274
    :cond_13
    if-eqz v15, :cond_14

    #@21f
    .line 1275
    const-string/jumbo v24, "SyncManager"

    #@222
    new-instance v25, Ljava/lang/StringBuilder;

    #@224
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@227
    const-string/jumbo v26, "scheduling sync operation "

    #@22a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v25

    #@22e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    #@231
    move-result-object v26

    #@232
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v25

    #@236
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@239
    move-result-object v25

    #@23a
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23d
    .line 1278
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    #@240
    move-result v23

    #@241
    .line 1280
    .local v23, "priority":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    #@244
    move-result v24

    #@245
    if-eqz v24, :cond_16

    #@247
    .line 1281
    const/16 v16, 0x2

    #@249
    .line 1283
    .local v16, "networkType":I
    :goto_4
    new-instance v24, Landroid/app/job/JobInfo$Builder;

    #@24b
    move-object/from16 v0, p1

    #@24d
    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@24f
    move/from16 v25, v0

    #@251
    .line 1284
    new-instance v26, Landroid/content/ComponentName;

    #@253
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@257
    move-object/from16 v27, v0

    #@259
    const-class v28, Lcom/android/server/content/SyncJobService;

    #@25b
    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@25e
    .line 1283
    invoke-direct/range {v24 .. v26}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    #@261
    .line 1285
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    #@264
    move-result-object v25

    #@265
    .line 1283
    invoke-virtual/range {v24 .. v25}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    #@268
    move-result-object v24

    #@269
    move-object/from16 v0, v24

    #@26b
    move/from16 v1, v16

    #@26d
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    #@270
    move-result-object v24

    #@271
    .line 1287
    const/16 v25, 0x1

    #@273
    .line 1283
    invoke-virtual/range {v24 .. v25}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    #@276
    move-result-object v24

    #@277
    move-object/from16 v0, v24

    #@279
    move/from16 v1, v23

    #@27b
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    #@27e
    move-result-object v6

    #@27f
    .line 1290
    .local v6, "b":Landroid/app/job/JobInfo$Builder;
    move-object/from16 v0, p1

    #@281
    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@283
    move/from16 v24, v0

    #@285
    if-eqz v24, :cond_17

    #@287
    .line 1291
    move-object/from16 v0, p1

    #@289
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@28b
    move-wide/from16 v24, v0

    #@28d
    move-object/from16 v0, p1

    #@28f
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@291
    move-wide/from16 v26, v0

    #@293
    move-wide/from16 v0, v24

    #@295
    move-wide/from16 v2, v26

    #@297
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    #@29a
    .line 1299
    :goto_5
    move-object/from16 v0, p1

    #@29c
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@29e
    move-object/from16 v24, v0

    #@2a0
    const-string/jumbo v25, "require_charging"

    #@2a3
    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@2a6
    move-result v24

    #@2a7
    if-eqz v24, :cond_15

    #@2a9
    .line 1300
    const/16 v24, 0x1

    #@2ab
    move/from16 v0, v24

    #@2ad
    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    #@2b0
    .line 1303
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@2b3
    move-result-object v24

    #@2b4
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    #@2b7
    move-result-object v25

    #@2b8
    move-object/from16 v0, p1

    #@2ba
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@2bc
    move-object/from16 v26, v0

    #@2be
    .line 1304
    move-object/from16 v0, p1

    #@2c0
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2c2
    move-object/from16 v27, v0

    #@2c4
    move-object/from16 v0, v27

    #@2c6
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2c8
    move/from16 v27, v0

    #@2ca
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    #@2cd
    move-result-object v28

    #@2ce
    .line 1303
    invoke-virtual/range {v24 .. v28}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    #@2d1
    .line 1186
    return-void

    #@2d2
    .line 1281
    .end local v6    # "b":Landroid/app/job/JobInfo$Builder;
    .end local v16    # "networkType":I
    :cond_16
    const/16 v16, 0x1

    #@2d4
    .restart local v16    # "networkType":I
    goto/16 :goto_4

    #@2d6
    .line 1293
    .restart local v6    # "b":Landroid/app/job/JobInfo$Builder;
    :cond_17
    const-wide/16 v24, 0x0

    #@2d8
    cmp-long v24, p2, v24

    #@2da
    if-lez v24, :cond_18

    #@2dc
    .line 1294
    move-wide/from16 v0, p2

    #@2de
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    #@2e1
    .line 1296
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2e4
    move-result-object v24

    #@2e5
    move-object/from16 v0, p1

    #@2e7
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2e9
    move-object/from16 v25, v0

    #@2eb
    const/16 v26, 0x1

    #@2ed
    invoke-virtual/range {v24 .. v26}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    #@2f0
    goto :goto_5
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 994
    const-string/jumbo v1, "SyncManager"

    #@3
    const/4 v2, 0x2

    #@4
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const-string/jumbo v1, "SyncManager"

    #@d
    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 996
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    #@1a
    iput v1, v0, Landroid/os/Message;->what:I

    #@1c
    .line 997
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@1f
    .line 998
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    .line 999
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@23
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 993
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    #@0
    .prologue
    .line 986
    const-string/jumbo v1, "SyncManager"

    #@3
    const/4 v2, 0x2

    #@4
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const-string/jumbo v1, "SyncManager"

    #@d
    const-string/jumbo v2, "sending MESSAGE_SYNC_FINISHED"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 987
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 988
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@1a
    iput v1, v0, Landroid/os/Message;->what:I

    #@1c
    .line 989
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    #@1e
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@21
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    .line 990
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@25
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    #@28
    .line 985
    return-void
.end method

.method private setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 690
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@14
    .line 691
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@16
    if-nez v3, :cond_0

    #@18
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1a
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 692
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@23
    move-result-object v3

    #@24
    const/4 v4, 0x1

    #@25
    invoke-virtual {v3, p1, v4}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    #@28
    .line 693
    return-void

    #@29
    .line 696
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2c
    move-result-object v3

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {v3, p1, v4}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    #@31
    .line 688
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    #@0
    .prologue
    .line 1141
    const-wide/16 v6, 0x3e8

    #@2
    mul-long v2, p2, v6

    #@4
    .line 1142
    .local v2, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    .line 1144
    .local v0, "absoluteNow":J
    cmp-long v6, v2, v0

    #@a
    if-lez v6, :cond_1

    #@c
    .line 1145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v6

    #@10
    sub-long v8, v2, v0

    #@12
    add-long v4, v6, v8

    #@14
    .line 1149
    .local v4, "newDelayUntilTime":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@16
    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    #@19
    .line 1150
    const-string/jumbo v6, "SyncManager"

    #@1c
    const/4 v7, 0x2

    #@1d
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_0

    #@23
    .line 1151
    const-string/jumbo v6, "SyncManager"

    #@26
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v8, "Delay Until time set to "

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    const-string/jumbo v8, " for "

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 1153
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@4b
    .line 1140
    return-void

    #@4c
    .line 1147
    .end local v4    # "newDelayUntilTime":J
    :cond_1
    const-wide/16 v4, 0x0

    #@4e
    .restart local v4    # "newDelayUntilTime":J
    goto :goto_0
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 8
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 3123
    if-ne p0, p1, :cond_0

    #@4
    .line 3124
    return v7

    #@5
    .line 3127
    :cond_0
    if-eqz p2, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@a
    move-result v4

    #@b
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@e
    move-result v5

    #@f
    if-eq v4, v5, :cond_1

    #@11
    .line 3128
    return v6

    #@12
    .line 3130
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@15
    move-result v4

    #@16
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@19
    move-result v5

    #@1a
    if-le v4, v5, :cond_4

    #@1c
    move-object v0, p0

    #@1d
    .line 3131
    .local v0, "bigger":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@20
    move-result v4

    #@21
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@24
    move-result v5

    #@25
    if-le v4, v5, :cond_5

    #@27
    move-object v3, p1

    #@28
    .line 3132
    .local v3, "smaller":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@2b
    move-result-object v4

    #@2c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v2

    #@30
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_7

    #@36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Ljava/lang/String;

    #@3c
    .line 3133
    .local v1, "key":Ljava/lang/String;
    if-nez p2, :cond_3

    #@3e
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    #@41
    move-result v4

    #@42
    if-nez v4, :cond_2

    #@44
    .line 3136
    :cond_3
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@47
    move-result v4

    #@48
    if-nez v4, :cond_6

    #@4a
    .line 3137
    return v6

    #@4b
    .line 3130
    .end local v0    # "bigger":Landroid/os/Bundle;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "smaller":Landroid/os/Bundle;
    :cond_4
    move-object v0, p1

    #@4c
    .restart local v0    # "bigger":Landroid/os/Bundle;
    goto :goto_0

    #@4d
    .line 3131
    :cond_5
    move-object v3, p0

    #@4e
    .restart local v3    # "smaller":Landroid/os/Bundle;
    goto :goto_1

    #@4f
    .line 3139
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-nez v4, :cond_2

    #@5d
    .line 3140
    return v6

    #@5e
    .line 3143
    .end local v1    # "key":Ljava/lang/String;
    :cond_7
    return v7
.end method

.method private updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 331
    const-string/jumbo v1, "SyncManager"

    #@3
    const/4 v2, 0x2

    #@4
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const-string/jumbo v1, "SyncManager"

    #@d
    const-string/jumbo v2, "sending MESSAGE_ACCOUNTS_UPDATED"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15
    const/16 v2, 0x9

    #@17
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 334
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    .line 335
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 330
    return-void
.end method

.method private declared-synchronized verifyJobScheduler()V
    .locals 7

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 449
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v4, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 450
    return-void

    #@7
    .line 452
    :cond_0
    :try_start_1
    const-string/jumbo v4, "SyncManager"

    #@a
    const/4 v5, 0x2

    #@b
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 453
    const-string/jumbo v4, "SyncManager"

    #@14
    const-string/jumbo v5, "initializing JobScheduler object."

    #@17
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 455
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@1c
    .line 456
    const-string/jumbo v5, "jobscheduler"

    #@1f
    .line 455
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/app/job/JobScheduler;

    #@25
    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    #@27
    .line 457
    const-class v4, Lcom/android/server/job/JobSchedulerInternal;

    #@29
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Lcom/android/server/job/JobSchedulerInternal;

    #@2f
    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    #@31
    .line 459
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    #@33
    invoke-virtual {v4}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    #@36
    move-result-object v3

    #@37
    .line 460
    .local v3, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v1

    #@3b
    .local v1, "job$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_3

    #@41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/app/job/JobInfo;

    #@47
    .line 461
    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v4}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    #@4e
    move-result-object v2

    #@4f
    .line 462
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_2

    #@51
    .line 463
    iget-boolean v4, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@53
    if-nez v4, :cond_2

    #@55
    .line 466
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@57
    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@59
    const/4 v6, 0x1

    #@5a
    invoke-virtual {v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .end local v0    # "job":Landroid/app/job/JobInfo;
    .end local v1    # "job$iterator":Ljava/util/Iterator;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    .end local v3    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v4

    #@5f
    monitor-exit p0

    #@60
    throw v4

    #@61
    .line 470
    .restart local v1    # "job$iterator":Ljava/util/Iterator;
    .restart local v3    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    monitor-exit p0

    #@65
    .line 448
    return-void
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1176
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@3
    .line 1175
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 1330
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@5
    move-result-object v8

    #@6
    .line 1331
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v7

    #@a
    .local v7, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Lcom/android/server/content/SyncOperation;

    #@16
    .line 1332
    .local v6, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@18
    if-nez v0, :cond_0

    #@1a
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1c
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 1333
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@24
    const/4 v1, 0x0

    #@25
    invoke-static {p2, v0, v1}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@28
    move-result v0

    #@29
    .line 1332
    if-eqz v0, :cond_0

    #@2b
    .line 1334
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@2e
    move-result-object v0

    #@2f
    iget v1, v6, Lcom/android/server/content/SyncOperation;->jobId:I

    #@31
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@34
    goto :goto_0

    #@35
    .line 1337
    .end local v6    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@38
    .line 1339
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@3a
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_2

    #@40
    .line 1340
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@42
    move-object v1, p1

    #@43
    move-wide v4, v2

    #@44
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@47
    .line 1329
    :cond_2
    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 1313
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@5
    move-result-object v8

    #@6
    .line 1314
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v7

    #@a
    .local v7, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Lcom/android/server/content/SyncOperation;

    #@16
    .line 1315
    .local v6, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@18
    if-nez v0, :cond_0

    #@1a
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1c
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 1316
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    #@25
    move-result-object v0

    #@26
    iget v1, v6, Lcom/android/server/content/SyncOperation;->jobId:I

    #@28
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@2b
    .line 1317
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@31
    const/4 v4, 0x0

    #@32
    invoke-virtual {v0, v1, v4}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    #@35
    goto :goto_0

    #@36
    .line 1320
    .end local v6    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@38
    move-object v1, p1

    #@39
    move-wide v4, v2

    #@3a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@3d
    .line 1312
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1598
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v1, "  "

    #@5
    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 1599
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;)V

    #@b
    .line 1600
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;)V

    #@e
    .line 1601
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    #@11
    .line 1602
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    #@14
    .line 1603
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@17
    .line 1597
    return-void
.end method

.method protected dumpPendingSyncs(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1613
    const-string/jumbo v4, "Pending Syncs:"

    #@3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1614
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@9
    move-result-object v3

    #@a
    .line 1615
    .local v3, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v0, 0x0

    #@b
    .line 1616
    .local v0, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/content/SyncOperation;

    #@1b
    .line 1617
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 1618
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    invoke-virtual {v1, v4, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 1619
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1622
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Total: "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 1623
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@45
    .line 1612
    return-void
.end method

.method protected dumpPeriodicSyncs(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1627
    const-string/jumbo v4, "Periodic Syncs:"

    #@3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1628
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@9
    move-result-object v3

    #@a
    .line 1629
    .local v3, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v0, 0x0

    #@b
    .line 1630
    .local v0, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/content/SyncOperation;

    #@1b
    .line 1631
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 1632
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    invoke-virtual {v1, v4, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 1633
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1636
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Total: "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 1637
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@45
    .line 1626
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1796
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    #@3
    .line 1797
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    #@6
    .line 1795
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .locals 36
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1641
    const-string/jumbo v27, "data connected: "

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v27

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    move-object/from16 v0, p0

    #@c
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    #@e
    move/from16 v27, v0

    #@10
    move-object/from16 v0, p1

    #@12
    move/from16 v1, v27

    #@14
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@17
    .line 1642
    const-string/jumbo v27, "auto sync: "

    #@1a
    move-object/from16 v0, p1

    #@1c
    move-object/from16 v1, v27

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 1643
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    #@24
    move-result-object v26

    #@25
    .line 1644
    .local v26, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v26, :cond_1

    #@27
    .line 1645
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v25

    #@2b
    .local v25, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v27

    #@2f
    if-eqz v27, :cond_0

    #@31
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v24

    #@35
    check-cast v24, Landroid/content/pm/UserInfo;

    #@37
    .line 1646
    .local v24, "user":Landroid/content/pm/UserInfo;
    new-instance v27, Ljava/lang/StringBuilder;

    #@39
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v28, "u"

    #@3f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v27

    #@43
    move-object/from16 v0, v24

    #@45
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@47
    move/from16 v28, v0

    #@49
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v27

    #@4d
    const-string/jumbo v28, "="

    #@50
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v27

    #@54
    .line 1647
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@58
    move-object/from16 v28, v0

    #@5a
    move-object/from16 v0, v24

    #@5c
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@5e
    move/from16 v29, v0

    #@60
    invoke-virtual/range {v28 .. v29}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@63
    move-result v28

    #@64
    .line 1646
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v27

    #@68
    .line 1647
    const-string/jumbo v28, " "

    #@6b
    .line 1646
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v27

    #@6f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v27

    #@73
    move-object/from16 v0, p1

    #@75
    move-object/from16 v1, v27

    #@77
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    goto :goto_0

    #@7b
    .line 1649
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@7e
    .line 1651
    .end local v25    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v27, "memory low: "

    #@81
    move-object/from16 v0, p1

    #@83
    move-object/from16 v1, v27

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@8c
    move/from16 v27, v0

    #@8e
    move-object/from16 v0, p1

    #@90
    move/from16 v1, v27

    #@92
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@95
    .line 1652
    const-string/jumbo v27, "device idle: "

    #@98
    move-object/from16 v0, p1

    #@9a
    move-object/from16 v1, v27

    #@9c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    #@a3
    move/from16 v27, v0

    #@a5
    move-object/from16 v0, p1

    #@a7
    move/from16 v1, v27

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@ac
    .line 1653
    const-string/jumbo v27, "reported active: "

    #@af
    move-object/from16 v0, p1

    #@b1
    move-object/from16 v1, v27

    #@b3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    #@ba
    move/from16 v27, v0

    #@bc
    move-object/from16 v0, p1

    #@be
    move/from16 v1, v27

    #@c0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@c3
    .line 1655
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@c6
    move-result-object v27

    #@c7
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    #@ca
    move-result-object v5

    #@cb
    .line 1657
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    const-string/jumbo v27, "accounts: "

    #@ce
    move-object/from16 v0, p1

    #@d0
    move-object/from16 v1, v27

    #@d2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d5
    .line 1658
    sget-object v27, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    #@d7
    move-object/from16 v0, v27

    #@d9
    if-eq v5, v0, :cond_2

    #@db
    .line 1659
    array-length v0, v5

    #@dc
    move/from16 v27, v0

    #@de
    move-object/from16 v0, p1

    #@e0
    move/from16 v1, v27

    #@e2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@e5
    .line 1663
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e8
    move-result-wide v12

    #@e9
    .line 1664
    .local v12, "now":J
    const-string/jumbo v27, "now: "

    #@ec
    move-object/from16 v0, p1

    #@ee
    move-object/from16 v1, v27

    #@f0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3
    move-object/from16 v0, p1

    #@f5
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@f8
    .line 1665
    new-instance v27, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v28, " ("

    #@100
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v27

    #@104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@107
    move-result-wide v28

    #@108
    invoke-static/range {v28 .. v29}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@10b
    move-result-object v28

    #@10c
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v27

    #@110
    const-string/jumbo v28, ")"

    #@113
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v27

    #@117
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v27

    #@11b
    move-object/from16 v0, p1

    #@11d
    move-object/from16 v1, v27

    #@11f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@122
    .line 1666
    const-string/jumbo v27, " (HH:MM:SS)"

    #@125
    move-object/from16 v0, p1

    #@127
    move-object/from16 v1, v27

    #@129
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12c
    .line 1667
    const-string/jumbo v27, "uptime: "

    #@12f
    move-object/from16 v0, p1

    #@131
    move-object/from16 v1, v27

    #@133
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    const-wide/16 v28, 0x3e8

    #@138
    div-long v28, v12, v28

    #@13a
    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@13d
    move-result-object v27

    #@13e
    move-object/from16 v0, p1

    #@140
    move-object/from16 v1, v27

    #@142
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@145
    .line 1668
    const-string/jumbo v27, " (HH:MM:SS)"

    #@148
    move-object/from16 v0, p1

    #@14a
    move-object/from16 v1, v27

    #@14c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14f
    .line 1669
    const-string/jumbo v27, "time spent syncing: "

    #@152
    move-object/from16 v0, p1

    #@154
    move-object/from16 v1, v27

    #@156
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    .line 1671
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15d
    move-object/from16 v27, v0

    #@15f
    move-object/from16 v0, v27

    #@161
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@163
    move-object/from16 v27, v0

    #@165
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    #@168
    move-result-wide v28

    #@169
    const-wide/16 v30, 0x3e8

    #@16b
    div-long v28, v28, v30

    #@16d
    .line 1670
    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@170
    move-result-object v27

    #@171
    move-object/from16 v0, p1

    #@173
    move-object/from16 v1, v27

    #@175
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@178
    .line 1672
    const-string/jumbo v27, " (HH:MM:SS), sync "

    #@17b
    move-object/from16 v0, p1

    #@17d
    move-object/from16 v1, v27

    #@17f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    .line 1673
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@186
    move-object/from16 v27, v0

    #@188
    move-object/from16 v0, v27

    #@18a
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@18c
    move-object/from16 v27, v0

    #@18e
    move-object/from16 v0, v27

    #@190
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    #@192
    move/from16 v27, v0

    #@194
    if-eqz v27, :cond_3

    #@196
    const-string/jumbo v27, ""

    #@199
    :goto_2
    move-object/from16 v0, p1

    #@19b
    move-object/from16 v1, v27

    #@19d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a0
    .line 1674
    const-string/jumbo v27, "in progress"

    #@1a3
    move-object/from16 v0, p1

    #@1a5
    move-object/from16 v1, v27

    #@1a7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1aa
    .line 1676
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1ad
    .line 1677
    new-instance v27, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v28, "Active Syncs: "

    #@1b5
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v27

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@1bd
    move-object/from16 v28, v0

    #@1bf
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@1c2
    move-result v28

    #@1c3
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v27

    #@1c7
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v27

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    move-object/from16 v1, v27

    #@1cf
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d2
    .line 1678
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@1d6
    move-object/from16 v27, v0

    #@1d8
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1db
    move-result-object v9

    #@1dc
    .line 1679
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    #@1de
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@1e0
    move-object/from16 v27, v0

    #@1e2
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e5
    move-result-object v7

    #@1e6
    .local v7, "activeSyncContext$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1e9
    move-result v27

    #@1ea
    if-eqz v27, :cond_4

    #@1ec
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ef
    move-result-object v6

    #@1f0
    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@1f2
    .line 1680
    .local v6, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@1f4
    move-wide/from16 v28, v0

    #@1f6
    sub-long v28, v12, v28

    #@1f8
    const-wide/16 v30, 0x3e8

    #@1fa
    div-long v10, v28, v30

    #@1fc
    .line 1681
    .local v10, "durationInSeconds":J
    const-string/jumbo v27, "  "

    #@1ff
    move-object/from16 v0, p1

    #@201
    move-object/from16 v1, v27

    #@203
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@206
    .line 1682
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@209
    move-result-object v27

    #@20a
    move-object/from16 v0, p1

    #@20c
    move-object/from16 v1, v27

    #@20e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@211
    .line 1683
    const-string/jumbo v27, " - "

    #@214
    move-object/from16 v0, p1

    #@216
    move-object/from16 v1, v27

    #@218
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21b
    .line 1684
    iget-object v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@21d
    move-object/from16 v27, v0

    #@21f
    const/16 v28, 0x0

    #@221
    move-object/from16 v0, v27

    #@223
    move/from16 v1, v28

    #@225
    invoke-virtual {v0, v9, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    #@228
    move-result-object v27

    #@229
    move-object/from16 v0, p1

    #@22b
    move-object/from16 v1, v27

    #@22d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@230
    .line 1685
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@233
    goto :goto_3

    #@234
    .line 1661
    .end local v6    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v7    # "activeSyncContext$iterator":Ljava/util/Iterator;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "durationInSeconds":J
    .end local v12    # "now":J
    :cond_2
    const-string/jumbo v27, "not known yet"

    #@237
    move-object/from16 v0, p1

    #@239
    move-object/from16 v1, v27

    #@23b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23e
    goto/16 :goto_1

    #@240
    .line 1673
    .restart local v12    # "now":J
    :cond_3
    const-string/jumbo v27, "not "

    #@243
    goto/16 :goto_2

    #@245
    .line 1689
    .restart local v7    # "activeSyncContext$iterator":Ljava/util/Iterator;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@248
    .line 1690
    const-string/jumbo v27, "Sync Status"

    #@24b
    move-object/from16 v0, p1

    #@24d
    move-object/from16 v1, v27

    #@24f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@252
    .line 1691
    const/16 v27, 0x0

    #@254
    array-length v0, v5

    #@255
    move/from16 v29, v0

    #@257
    move/from16 v28, v27

    #@259
    :goto_4
    move/from16 v0, v28

    #@25b
    move/from16 v1, v29

    #@25d
    if-ge v0, v1, :cond_a

    #@25f
    aget-object v4, v5, v28

    #@261
    .line 1692
    .local v4, "account":Landroid/accounts/AccountAndUser;
    const-string/jumbo v27, "Account %s u%d %s\n"

    #@264
    const/16 v30, 0x3

    #@266
    move/from16 v0, v30

    #@268
    new-array v0, v0, [Ljava/lang/Object;

    #@26a
    move-object/from16 v30, v0

    #@26c
    .line 1693
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@26e
    move-object/from16 v31, v0

    #@270
    move-object/from16 v0, v31

    #@272
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@274
    move-object/from16 v31, v0

    #@276
    const/16 v32, 0x0

    #@278
    aput-object v31, v30, v32

    #@27a
    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    #@27c
    move/from16 v31, v0

    #@27e
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@281
    move-result-object v31

    #@282
    const/16 v32, 0x1

    #@284
    aput-object v31, v30, v32

    #@286
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@288
    move-object/from16 v31, v0

    #@28a
    move-object/from16 v0, v31

    #@28c
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@28e
    move-object/from16 v31, v0

    #@290
    const/16 v32, 0x2

    #@292
    aput-object v31, v30, v32

    #@294
    .line 1692
    move-object/from16 v0, p1

    #@296
    move-object/from16 v1, v27

    #@298
    move-object/from16 v2, v30

    #@29a
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@29d
    .line 1695
    const-string/jumbo v27, "======================================================================="

    #@2a0
    move-object/from16 v0, p1

    #@2a2
    move-object/from16 v1, v27

    #@2a4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a7
    .line 1696
    new-instance v23, Lcom/android/server/content/SyncManager$PrintTable;

    #@2a9
    const/16 v27, 0xc

    #@2ab
    move-object/from16 v0, v23

    #@2ad
    move/from16 v1, v27

    #@2af
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    #@2b2
    .line 1697
    .local v23, "table":Lcom/android/server/content/SyncManager$PrintTable;
    const/16 v27, 0xc

    #@2b4
    move/from16 v0, v27

    #@2b6
    new-array v0, v0, [Ljava/lang/Object;

    #@2b8
    move-object/from16 v27, v0

    #@2ba
    .line 1698
    const-string/jumbo v30, "Authority"

    #@2bd
    const/16 v31, 0x0

    #@2bf
    aput-object v30, v27, v31

    #@2c1
    .line 1699
    const-string/jumbo v30, "Syncable"

    #@2c4
    const/16 v31, 0x1

    #@2c6
    aput-object v30, v27, v31

    #@2c8
    .line 1700
    const-string/jumbo v30, "Enabled"

    #@2cb
    const/16 v31, 0x2

    #@2cd
    aput-object v30, v27, v31

    #@2cf
    .line 1701
    const-string/jumbo v30, "Delay"

    #@2d2
    const/16 v31, 0x3

    #@2d4
    aput-object v30, v27, v31

    #@2d6
    .line 1702
    const-string/jumbo v30, "Loc"

    #@2d9
    const/16 v31, 0x4

    #@2db
    aput-object v30, v27, v31

    #@2dd
    .line 1703
    const-string/jumbo v30, "Poll"

    #@2e0
    const/16 v31, 0x5

    #@2e2
    aput-object v30, v27, v31

    #@2e4
    .line 1704
    const-string/jumbo v30, "Per"

    #@2e7
    const/16 v31, 0x6

    #@2e9
    aput-object v30, v27, v31

    #@2eb
    .line 1705
    const-string/jumbo v30, "Serv"

    #@2ee
    const/16 v31, 0x7

    #@2f0
    aput-object v30, v27, v31

    #@2f2
    .line 1706
    const-string/jumbo v30, "User"

    #@2f5
    const/16 v31, 0x8

    #@2f7
    aput-object v30, v27, v31

    #@2f9
    .line 1707
    const-string/jumbo v30, "Tot"

    #@2fc
    const/16 v31, 0x9

    #@2fe
    aput-object v30, v27, v31

    #@300
    .line 1708
    const-string/jumbo v30, "Time"

    #@303
    const/16 v31, 0xa

    #@305
    aput-object v30, v27, v31

    #@307
    .line 1709
    const-string/jumbo v30, "Last Sync"

    #@30a
    const/16 v31, 0xb

    #@30c
    aput-object v30, v27, v31

    #@30e
    .line 1697
    const/16 v30, 0x0

    #@310
    const/16 v31, 0x0

    #@312
    move-object/from16 v0, v23

    #@314
    move/from16 v1, v30

    #@316
    move/from16 v2, v31

    #@318
    move-object/from16 v3, v27

    #@31a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@31d
    .line 1713
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@320
    move-result-object v18

    #@321
    .line 1714
    .local v18, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    move-object/from16 v0, p0

    #@323
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@325
    move-object/from16 v27, v0

    #@327
    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    #@329
    move/from16 v30, v0

    #@32b
    move-object/from16 v0, v27

    #@32d
    move/from16 v1, v30

    #@32f
    invoke-virtual {v0, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@332
    move-result-object v27

    #@333
    move-object/from16 v0, v18

    #@335
    move-object/from16 v1, v27

    #@337
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@33a
    .line 1716
    new-instance v27, Lcom/android/server/content/SyncManager$14;

    #@33c
    move-object/from16 v0, v27

    #@33e
    move-object/from16 v1, p0

    #@340
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    #@343
    .line 1715
    move-object/from16 v0, v18

    #@345
    move-object/from16 v1, v27

    #@347
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@34a
    .line 1723
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34d
    move-result-object v21

    #@34e
    .local v21, "syncAdapterType$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@351
    move-result v27

    #@352
    if-eqz v27, :cond_9

    #@354
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@357
    move-result-object v20

    #@358
    check-cast v20, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@35a
    .line 1724
    .local v20, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v20

    #@35c
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@35e
    move-object/from16 v27, v0

    #@360
    check-cast v27, Landroid/content/SyncAdapterType;

    #@362
    move-object/from16 v0, v27

    #@364
    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@366
    move-object/from16 v27, v0

    #@368
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@36a
    move-object/from16 v30, v0

    #@36c
    move-object/from16 v0, v30

    #@36e
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@370
    move-object/from16 v30, v0

    #@372
    move-object/from16 v0, v27

    #@374
    move-object/from16 v1, v30

    #@376
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@379
    move-result v27

    #@37a
    if-eqz v27, :cond_5

    #@37c
    .line 1727
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    #@37f
    move-result v14

    #@380
    .line 1729
    .local v14, "row":I
    move-object/from16 v0, p0

    #@382
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@384
    move-object/from16 v30, v0

    #@386
    .line 1730
    new-instance v31, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@388
    .line 1731
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@38a
    move-object/from16 v32, v0

    #@38c
    .line 1732
    move-object/from16 v0, v20

    #@38e
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@390
    move-object/from16 v27, v0

    #@392
    check-cast v27, Landroid/content/SyncAdapterType;

    #@394
    move-object/from16 v0, v27

    #@396
    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@398
    move-object/from16 v27, v0

    #@39a
    .line 1733
    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    #@39c
    move/from16 v33, v0

    #@39e
    .line 1730
    move-object/from16 v0, v31

    #@3a0
    move-object/from16 v1, v32

    #@3a2
    move-object/from16 v2, v27

    #@3a4
    move/from16 v3, v33

    #@3a6
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3a9
    .line 1729
    invoke-virtual/range {v30 .. v31}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@3ac
    move-result-object v22

    #@3ad
    .line 1734
    .local v22, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v22

    #@3af
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3b1
    move-object/from16 v17, v0

    #@3b3
    check-cast v17, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@3b5
    .line 1735
    .local v17, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v22

    #@3b7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3b9
    move-object/from16 v19, v0

    #@3bb
    check-cast v19, Landroid/content/SyncStatusInfo;

    #@3bd
    .line 1736
    .local v19, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v17

    #@3bf
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3c1
    move-object/from16 v27, v0

    #@3c3
    move-object/from16 v0, v27

    #@3c5
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@3c7
    .line 1737
    .local v8, "authority":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@3ca
    move-result v27

    #@3cb
    const/16 v30, 0x32

    #@3cd
    move/from16 v0, v27

    #@3cf
    move/from16 v1, v30

    #@3d1
    if-le v0, v1, :cond_6

    #@3d3
    .line 1738
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@3d6
    move-result v27

    #@3d7
    add-int/lit8 v27, v27, -0x32

    #@3d9
    move/from16 v0, v27

    #@3db
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3de
    move-result-object v8

    #@3df
    .line 1740
    :cond_6
    const/16 v27, 0x3

    #@3e1
    move/from16 v0, v27

    #@3e3
    new-array v0, v0, [Ljava/lang/Object;

    #@3e5
    move-object/from16 v27, v0

    #@3e7
    const/16 v30, 0x0

    #@3e9
    aput-object v8, v27, v30

    #@3eb
    move-object/from16 v0, v17

    #@3ed
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@3ef
    move/from16 v30, v0

    #@3f1
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f4
    move-result-object v30

    #@3f5
    const/16 v31, 0x1

    #@3f7
    aput-object v30, v27, v31

    #@3f9
    move-object/from16 v0, v17

    #@3fb
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@3fd
    move/from16 v30, v0

    #@3ff
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@402
    move-result-object v30

    #@403
    const/16 v31, 0x2

    #@405
    aput-object v30, v27, v31

    #@407
    const/16 v30, 0x0

    #@409
    move-object/from16 v0, v23

    #@40b
    move/from16 v1, v30

    #@40d
    move-object/from16 v2, v27

    #@40f
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@412
    .line 1741
    const/16 v27, 0x7

    #@414
    move/from16 v0, v27

    #@416
    new-array v0, v0, [Ljava/lang/Object;

    #@418
    move-object/from16 v27, v0

    #@41a
    .line 1742
    move-object/from16 v0, v19

    #@41c
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@41e
    move/from16 v30, v0

    #@420
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@423
    move-result-object v30

    #@424
    const/16 v31, 0x0

    #@426
    aput-object v30, v27, v31

    #@428
    .line 1743
    move-object/from16 v0, v19

    #@42a
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@42c
    move/from16 v30, v0

    #@42e
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@431
    move-result-object v30

    #@432
    const/16 v31, 0x1

    #@434
    aput-object v30, v27, v31

    #@436
    .line 1744
    move-object/from16 v0, v19

    #@438
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@43a
    move/from16 v30, v0

    #@43c
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43f
    move-result-object v30

    #@440
    const/16 v31, 0x2

    #@442
    aput-object v30, v27, v31

    #@444
    .line 1745
    move-object/from16 v0, v19

    #@446
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@448
    move/from16 v30, v0

    #@44a
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44d
    move-result-object v30

    #@44e
    const/16 v31, 0x3

    #@450
    aput-object v30, v27, v31

    #@452
    .line 1746
    move-object/from16 v0, v19

    #@454
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@456
    move/from16 v30, v0

    #@458
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45b
    move-result-object v30

    #@45c
    const/16 v31, 0x4

    #@45e
    aput-object v30, v27, v31

    #@460
    .line 1747
    move-object/from16 v0, v19

    #@462
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@464
    move/from16 v30, v0

    #@466
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@469
    move-result-object v30

    #@46a
    const/16 v31, 0x5

    #@46c
    aput-object v30, v27, v31

    #@46e
    .line 1748
    move-object/from16 v0, v19

    #@470
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@472
    move-wide/from16 v30, v0

    #@474
    const-wide/16 v32, 0x3e8

    #@476
    div-long v30, v30, v32

    #@478
    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@47b
    move-result-object v30

    #@47c
    const/16 v31, 0x6

    #@47e
    aput-object v30, v27, v31

    #@480
    .line 1741
    const/16 v30, 0x4

    #@482
    move-object/from16 v0, v23

    #@484
    move/from16 v1, v30

    #@486
    move-object/from16 v2, v27

    #@488
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@48b
    .line 1750
    move v15, v14

    #@48c
    .line 1751
    .local v15, "row1":I
    move-object/from16 v0, v17

    #@48e
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    #@490
    move-wide/from16 v30, v0

    #@492
    cmp-long v27, v30, v12

    #@494
    if-lez v27, :cond_7

    #@496
    .line 1752
    add-int/lit8 v15, v14, 0x1

    #@498
    const/16 v27, 0x1

    #@49a
    move/from16 v0, v27

    #@49c
    new-array v0, v0, [Ljava/lang/Object;

    #@49e
    move-object/from16 v27, v0

    #@4a0
    new-instance v30, Ljava/lang/StringBuilder;

    #@4a2
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@4a5
    const-string/jumbo v31, "D: "

    #@4a8
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ab
    move-result-object v30

    #@4ac
    move-object/from16 v0, v17

    #@4ae
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    #@4b0
    move-wide/from16 v32, v0

    #@4b2
    sub-long v32, v32, v12

    #@4b4
    const-wide/16 v34, 0x3e8

    #@4b6
    div-long v32, v32, v34

    #@4b8
    move-object/from16 v0, v30

    #@4ba
    move-wide/from16 v1, v32

    #@4bc
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4bf
    move-result-object v30

    #@4c0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c3
    move-result-object v30

    #@4c4
    const/16 v31, 0x0

    #@4c6
    aput-object v30, v27, v31

    #@4c8
    const/16 v30, 0xc

    #@4ca
    move-object/from16 v0, v23

    #@4cc
    move/from16 v1, v30

    #@4ce
    move-object/from16 v2, v27

    #@4d0
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@4d3
    .line 1753
    move-object/from16 v0, v17

    #@4d5
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@4d7
    move-wide/from16 v30, v0

    #@4d9
    cmp-long v27, v30, v12

    #@4db
    if-lez v27, :cond_7

    #@4dd
    .line 1754
    add-int/lit8 v16, v15, 0x1

    #@4df
    .end local v15    # "row1":I
    .local v16, "row1":I
    const/16 v27, 0x1

    #@4e1
    move/from16 v0, v27

    #@4e3
    new-array v0, v0, [Ljava/lang/Object;

    #@4e5
    move-object/from16 v27, v0

    #@4e7
    new-instance v30, Ljava/lang/StringBuilder;

    #@4e9
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@4ec
    const-string/jumbo v31, "B: "

    #@4ef
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f2
    move-result-object v30

    #@4f3
    move-object/from16 v0, v17

    #@4f5
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@4f7
    move-wide/from16 v32, v0

    #@4f9
    sub-long v32, v32, v12

    #@4fb
    const-wide/16 v34, 0x3e8

    #@4fd
    div-long v32, v32, v34

    #@4ff
    move-object/from16 v0, v30

    #@501
    move-wide/from16 v1, v32

    #@503
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@506
    move-result-object v30

    #@507
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50a
    move-result-object v30

    #@50b
    const/16 v31, 0x0

    #@50d
    aput-object v30, v27, v31

    #@50f
    const/16 v30, 0xc

    #@511
    move-object/from16 v0, v23

    #@513
    move/from16 v1, v30

    #@515
    move-object/from16 v2, v27

    #@517
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@51a
    .line 1755
    add-int/lit8 v15, v16, 0x1

    #@51c
    .end local v16    # "row1":I
    .restart local v15    # "row1":I
    const/16 v27, 0x1

    #@51e
    move/from16 v0, v27

    #@520
    new-array v0, v0, [Ljava/lang/Object;

    #@522
    move-object/from16 v27, v0

    #@524
    move-object/from16 v0, v17

    #@526
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@528
    move-wide/from16 v30, v0

    #@52a
    const-wide/16 v32, 0x3e8

    #@52c
    div-long v30, v30, v32

    #@52e
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@531
    move-result-object v30

    #@532
    const/16 v31, 0x0

    #@534
    aput-object v30, v27, v31

    #@536
    const/16 v30, 0xc

    #@538
    move-object/from16 v0, v23

    #@53a
    move/from16 v1, v16

    #@53c
    move/from16 v2, v30

    #@53e
    move-object/from16 v3, v27

    #@540
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@543
    .line 1759
    :cond_7
    move-object/from16 v0, v19

    #@545
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@547
    move-wide/from16 v30, v0

    #@549
    const-wide/16 v32, 0x0

    #@54b
    cmp-long v27, v30, v32

    #@54d
    if-eqz v27, :cond_8

    #@54f
    .line 1760
    add-int/lit8 v16, v15, 0x1

    #@551
    .end local v15    # "row1":I
    .restart local v16    # "row1":I
    const/16 v27, 0x1

    #@553
    move/from16 v0, v27

    #@555
    new-array v0, v0, [Ljava/lang/Object;

    #@557
    move-object/from16 v27, v0

    #@559
    new-instance v30, Ljava/lang/StringBuilder;

    #@55b
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@55e
    sget-object v31, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@560
    move-object/from16 v0, v19

    #@562
    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@564
    move/from16 v32, v0

    #@566
    aget-object v31, v31, v32

    #@568
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56b
    move-result-object v30

    #@56c
    .line 1761
    const-string/jumbo v31, " "

    #@56f
    .line 1760
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@572
    move-result-object v30

    #@573
    .line 1761
    const-string/jumbo v31, "SUCCESS"

    #@576
    .line 1760
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@579
    move-result-object v30

    #@57a
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57d
    move-result-object v30

    #@57e
    const/16 v31, 0x0

    #@580
    aput-object v30, v27, v31

    #@582
    const/16 v30, 0xb

    #@584
    move-object/from16 v0, v23

    #@586
    move/from16 v1, v30

    #@588
    move-object/from16 v2, v27

    #@58a
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@58d
    .line 1762
    add-int/lit8 v15, v16, 0x1

    #@58f
    .end local v16    # "row1":I
    .restart local v15    # "row1":I
    const/16 v27, 0x1

    #@591
    move/from16 v0, v27

    #@593
    new-array v0, v0, [Ljava/lang/Object;

    #@595
    move-object/from16 v27, v0

    #@597
    move-object/from16 v0, v19

    #@599
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@59b
    move-wide/from16 v30, v0

    #@59d
    invoke-static/range {v30 .. v31}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@5a0
    move-result-object v30

    #@5a1
    const/16 v31, 0x0

    #@5a3
    aput-object v30, v27, v31

    #@5a5
    const/16 v30, 0xb

    #@5a7
    move-object/from16 v0, v23

    #@5a9
    move/from16 v1, v16

    #@5ab
    move/from16 v2, v30

    #@5ad
    move-object/from16 v3, v27

    #@5af
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@5b2
    .line 1764
    :cond_8
    move-object/from16 v0, v19

    #@5b4
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@5b6
    move-wide/from16 v30, v0

    #@5b8
    const-wide/16 v32, 0x0

    #@5ba
    cmp-long v27, v30, v32

    #@5bc
    if-eqz v27, :cond_5

    #@5be
    .line 1765
    add-int/lit8 v16, v15, 0x1

    #@5c0
    .end local v15    # "row1":I
    .restart local v16    # "row1":I
    const/16 v27, 0x1

    #@5c2
    move/from16 v0, v27

    #@5c4
    new-array v0, v0, [Ljava/lang/Object;

    #@5c6
    move-object/from16 v27, v0

    #@5c8
    new-instance v30, Ljava/lang/StringBuilder;

    #@5ca
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@5cd
    sget-object v31, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@5cf
    move-object/from16 v0, v19

    #@5d1
    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@5d3
    move/from16 v32, v0

    #@5d5
    aget-object v31, v31, v32

    #@5d7
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5da
    move-result-object v30

    #@5db
    .line 1766
    const-string/jumbo v31, " "

    #@5de
    .line 1765
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e1
    move-result-object v30

    #@5e2
    .line 1766
    const-string/jumbo v31, "FAILURE"

    #@5e5
    .line 1765
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v30

    #@5e9
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ec
    move-result-object v30

    #@5ed
    const/16 v31, 0x0

    #@5ef
    aput-object v30, v27, v31

    #@5f1
    const/16 v30, 0xb

    #@5f3
    move-object/from16 v0, v23

    #@5f5
    move/from16 v1, v30

    #@5f7
    move-object/from16 v2, v27

    #@5f9
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@5fc
    .line 1767
    add-int/lit8 v15, v16, 0x1

    #@5fe
    .end local v16    # "row1":I
    .restart local v15    # "row1":I
    const/16 v27, 0x1

    #@600
    move/from16 v0, v27

    #@602
    new-array v0, v0, [Ljava/lang/Object;

    #@604
    move-object/from16 v27, v0

    #@606
    move-object/from16 v0, v19

    #@608
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@60a
    move-wide/from16 v30, v0

    #@60c
    invoke-static/range {v30 .. v31}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@60f
    move-result-object v30

    #@610
    const/16 v31, 0x0

    #@612
    aput-object v30, v27, v31

    #@614
    const/16 v30, 0xb

    #@616
    move-object/from16 v0, v23

    #@618
    move/from16 v1, v16

    #@61a
    move/from16 v2, v30

    #@61c
    move-object/from16 v3, v27

    #@61e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@621
    .line 1769
    add-int/lit8 v16, v15, 0x1

    #@623
    .end local v15    # "row1":I
    .restart local v16    # "row1":I
    const/16 v27, 0x1

    #@625
    move/from16 v0, v27

    #@627
    new-array v0, v0, [Ljava/lang/Object;

    #@629
    move-object/from16 v27, v0

    #@62b
    move-object/from16 v0, v19

    #@62d
    iget-object v0, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@62f
    move-object/from16 v30, v0

    #@631
    const/16 v31, 0x0

    #@633
    aput-object v30, v27, v31

    #@635
    const/16 v30, 0xb

    #@637
    move-object/from16 v0, v23

    #@639
    move/from16 v1, v30

    #@63b
    move-object/from16 v2, v27

    #@63d
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@640
    goto/16 :goto_5

    #@642
    .line 1772
    .end local v8    # "authority":Ljava/lang/String;
    .end local v14    # "row":I
    .end local v16    # "row1":I
    .end local v17    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v19    # "status":Landroid/content/SyncStatusInfo;
    .end local v20    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v22    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    :cond_9
    move-object/from16 v0, v23

    #@644
    move-object/from16 v1, p1

    #@646
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    #@649
    .line 1691
    add-int/lit8 v27, v28, 0x1

    #@64b
    move/from16 v28, v27

    #@64d
    goto/16 :goto_4

    #@64f
    .line 1640
    .end local v4    # "account":Landroid/accounts/AccountAndUser;
    .end local v18    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v21    # "syncAdapterType$iterator":Ljava/util/Iterator;
    .end local v23    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_a
    return-void
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 659
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@3
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 660
    .local v0, "isSyncable":I
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@10
    move-result-object v4

    #@11
    .line 663
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    #@13
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 667
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@1b
    .line 668
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1d
    invoke-static {p3, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@20
    move-result-object v6

    #@21
    .line 667
    invoke-virtual {v5, v6, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@24
    move-result-object v3

    #@25
    .line 669
    .local v3, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v3, :cond_1

    #@27
    return v0

    #@28
    .line 663
    .end local v3    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return v0

    #@29
    .line 671
    .restart local v3    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_1
    const/4 v1, 0x0

    #@2a
    .line 673
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2d
    move-result-object v5

    #@2e
    .line 674
    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@30
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    const/4 v7, 0x0

    #@35
    .line 673
    invoke-interface {v5, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v1

    #@39
    .line 675
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2

    #@3b
    return v0

    #@3c
    .line 676
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@3d
    .line 678
    .local v2, "re":Landroid/os/RemoteException;
    return v0

    #@3e
    .line 680
    .end local v2    # "re":Landroid/os/RemoteException;
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@40
    if-eqz v5, :cond_3

    #@42
    .line 681
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@44
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v5

    #@4a
    .line 680
    if-eqz v5, :cond_3

    #@4c
    .line 682
    return v0

    #@4d
    .line 684
    :cond_3
    return v8
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 14
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v12, 0x3e8

    #@2
    .line 942
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    #@5
    move-result-object v10

    #@6
    .line 943
    .local v10, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    new-instance v11, Ljava/util/ArrayList;

    #@8
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 945
    .local v11, "periodicSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v9

    #@f
    .local v9, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v8

    #@19
    check-cast v8, Lcom/android/server/content/SyncOperation;

    #@1b
    .line 946
    .local v8, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v0, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@1d
    if-eqz v0, :cond_0

    #@1f
    iget-object v0, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@21
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 947
    new-instance v0, Landroid/content/PeriodicSync;

    #@29
    iget-object v1, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2b
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@2d
    iget-object v2, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2f
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@31
    .line 948
    iget-object v3, v8, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@33
    iget-wide v4, v8, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@35
    div-long/2addr v4, v12

    #@36
    iget-wide v6, v8, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@38
    div-long/2addr v6, v12

    #@39
    .line 947
    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    #@3c
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 952
    .end local v8    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-object v11
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 970
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@2
    invoke-virtual {v5, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@5
    move-result-object v3

    #@6
    .line 971
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@9
    move-result v5

    #@a
    new-array v4, v5, [Landroid/content/SyncAdapterType;

    #@c
    .line 972
    .local v4, "types":[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    #@d
    .line 973
    .local v0, "i":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "serviceInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@1d
    .line 974
    .local v1, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1f
    check-cast v5, Landroid/content/SyncAdapterType;

    #@21
    aput-object v5, v4, v0

    #@23
    .line 975
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 977
    .end local v1    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    return-object v0
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2
    const/16 v2, 0xe

    #@4
    invoke-virtual {v1, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 922
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@b
    .line 923
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 920
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 960
    new-instance v5, Landroid/os/Bundle;

    #@2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 961
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "upload"

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 963
    sget-wide v6, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    #@e
    .line 964
    sget-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    #@10
    const-wide/16 v2, 0x2

    #@12
    mul-long v8, v2, v0

    #@14
    .line 965
    const/4 v10, 0x0

    #@15
    move-object v0, p0

    #@16
    move-object v1, p1

    #@17
    move v2, p2

    #@18
    move v3, p3

    #@19
    move-object v4, p4

    #@1a
    .line 962
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@1d
    .line 959
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    .locals 44
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "beforeRuntimeMillis"    # J
    .param p8, "runtimeMillis"    # J
    .param p10, "onlyThoseWithUnkownSyncableState"    # Z

    #@0
    .prologue
    .line 743
    const-string/jumbo v2, "SyncManager"

    #@3
    const/4 v3, 0x2

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v32

    #@8
    .line 744
    .local v32, "isLoggable":Z
    if-nez p5, :cond_0

    #@a
    .line 745
    new-instance p5, Landroid/os/Bundle;

    #@c
    .end local p5    # "extras":Landroid/os/Bundle;
    invoke-direct/range {p5 .. p5}, Landroid/os/Bundle;-><init>()V

    #@f
    .line 747
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_0
    if-eqz v32, :cond_1

    #@11
    .line 748
    const-string/jumbo v2, "SyncManager"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "one-time sync for: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, " "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const-string/jumbo v4, " "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    move-object/from16 v0, p4

    #@3e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 753
    :cond_1
    if-eqz p1, :cond_5

    #@4b
    const/4 v2, -0x1

    #@4c
    move/from16 v0, p2

    #@4e
    if-eq v0, v2, :cond_5

    #@50
    .line 754
    const/4 v2, 0x1

    #@51
    new-array v0, v2, [Landroid/accounts/AccountAndUser;

    #@53
    move-object/from16 v23, v0

    #@55
    new-instance v2, Landroid/accounts/AccountAndUser;

    #@57
    move-object/from16 v0, p1

    #@59
    move/from16 v1, p2

    #@5b
    invoke-direct {v2, v0, v1}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@5e
    const/4 v3, 0x0

    #@5f
    aput-object v2, v23, v3

    #@61
    .line 765
    .local v23, "accounts":[Landroid/accounts/AccountAndUser;
    :cond_2
    const-string/jumbo v2, "upload"

    #@64
    const/4 v3, 0x0

    #@65
    move-object/from16 v0, p5

    #@67
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@6a
    move-result v40

    #@6b
    .line 766
    .local v40, "uploadOnly":Z
    const-string/jumbo v2, "force"

    #@6e
    const/4 v3, 0x0

    #@6f
    move-object/from16 v0, p5

    #@71
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@74
    move-result v34

    #@75
    .line 767
    .local v34, "manualSync":Z
    if-eqz v34, :cond_3

    #@77
    .line 768
    const-string/jumbo v2, "ignore_backoff"

    #@7a
    const/4 v3, 0x1

    #@7b
    move-object/from16 v0, p5

    #@7d
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@80
    .line 769
    const-string/jumbo v2, "ignore_settings"

    #@83
    const/4 v3, 0x1

    #@84
    move-object/from16 v0, p5

    #@86
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@89
    .line 772
    :cond_3
    const-string/jumbo v2, "ignore_settings"

    #@8c
    const/4 v3, 0x0

    #@8d
    move-object/from16 v0, p5

    #@8f
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@92
    move-result v29

    #@93
    .line 775
    .local v29, "ignoreSettings":Z
    if-eqz v40, :cond_7

    #@95
    .line 776
    const/4 v8, 0x1

    #@96
    .line 787
    .local v8, "source":I
    :goto_0
    const/4 v2, 0x0

    #@97
    move-object/from16 v0, v23

    #@99
    array-length v0, v0

    #@9a
    move/from16 v42, v0

    #@9c
    move/from16 v41, v2

    #@9e
    :goto_1
    move/from16 v0, v41

    #@a0
    move/from16 v1, v42

    #@a2
    if-ge v0, v1, :cond_18

    #@a4
    aget-object v22, v23, v41

    #@a6
    .line 789
    .local v22, "account":Landroid/accounts/AccountAndUser;
    if-ltz p2, :cond_a

    #@a8
    move-object/from16 v0, v22

    #@aa
    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@ac
    if-ltz v2, :cond_a

    #@ae
    .line 790
    move-object/from16 v0, v22

    #@b0
    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@b2
    move/from16 v0, p2

    #@b4
    if-eq v0, v2, :cond_a

    #@b6
    .line 787
    :cond_4
    add-int/lit8 v2, v41, 0x1

    #@b8
    move/from16 v41, v2

    #@ba
    goto :goto_1

    #@bb
    .line 756
    .end local v8    # "source":I
    .end local v22    # "account":Landroid/accounts/AccountAndUser;
    .end local v23    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v29    # "ignoreSettings":Z
    .end local v34    # "manualSync":Z
    .end local v40    # "uploadOnly":Z
    :cond_5
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@bf
    move-object/from16 v23, v0

    #@c1
    .line 757
    .restart local v23    # "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v23

    #@c3
    array-length v2, v0

    #@c4
    if-nez v2, :cond_2

    #@c6
    .line 758
    if-eqz v32, :cond_6

    #@c8
    .line 759
    const-string/jumbo v2, "SyncManager"

    #@cb
    const-string/jumbo v3, "scheduleSync: no accounts configured, dropping"

    #@ce
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 761
    :cond_6
    return-void

    #@d2
    .line 777
    .restart local v29    # "ignoreSettings":Z
    .restart local v34    # "manualSync":Z
    .restart local v40    # "uploadOnly":Z
    :cond_7
    if-eqz v34, :cond_8

    #@d4
    .line 778
    const/4 v8, 0x3

    #@d5
    .restart local v8    # "source":I
    goto :goto_0

    #@d6
    .line 779
    .end local v8    # "source":I
    :cond_8
    if-nez p4, :cond_9

    #@d8
    .line 780
    const/4 v8, 0x2

    #@d9
    .restart local v8    # "source":I
    goto :goto_0

    #@da
    .line 784
    .end local v8    # "source":I
    :cond_9
    const/4 v8, 0x0

    #@db
    .restart local v8    # "source":I
    goto :goto_0

    #@dc
    .line 795
    .restart local v22    # "account":Landroid/accounts/AccountAndUser;
    :cond_a
    new-instance v39, Ljava/util/HashSet;

    #@de
    invoke-direct/range {v39 .. v39}, Ljava/util/HashSet;-><init>()V

    #@e1
    .line 797
    .local v39, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@e3
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@e5
    move-object/from16 v0, v22

    #@e7
    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@e9
    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@ec
    move-result-object v2

    #@ed
    .line 796
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f0
    move-result-object v36

    #@f1
    .local v36, "syncAdapter$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    #@f4
    move-result v2

    #@f5
    if-eqz v2, :cond_b

    #@f7
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@fa
    move-result-object v35

    #@fb
    check-cast v35, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@fd
    .line 798
    .local v35, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v35

    #@ff
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@101
    check-cast v2, Landroid/content/SyncAdapterType;

    #@103
    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@105
    move-object/from16 v0, v39

    #@107
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@10a
    goto :goto_2

    #@10b
    .line 804
    .end local v35    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_b
    if-eqz p4, :cond_c

    #@10d
    .line 805
    move-object/from16 v0, v39

    #@10f
    move-object/from16 v1, p4

    #@111
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@114
    move-result v28

    #@115
    .line 806
    .local v28, "hasSyncAdapter":Z
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashSet;->clear()V

    #@118
    .line 807
    if-eqz v28, :cond_c

    #@11a
    move-object/from16 v0, v39

    #@11c
    move-object/from16 v1, p4

    #@11e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@121
    .line 810
    .end local v28    # "hasSyncAdapter":Z
    :cond_c
    invoke-interface/range {v39 .. v39}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@124
    move-result-object v24

    #@125
    .local v24, "authority$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@128
    move-result v2

    #@129
    if-eqz v2, :cond_4

    #@12b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12e
    move-result-object v9

    #@12f
    check-cast v9, Ljava/lang/String;

    #@131
    .line 811
    .local v9, "authority":Ljava/lang/String;
    move-object/from16 v0, v22

    #@133
    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@135
    move-object/from16 v0, v22

    #@137
    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@139
    move-object/from16 v0, p0

    #@13b
    invoke-virtual {v0, v2, v3, v9}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    #@13e
    move-result v33

    #@13f
    .line 813
    .local v33, "isSyncable":I
    if-eqz v33, :cond_d

    #@141
    .line 817
    move-object/from16 v0, p0

    #@143
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@145
    .line 818
    move-object/from16 v0, v22

    #@147
    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@149
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@14b
    invoke-static {v9, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@14e
    move-result-object v3

    #@14f
    move-object/from16 v0, v22

    #@151
    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@153
    .line 817
    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@156
    move-result-object v37

    #@157
    .line 819
    .local v37, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v37, :cond_d

    #@159
    .line 822
    move-object/from16 v0, v37

    #@15b
    iget v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@15d
    .line 823
    .local v5, "owningUid":I
    move-object/from16 v0, v37

    #@15f
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@161
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@164
    move-result-object v6

    #@165
    .line 825
    .local v6, "owningPackage":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@168
    move-result-object v2

    #@169
    invoke-interface {v2, v5, v6}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    #@16c
    move-result v2

    #@16d
    .line 826
    const/4 v3, 0x2

    #@16e
    .line 825
    if-ne v2, v3, :cond_e

    #@170
    .line 827
    const-string/jumbo v2, "SyncManager"

    #@173
    new-instance v3, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    const-string/jumbo v4, "Not scheduling job "

    #@17b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v3

    #@17f
    move-object/from16 v0, v37

    #@181
    iget v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@186
    move-result-object v3

    #@187
    const-string/jumbo v4, ":"

    #@18a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v3

    #@18e
    .line 828
    move-object/from16 v0, v37

    #@190
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@192
    .line 827
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v3

    #@196
    .line 829
    const-string/jumbo v4, " -- package not allowed to start"

    #@199
    .line 827
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v3

    #@19d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v3

    #@1a1
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a4
    goto :goto_3

    #@1a5
    .line 832
    :catch_0
    move-exception v25

    #@1a6
    .line 834
    :cond_e
    move-object/from16 v0, v37

    #@1a8
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1aa
    check-cast v2, Landroid/content/SyncAdapterType;

    #@1ac
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    #@1af
    move-result v11

    #@1b0
    .line 835
    .local v11, "allowParallelSyncs":Z
    move-object/from16 v0, v37

    #@1b2
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1b4
    check-cast v2, Landroid/content/SyncAdapterType;

    #@1b6
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    #@1b9
    move-result v31

    #@1ba
    .line 836
    .local v31, "isAlwaysSyncable":Z
    if-gez v33, :cond_f

    #@1bc
    if-eqz v31, :cond_f

    #@1be
    .line 837
    move-object/from16 v0, p0

    #@1c0
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1c2
    .line 838
    move-object/from16 v0, v22

    #@1c4
    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@1c6
    move-object/from16 v0, v22

    #@1c8
    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@1ca
    const/4 v7, 0x1

    #@1cb
    .line 837
    invoke-virtual {v2, v3, v4, v9, v7}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V

    #@1ce
    .line 839
    const/16 v33, 0x1

    #@1d0
    .line 841
    :cond_f
    if-eqz p10, :cond_10

    #@1d2
    if-gez v33, :cond_d

    #@1d4
    .line 844
    :cond_10
    move-object/from16 v0, v37

    #@1d6
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1d8
    check-cast v2, Landroid/content/SyncAdapterType;

    #@1da
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    #@1dd
    move-result v2

    #@1de
    if-nez v2, :cond_11

    #@1e0
    if-nez v40, :cond_d

    #@1e2
    .line 849
    :cond_11
    if-ltz v33, :cond_12

    #@1e4
    if-nez v29, :cond_12

    #@1e6
    .line 851
    move-object/from16 v0, p0

    #@1e8
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1ea
    move-object/from16 v0, v22

    #@1ec
    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@1ee
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@1f1
    move-result v2

    #@1f2
    if-eqz v2, :cond_13

    #@1f4
    .line 852
    move-object/from16 v0, p0

    #@1f6
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1f8
    move-object/from16 v0, v22

    #@1fa
    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@1fc
    .line 853
    move-object/from16 v0, v22

    #@1fe
    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@200
    .line 852
    invoke-virtual {v2, v3, v4, v9}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    #@203
    move-result v38

    #@204
    .line 854
    .local v38, "syncAllowed":Z
    :goto_4
    if-nez v38, :cond_14

    #@206
    .line 855
    if-eqz v32, :cond_d

    #@208
    .line 856
    const-string/jumbo v2, "SyncManager"

    #@20b
    new-instance v3, Ljava/lang/StringBuilder;

    #@20d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@210
    const-string/jumbo v4, "scheduleSync: sync of "

    #@213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v3

    #@217
    move-object/from16 v0, v22

    #@219
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v3

    #@21d
    const-string/jumbo v4, ", "

    #@220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v3

    #@224
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v3

    #@228
    .line 857
    const-string/jumbo v4, " is not allowed, dropping request"

    #@22b
    .line 856
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v3

    #@22f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@232
    move-result-object v3

    #@233
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@236
    goto/16 :goto_3

    #@238
    .line 849
    .end local v38    # "syncAllowed":Z
    :cond_12
    const/16 v38, 0x1

    #@23a
    goto :goto_4

    #@23b
    .line 851
    :cond_13
    const/16 v38, 0x0

    #@23d
    goto :goto_4

    #@23e
    .line 862
    .restart local v38    # "syncAllowed":Z
    :cond_14
    new-instance v30, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@240
    .line 863
    move-object/from16 v0, v22

    #@242
    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@244
    move-object/from16 v0, v22

    #@246
    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@248
    .line 862
    move-object/from16 v0, v30

    #@24a
    invoke-direct {v0, v2, v9, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@24d
    .line 865
    .local v30, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    #@24f
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@251
    move-object/from16 v0, v30

    #@253
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@256
    move-result-wide v26

    #@257
    .line 866
    .local v26, "delayUntil":J
    if-gez v33, :cond_16

    #@259
    .line 868
    new-instance v10, Landroid/os/Bundle;

    #@25b
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@25e
    .line 869
    .local v10, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "initialize"

    #@261
    const/4 v3, 0x1

    #@262
    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@265
    .line 870
    if-eqz v32, :cond_15

    #@267
    .line 871
    const-string/jumbo v2, "SyncManager"

    #@26a
    new-instance v3, Ljava/lang/StringBuilder;

    #@26c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26f
    const-string/jumbo v4, "schedule initialisation Sync:, delay until "

    #@272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v3

    #@276
    move-wide/from16 v0, v26

    #@278
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v3

    #@27c
    .line 873
    const-string/jumbo v4, ", run by "

    #@27f
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v3

    #@283
    .line 873
    const/4 v4, 0x0

    #@284
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@287
    move-result-object v3

    #@288
    .line 874
    const-string/jumbo v4, ", flexMillis "

    #@28b
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v3

    #@28f
    .line 874
    const/4 v4, 0x0

    #@290
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@293
    move-result-object v3

    #@294
    .line 875
    const-string/jumbo v4, ", source "

    #@297
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v3

    #@29b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v3

    #@29f
    .line 876
    const-string/jumbo v4, ", account "

    #@2a2
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v3

    #@2a6
    move-object/from16 v0, v22

    #@2a8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v3

    #@2ac
    .line 877
    const-string/jumbo v4, ", authority "

    #@2af
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v3

    #@2b3
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v3

    #@2b7
    .line 878
    const-string/jumbo v4, ", extras "

    #@2ba
    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v3

    #@2be
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v3

    #@2c2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c5
    move-result-object v3

    #@2c6
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c9
    .line 881
    :cond_15
    new-instance v2, Lcom/android/server/content/SyncOperation;

    #@2cb
    move-object/from16 v0, v22

    #@2cd
    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@2cf
    move-object/from16 v0, v22

    #@2d1
    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@2d3
    move/from16 v7, p3

    #@2d5
    invoke-direct/range {v2 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Z)V

    #@2d8
    .line 880
    move-object/from16 v0, p0

    #@2da
    invoke-direct {v0, v2}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;)V

    #@2dd
    .line 886
    .end local v10    # "newExtras":Landroid/os/Bundle;
    :cond_16
    if-nez p10, :cond_d

    #@2df
    .line 887
    if-eqz v32, :cond_17

    #@2e1
    .line 888
    const-string/jumbo v2, "SyncManager"

    #@2e4
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e9
    const-string/jumbo v4, "scheduleSync: delay until "

    #@2ec
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v3

    #@2f0
    move-wide/from16 v0, v26

    #@2f2
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v3

    #@2f6
    .line 890
    const-string/jumbo v4, " run by "

    #@2f9
    .line 888
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v3

    #@2fd
    move-wide/from16 v0, p8

    #@2ff
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@302
    move-result-object v3

    #@303
    .line 891
    const-string/jumbo v4, " flexMillis "

    #@306
    .line 888
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@309
    move-result-object v3

    #@30a
    move-wide/from16 v0, p6

    #@30c
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v3

    #@310
    .line 892
    const-string/jumbo v4, ", source "

    #@313
    .line 888
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    move-result-object v3

    #@317
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v3

    #@31b
    .line 893
    const-string/jumbo v4, ", account "

    #@31e
    .line 888
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v3

    #@322
    move-object/from16 v0, v22

    #@324
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@327
    move-result-object v3

    #@328
    .line 894
    const-string/jumbo v4, ", authority "

    #@32b
    .line 888
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32e
    move-result-object v3

    #@32f
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@332
    move-result-object v3

    #@333
    .line 895
    const-string/jumbo v4, ", extras "

    #@336
    .line 888
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@339
    move-result-object v3

    #@33a
    move-object/from16 v0, p5

    #@33c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33f
    move-result-object v3

    #@340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@343
    move-result-object v3

    #@344
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@347
    .line 898
    :cond_17
    new-instance v12, Lcom/android/server/content/SyncOperation;

    #@349
    move-object/from16 v0, v22

    #@34b
    iget-object v13, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@34d
    move-object/from16 v0, v22

    #@34f
    iget v14, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@351
    move v15, v5

    #@352
    move-object/from16 v16, v6

    #@354
    move/from16 v17, p3

    #@356
    move/from16 v18, v8

    #@358
    move-object/from16 v19, v9

    #@35a
    move-object/from16 v20, p5

    #@35c
    move/from16 v21, v11

    #@35e
    invoke-direct/range {v12 .. v21}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Z)V

    #@361
    .line 897
    move-object/from16 v0, p0

    #@363
    invoke-direct {v0, v12}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;)V

    #@366
    goto/16 :goto_3

    #@368
    .line 742
    .end local v5    # "owningUid":I
    .end local v6    # "owningPackage":Ljava/lang/String;
    .end local v9    # "authority":Ljava/lang/String;
    .end local v11    # "allowParallelSyncs":Z
    .end local v22    # "account":Landroid/accounts/AccountAndUser;
    .end local v24    # "authority$iterator":Ljava/util/Iterator;
    .end local v26    # "delayUntil":J
    .end local v30    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v31    # "isAlwaysSyncable":Z
    .end local v33    # "isSyncable":I
    .end local v36    # "syncAdapter$iterator":Ljava/util/Iterator;
    .end local v37    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v38    # "syncAllowed":Z
    .end local v39    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_18
    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 932
    new-instance v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move-wide v4, p2

    #@5
    move-wide v6, p4

    #@6
    move-object/from16 v8, p6

    #@8
    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    #@b
    .line 934
    .local v1, "payload":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@d
    const/16 v2, 0xd

    #@f
    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 931
    return-void
.end method
