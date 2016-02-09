.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$1;,
        Lcom/android/server/content/SyncManager$2;,
        Lcom/android/server/content/SyncManager$3;,
        Lcom/android/server/content/SyncManager$4;,
        Lcom/android/server/content/SyncManager$5;,
        Lcom/android/server/content/SyncManager$6;,
        Lcom/android/server/content/SyncManager$7;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final ACTIVE_SYNC_TIMEOUT_MILLIS:J = 0x1b7740L

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

.field private static final MAX_SIMULTANEOUS_REGULAR_SYNCS:I

.field private static final MAX_SYNC_BOOT_DELAY_MILLIS:J = 0x1d4c0L

.field private static final MAX_TIME_PER_SYNC:J

.field private static final PER_SYNC_BOOT_DELAY_MILLIS:J = 0xbb8L

.field private static final SYNC_ALARM_TIMEOUT_MIN:J = 0x7530L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_NOTIFICATION_DELAY:J

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

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

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mAppIdleMonitor:Lcom/android/server/content/AppIdleMonitor;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private volatile mBootCompleted:Z

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mDeviceIsIdle:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNeedSyncActiveNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProvisioned:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mSyncQueue:Lcom/android/server/content/SyncQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSyncQueue"
    .end annotation
.end field

.field private mSyncRandomOffsetMillis:I

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()[Landroid/accounts/AccountAndUser;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    #@2
    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@2
    return v0
.end method

.method static synthetic -get15(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@2
    return v0
.end method

.method static synthetic -get17(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    #@2
    return v0
.end method

.method static synthetic -get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/content/SyncManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    #@2
    return v0
.end method

.method static synthetic -get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3()J
    .locals 2

    #@0
    sget-wide v0, Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/AppIdleMonitor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAppIdleMonitor:Lcom/android/server/content/AppIdleMonitor;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    #@2
    return v0
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
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

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

.method static synthetic -set4(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
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

.method static synthetic -wrap1(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStarting(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopping(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postSyncExpiryMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/content/SyncManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/content/SyncManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendSyncAlarmMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delayUntilSeconds"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V

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

.method static synthetic -wrap3(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
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

.method static synthetic -wrap5(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/content/SyncManager;I)J
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

.method static synthetic -wrap7(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/content/SyncManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/content/SyncManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->ensureAlarmService()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x7530

    #@2
    .line 126
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    const/4 v2, 0x0

    #@9
    .line 127
    .local v2, "isLargeRAM":Z
    :goto_0
    if-eqz v2, :cond_1

    #@b
    const/4 v0, 0x5

    #@c
    .line 128
    .local v0, "defaultMaxInitSyncs":I
    :goto_1
    if-eqz v2, :cond_2

    #@e
    const/4 v1, 0x2

    #@f
    .line 130
    .local v1, "defaultMaxRegularSyncs":I
    :goto_2
    const-string/jumbo v3, "sync.max_init_syncs"

    #@12
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@15
    move-result v3

    #@16
    .line 129
    sput v3, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    #@18
    .line 132
    const-string/jumbo v3, "sync.max_regular_syncs"

    #@1b
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@1e
    move-result v3

    #@1f
    .line 131
    sput v3, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    #@21
    .line 134
    const-string/jumbo v3, "sync.local_sync_delay"

    #@24
    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@27
    move-result-wide v4

    #@28
    .line 133
    sput-wide v4, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    #@2a
    .line 136
    const-string/jumbo v3, "sync.max_time_per_sync"

    #@2d
    const-wide/32 v4, 0x493e0

    #@30
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@33
    move-result-wide v4

    #@34
    .line 135
    sput-wide v4, Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J

    #@36
    .line 138
    const-string/jumbo v3, "sync.notification_delay"

    #@39
    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@3c
    move-result-wide v4

    #@3d
    .line 137
    sput-wide v4, Lcom/android/server/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    #@3f
    .line 199
    const/4 v3, 0x0

    #@40
    new-array v3, v3, [Landroid/accounts/AccountAndUser;

    #@42
    sput-object v3, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    #@44
    .line 113
    return-void

    #@45
    .line 126
    .end local v0    # "defaultMaxInitSyncs":I
    .end local v1    # "defaultMaxRegularSyncs":I
    .end local v2    # "isLargeRAM":Z
    :cond_0
    const/4 v2, 0x1

    #@46
    .restart local v2    # "isLargeRAM":Z
    goto :goto_0

    #@47
    .line 127
    :cond_1
    const/4 v0, 0x2

    #@48
    .restart local v0    # "defaultMaxInitSyncs":I
    goto :goto_1

    #@49
    .line 128
    :cond_2
    const/4 v1, 0x1

    #@4a
    .restart local v1    # "defaultMaxRegularSyncs":I
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 202
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    #@8
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@a
    .line 206
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    #@c
    .line 207
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@e
    .line 208
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    #@10
    .line 211
    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    #@12
    .line 219
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@18
    .line 222
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z

    #@1a
    .line 237
    new-instance v0, Lcom/android/server/content/SyncManager$1;

    #@1c
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    #@1f
    .line 236
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@21
    .line 259
    new-instance v0, Lcom/android/server/content/SyncManager$2;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    #@26
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    #@28
    .line 273
    new-instance v0, Lcom/android/server/content/SyncManager$3;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    #@2f
    .line 281
    new-instance v0, Lcom/android/server/content/SyncManager$4;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    #@34
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@36
    .line 349
    new-instance v0, Lcom/android/server/content/SyncManager$5;

    #@38
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    #@3b
    .line 348
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    #@3d
    .line 377
    new-instance v0, Lcom/android/server/content/SyncManager$6;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    #@42
    .line 376
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    #@44
    .line 385
    new-instance v0, Lcom/android/server/content/SyncManager$7;

    #@46
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    #@49
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@4b
    .line 405
    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    #@4d
    .line 424
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@4f
    .line 426
    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    #@52
    .line 427
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@58
    .line 428
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@5a
    new-instance v1, Lcom/android/server/content/SyncManager$8;

    #@5c
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    #@5f
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    #@62
    .line 444
    new-instance v0, Landroid/content/SyncAdaptersCache;

    #@64
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@66
    invoke-direct {v0, v1}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    #@69
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@6b
    .line 445
    new-instance v0, Lcom/android/server/content/SyncQueue;

    #@6d
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@6f
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@72
    move-result-object v1

    #@73
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@75
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@77
    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/content/SyncQueue;-><init>(Landroid/content/pm/PackageManager;Lcom/android/server/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V

    #@7a
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@7c
    .line 447
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler;

    #@7e
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@85
    move-result-object v1

    #@86
    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    #@89
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@8b
    .line 449
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@8d
    new-instance v1, Lcom/android/server/content/SyncManager$9;

    #@8f
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    #@92
    .line 459
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@94
    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    #@97
    .line 462
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@99
    new-instance v1, Landroid/content/Intent;

    #@9b
    const-string/jumbo v2, "android.content.syncmanager.SYNC_ALARM"

    #@9e
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a1
    .line 461
    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@a4
    move-result-object v0

    #@a5
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    #@a7
    .line 464
    new-instance v0, Lcom/android/server/content/AppIdleMonitor;

    #@a9
    invoke-direct {v0, p0}, Lcom/android/server/content/AppIdleMonitor;-><init>(Lcom/android/server/content/SyncManager;)V

    #@ac
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAppIdleMonitor:Lcom/android/server/content/AppIdleMonitor;

    #@ae
    .line 466
    new-instance v3, Landroid/content/IntentFilter;

    #@b0
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@b3
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@b6
    .line 467
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    #@b8
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@bb
    .line 469
    if-nez p2, :cond_0

    #@bd
    .line 470
    new-instance v3, Landroid/content/IntentFilter;

    #@bf
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    #@c2
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@c5
    .line 471
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    #@c7
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@ca
    .line 472
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    #@cc
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@cf
    .line 475
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    #@d1
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_LOW"

    #@d4
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@d7
    .line 476
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_OK"

    #@da
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@dd
    .line 477
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@df
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e2
    .line 479
    new-instance v3, Landroid/content/IntentFilter;

    #@e4
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@e7
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@ea
    .line 480
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    #@ec
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@ef
    .line 482
    new-instance v3, Landroid/content/IntentFilter;

    #@f1
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    #@f4
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@f7
    .line 483
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x64

    #@f9
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@fc
    .line 484
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    #@fe
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@101
    .line 486
    new-instance v3, Landroid/content/IntentFilter;

    #@103
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@106
    .line 487
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@109
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10c
    .line 488
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    #@10f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@112
    .line 489
    const-string/jumbo v0, "android.intent.action.USER_STOPPING"

    #@115
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@118
    .line 490
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@11a
    .line 491
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@11c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11e
    move-object v5, v4

    #@11f
    .line 490
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@122
    .line 493
    if-nez p2, :cond_4

    #@124
    .line 495
    const-string/jumbo v0, "notification"

    #@127
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12a
    move-result-object v0

    #@12b
    .line 494
    check-cast v0, Landroid/app/NotificationManager;

    #@12d
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    #@12f
    .line 496
    new-instance v0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;

    #@131
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    #@134
    .line 497
    new-instance v1, Landroid/content/IntentFilter;

    #@136
    const-string/jumbo v2, "android.content.syncmanager.SYNC_ALARM"

    #@139
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@13c
    .line 496
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@13f
    .line 501
    :goto_0
    const-string/jumbo v0, "power"

    #@142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@145
    move-result-object v0

    #@146
    check-cast v0, Landroid/os/PowerManager;

    #@148
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@14a
    .line 502
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@14c
    const-string/jumbo v1, "user"

    #@14f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@152
    move-result-object v0

    #@153
    check-cast v0, Landroid/os/UserManager;

    #@155
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    #@157
    .line 504
    const-string/jumbo v0, "batterystats"

    #@15a
    .line 503
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@15d
    move-result-object v0

    #@15e
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@161
    move-result-object v0

    #@162
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@164
    .line 510
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@166
    .line 511
    const-string/jumbo v1, "SyncManagerHandleSyncAlarm"

    #@169
    .line 510
    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@16c
    move-result-object v0

    #@16d
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16f
    .line 512
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    #@171
    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@174
    .line 519
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    #@176
    .line 520
    const-string/jumbo v1, "SyncLoopWakeLock"

    #@179
    .line 519
    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@17c
    move-result-object v0

    #@17d
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17f
    .line 521
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@181
    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@184
    .line 523
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@186
    .line 524
    new-instance v1, Lcom/android/server/content/SyncManager$10;

    #@188
    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    #@18b
    .line 523
    invoke-virtual {v0, v7, v1}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    #@18e
    .line 532
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    #@191
    move-result v0

    #@192
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@194
    .line 533
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@196
    if-nez v0, :cond_2

    #@198
    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19b
    move-result-object v12

    #@19c
    .line 536
    .local v12, "resolver":Landroid/content/ContentResolver;
    new-instance v11, Lcom/android/server/content/SyncManager$11;

    #@19e
    invoke-direct {v11, p0, v4, v12}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    #@1a1
    .line 546
    .local v11, "provisionedObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@1a3
    monitor-enter v1

    #@1a4
    .line 548
    :try_start_0
    const-string/jumbo v0, "device_provisioned"

    #@1a7
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1aa
    move-result-object v0

    #@1ab
    .line 549
    const/4 v2, 0x0

    #@1ac
    .line 547
    invoke-virtual {v12, v0, v2, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1af
    .line 554
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@1b1
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    #@1b4
    move-result v2

    #@1b5
    or-int/2addr v0, v2

    #@1b6
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@1b8
    .line 555
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    #@1ba
    if-eqz v0, :cond_1

    #@1bc
    .line 556
    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1bf
    :cond_1
    monitor-exit v1

    #@1c0
    .line 561
    .end local v11    # "provisionedObserver":Landroid/database/ContentObserver;
    .end local v12    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    if-nez p2, :cond_3

    #@1c2
    .line 563
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@1c4
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    #@1c6
    .line 564
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1c8
    .line 565
    new-instance v8, Landroid/content/IntentFilter;

    #@1ca
    const-string/jumbo v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    #@1cd
    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1d0
    move-object v9, v4

    #@1d1
    move-object v10, v4

    #@1d2
    .line 563
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1d5
    .line 570
    :cond_3
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1d7
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getSyncRandomOffset()I

    #@1da
    move-result v0

    #@1db
    mul-int/lit16 v0, v0, 0x3e8

    #@1dd
    iput v0, p0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    #@1df
    .line 421
    return-void

    #@1e0
    .line 499
    :cond_4
    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    #@1e2
    goto/16 :goto_0

    #@1e4
    .line 546
    .restart local v11    # "provisionedObserver":Landroid/database/ContentObserver;
    .restart local v12    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    #@1e5
    monitor-exit v1

    #@1e6
    throw v0
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    .locals 6
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 1023
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@4
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6
    move-wide v4, v2

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@a
    .line 1026
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@c
    monitor-enter v1

    #@d
    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@f
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@11
    const-wide/16 v4, 0x0

    #@13
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/content/SyncQueue;->onBackoffChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 1022
    return-void

    #@18
    .line 1026
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 306
    const/4 v0, 0x0

    #@1
    .line 307
    .local v0, "found":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 308
    aget-object v2, p1, v1

    #@7
    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@9
    if-ne v2, p3, :cond_1

    #@b
    .line 309
    aget-object v2, p1, v1

    #@d
    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@f
    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    .line 308
    if-eqz v2, :cond_1

    #@15
    .line 310
    const/4 v0, 0x1

    #@16
    .line 314
    :cond_0
    return v0

    #@17
    .line 307
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0
.end method

.method private doDatabaseCleanup()V
    .locals 5

    #@0
    .prologue
    .line 340
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
    .line 342
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 343
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@1e
    move-result-object v3

    #@1f
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@21
    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    #@24
    move-result-object v0

    #@25
    .line 344
    .local v0, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@27
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@29
    invoke-virtual {v3, v0, v4}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    #@2c
    goto :goto_0

    #@2d
    .line 339
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
    .line 1661
    const-string/jumbo v0, "Success ("

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b
    .line 1662
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@d
    if-lez v0, :cond_0

    #@f
    .line 1663
    const-string/jumbo v0, " for "

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@17
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    #@1a
    .line 1664
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
    .line 1666
    :cond_0
    const-string/jumbo v0, ") Failure ("

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@34
    .line 1667
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@36
    if-lez v0, :cond_1

    #@38
    .line 1668
    const-string/jumbo v0, " for "

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@40
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    #@43
    .line 1669
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
    .line 1671
    :cond_1
    const-string/jumbo v0, ")"

    #@55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 1660
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
    .line 1945
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@4
    invoke-virtual {v7}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@7
    move-result-object v3

    #@8
    .line 1946
    .local v3, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v3, :cond_6

    #@a
    aget-object v7, v3, v8

    #@c
    if-eqz v7, :cond_6

    #@e
    .line 1947
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@11
    .line 1948
    const-string/jumbo v7, "Sync Statistics"

    #@14
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 1949
    const-string/jumbo v7, "  Today:  "

    #@1a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    aget-object v7, v3, v8

    #@1f
    invoke-direct {p0, p1, v7}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    #@22
    .line 1950
    aget-object v7, v3, v8

    #@24
    iget v5, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@26
    .line 1955
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
    .line 1956
    aget-object v2, v3, v4

    #@2e
    .line 1957
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_3

    #@30
    .line 1966
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_0
    move v6, v5

    #@31
    .line 1967
    .local v6, "weekDay":I
    :cond_1
    :goto_1
    array-length v7, v3

    #@32
    if-ge v4, v7, :cond_6

    #@34
    .line 1968
    const/4 v0, 0x0

    #@35
    .line 1969
    .local v0, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v6, v6, -0x7

    #@37
    .line 1970
    .end local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :goto_2
    array-length v7, v3

    #@38
    if-ge v4, v7, :cond_2

    #@3a
    .line 1971
    aget-object v2, v3, v4

    #@3c
    .line 1972
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_4

    #@3e
    .line 1973
    array-length v4, v3

    #@3f
    .line 1988
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v0, :cond_1

    #@41
    .line 1989
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
    .line 1990
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    #@57
    goto :goto_1

    #@58
    .line 1958
    .end local v6    # "weekDay":I
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@5a
    sub-int v1, v5, v7

    #@5c
    .line 1959
    .local v1, "delta":I
    if-gt v1, v12, :cond_0

    #@5e
    .line 1961
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
    .line 1962
    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    #@70
    .line 1955
    add-int/lit8 v4, v4, 0x1

    #@72
    goto :goto_0

    #@73
    .line 1976
    .end local v1    # "delta":I
    .restart local v6    # "weekDay":I
    :cond_4
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@75
    sub-int v1, v6, v7

    #@77
    .line 1977
    .restart local v1    # "delta":I
    if-gt v1, v12, :cond_2

    #@79
    .line 1978
    add-int/lit8 v4, v4, 0x1

    #@7b
    .line 1980
    if-nez v0, :cond_5

    #@7d
    .line 1981
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@7f
    invoke-direct {v0, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    #@82
    .line 1983
    :cond_5
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@84
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@86
    add-int/2addr v7, v8

    #@87
    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@89
    .line 1984
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@8b
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@8d
    add-long/2addr v8, v10

    #@8e
    iput-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@90
    .line 1985
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@92
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@94
    add-int/2addr v7, v8

    #@95
    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@97
    .line 1986
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
    .line 1944
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
    .line 1681
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
    .line 1682
    .local v28, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v28, :cond_1b

    #@c
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v54

    #@10
    if-lez v54, :cond_1b

    #@12
    .line 1683
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@15
    move-result-object v11

    #@16
    .line 1684
    .local v11, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v50, 0x0

    #@18
    .line 1685
    .local v50, "totalElapsedTime":J
    const-wide/16 v52, 0x0

    #@1a
    .line 1686
    .local v52, "totalTimes":J
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v4

    #@1e
    .line 1688
    .local v4, "N":I
    const/16 v34, 0x0

    #@20
    .line 1689
    .local v34, "maxAuthority":I
    const/16 v33, 0x0

    #@22
    .line 1690
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
    if-eqz v54, :cond_7

    #@2c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v26

    #@30
    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@32
    .line 1692
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
    .line 1695
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_6

    #@44
    .line 1696
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@46
    move-object/from16 v54, v0

    #@48
    move-object/from16 v0, v54

    #@4a
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@4c
    move/from16 v54, v0

    #@4e
    if-eqz v54, :cond_4

    #@50
    .line 1697
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@52
    move-object/from16 v54, v0

    #@54
    move-object/from16 v0, v54

    #@56
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@58
    .line 1698
    .local v12, "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5f
    move-object/from16 v55, v0

    #@61
    move-object/from16 v0, v55

    #@63
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@65
    move-object/from16 v55, v0

    #@67
    move-object/from16 v0, v55

    #@69
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@6b
    move-object/from16 v55, v0

    #@6d
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v54

    #@71
    const-string/jumbo v55, "/"

    #@74
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v54

    #@78
    .line 1699
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7a
    move-object/from16 v55, v0

    #@7c
    move-object/from16 v0, v55

    #@7e
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@80
    move-object/from16 v55, v0

    #@82
    move-object/from16 v0, v55

    #@84
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@86
    move-object/from16 v55, v0

    #@88
    .line 1698
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v54

    #@8c
    .line 1700
    const-string/jumbo v55, " u"

    #@8f
    .line 1698
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v54

    #@93
    .line 1700
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@95
    move-object/from16 v55, v0

    #@97
    move-object/from16 v0, v55

    #@99
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@9b
    move/from16 v55, v0

    #@9d
    .line 1698
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v54

    #@a1
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    .line 1715
    .local v6, "accountKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@a8
    move-result v32

    #@a9
    .line 1716
    .local v32, "length":I
    move/from16 v0, v32

    #@ab
    move/from16 v1, v34

    #@ad
    if-le v0, v1, :cond_0

    #@af
    .line 1717
    move/from16 v34, v32

    #@b1
    .line 1719
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@b4
    move-result v32

    #@b5
    .line 1720
    move/from16 v0, v32

    #@b7
    move/from16 v1, v33

    #@b9
    if-le v0, v1, :cond_1

    #@bb
    .line 1721
    move/from16 v33, v32

    #@bd
    .line 1724
    :cond_1
    move-object/from16 v0, v26

    #@bf
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    #@c1
    move-wide/from16 v20, v0

    #@c3
    .line 1725
    .local v20, "elapsedTime":J
    add-long v50, v50, v20

    #@c5
    .line 1726
    const-wide/16 v54, 0x1

    #@c7
    add-long v52, v52, v54

    #@c9
    .line 1727
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@cc
    move-result-object v13

    #@cd
    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@cf
    .line 1728
    .local v13, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    if-nez v13, :cond_2

    #@d1
    .line 1729
    new-instance v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@d3
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    const/16 v54, 0x0

    #@d5
    move-object/from16 v0, v54

    #@d7
    invoke-direct {v13, v12, v0}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)V

    #@da
    .line 1730
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    .line 1732
    :cond_2
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@df
    move-wide/from16 v54, v0

    #@e1
    add-long v54, v54, v20

    #@e3
    move-wide/from16 v0, v54

    #@e5
    iput-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@e7
    .line 1733
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@e9
    move/from16 v54, v0

    #@eb
    add-int/lit8 v54, v54, 0x1

    #@ed
    move/from16 v0, v54

    #@ef
    iput v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@f1
    .line 1734
    iget-object v7, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    #@f3
    .line 1735
    .local v7, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    move-result-object v8

    #@f7
    check-cast v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    #@f9
    .line 1736
    .local v8, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v8, :cond_3

    #@fb
    .line 1737
    new-instance v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    #@fd
    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    const/16 v54, 0x0

    #@ff
    move-object/from16 v0, v54

    #@101
    invoke-direct {v8, v6, v0}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;)V

    #@104
    .line 1738
    .restart local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@107
    .line 1740
    :cond_3
    iget-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    #@109
    move-wide/from16 v54, v0

    #@10b
    add-long v54, v54, v20

    #@10d
    move-wide/from16 v0, v54

    #@10f
    iput-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    #@111
    .line 1741
    iget v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    #@113
    move/from16 v54, v0

    #@115
    add-int/lit8 v54, v54, 0x1

    #@117
    move/from16 v0, v54

    #@119
    iput v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    #@11b
    goto/16 :goto_0

    #@11d
    .line 1701
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v20    # "elapsedTime":J
    .end local v32    # "length":I
    :cond_4
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@11f
    move-object/from16 v54, v0

    #@121
    move-object/from16 v0, v54

    #@123
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@125
    move/from16 v54, v0

    #@127
    if-eqz v54, :cond_5

    #@129
    .line 1702
    new-instance v54, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@130
    move-object/from16 v55, v0

    #@132
    move-object/from16 v0, v55

    #@134
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@136
    move-object/from16 v55, v0

    #@138
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@13b
    move-result-object v55

    #@13c
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v54

    #@140
    const-string/jumbo v55, "/"

    #@143
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v54

    #@147
    .line 1703
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@149
    move-object/from16 v55, v0

    #@14b
    move-object/from16 v0, v55

    #@14d
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@14f
    move-object/from16 v55, v0

    #@151
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@154
    move-result-object v55

    #@155
    .line 1702
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v54

    #@159
    .line 1704
    const-string/jumbo v55, " u"

    #@15c
    .line 1702
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v54

    #@160
    .line 1704
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@162
    move-object/from16 v55, v0

    #@164
    move-object/from16 v0, v55

    #@166
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@168
    move/from16 v55, v0

    #@16a
    .line 1702
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v54

    #@16e
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v12

    #@172
    .line 1705
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "no account"

    #@175
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_1

    #@177
    .line 1707
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v12, "Unknown"

    #@17a
    .line 1708
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@17d
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_1

    #@17f
    .line 1711
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v12, "Unknown"

    #@182
    .line 1712
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@185
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_1

    #@187
    .line 1745
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_7
    const-wide/16 v54, 0x0

    #@189
    cmp-long v54, v50, v54

    #@18b
    if-lez v54, :cond_9

    #@18d
    .line 1746
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@190
    .line 1747
    const-string/jumbo v54, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    #@193
    const/16 v55, 0x2

    #@195
    move/from16 v0, v55

    #@197
    new-array v0, v0, [Ljava/lang/Object;

    #@199
    move-object/from16 v55, v0

    #@19b
    .line 1749
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19e
    move-result-object v56

    #@19f
    const/16 v57, 0x0

    #@1a1
    aput-object v56, v55, v57

    #@1a3
    const-wide/16 v56, 0x3e8

    #@1a5
    div-long v56, v50, v56

    #@1a7
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1aa
    move-result-object v56

    #@1ab
    const/16 v57, 0x1

    #@1ad
    aput-object v56, v55, v57

    #@1af
    .line 1747
    move-object/from16 v0, p1

    #@1b1
    move-object/from16 v1, v54

    #@1b3
    move-object/from16 v2, v55

    #@1b5
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@1b8
    .line 1752
    new-instance v43, Ljava/util/ArrayList;

    #@1ba
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1bd
    move-result-object v54

    #@1be
    move-object/from16 v0, v43

    #@1c0
    move-object/from16 v1, v54

    #@1c2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1c5
    .line 1753
    .local v43, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v54, Lcom/android/server/content/SyncManager$13;

    #@1c7
    move-object/from16 v0, v54

    #@1c9
    move-object/from16 v1, p0

    #@1cb
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;)V

    #@1ce
    move-object/from16 v0, v43

    #@1d0
    move-object/from16 v1, v54

    #@1d2
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1d5
    .line 1765
    add-int/lit8 v54, v33, 0x3

    #@1d7
    move/from16 v0, v34

    #@1d9
    move/from16 v1, v54

    #@1db
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1de
    move-result v35

    #@1df
    .line 1766
    .local v35, "maxLength":I
    add-int/lit8 v54, v35, 0x4

    #@1e1
    add-int/lit8 v54, v54, 0x2

    #@1e3
    add-int/lit8 v54, v54, 0xa

    #@1e5
    add-int/lit8 v37, v54, 0xb

    #@1e7
    .line 1767
    .local v37, "padLength":I
    move/from16 v0, v37

    #@1e9
    new-array v15, v0, [C

    #@1eb
    .line 1768
    .local v15, "chars":[C
    const/16 v54, 0x2d

    #@1ed
    move/from16 v0, v54

    #@1ef
    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([CC)V

    #@1f2
    .line 1769
    new-instance v39, Ljava/lang/String;

    #@1f4
    move-object/from16 v0, v39

    #@1f6
    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([C)V

    #@1f9
    .line 1772
    .local v39, "separator":Ljava/lang/String;
    const-string/jumbo v54, "  %%-%ds: %%-9s  %%-11s\n"

    #@1fc
    const/16 v55, 0x1

    #@1fe
    move/from16 v0, v55

    #@200
    new-array v0, v0, [Ljava/lang/Object;

    #@202
    move-object/from16 v55, v0

    #@204
    add-int/lit8 v56, v35, 0x2

    #@206
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@209
    move-result-object v56

    #@20a
    const/16 v57, 0x0

    #@20c
    aput-object v56, v55, v57

    #@20e
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@211
    move-result-object v9

    #@212
    .line 1774
    .local v9, "authorityFormat":Ljava/lang/String;
    const-string/jumbo v54, "    %%-%ds:   %%-9s  %%-11s\n"

    #@215
    const/16 v55, 0x1

    #@217
    move/from16 v0, v55

    #@219
    new-array v0, v0, [Ljava/lang/Object;

    #@21b
    move-object/from16 v55, v0

    #@21d
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@220
    move-result-object v56

    #@221
    const/16 v57, 0x0

    #@223
    aput-object v56, v55, v57

    #@225
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@228
    move-result-object v5

    #@229
    .line 1776
    .local v5, "accountFormat":Ljava/lang/String;
    move-object/from16 v0, p1

    #@22b
    move-object/from16 v1, v39

    #@22d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@230
    .line 1777
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@233
    move-result-object v14

    #@234
    .local v14, "authoritySyncStats$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@237
    move-result v54

    #@238
    if-eqz v54, :cond_9

    #@23a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23d
    move-result-object v13

    #@23e
    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    #@240
    .line 1778
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    #@242
    move-object/from16 v36, v0

    #@244
    .line 1784
    .local v36, "name":Ljava/lang/String;
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    #@246
    move-wide/from16 v20, v0

    #@248
    .line 1785
    .restart local v20    # "elapsedTime":J
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    #@24a
    move/from16 v48, v0

    #@24c
    .line 1786
    .local v48, "times":I
    const-string/jumbo v54, "%ds/%d%%"

    #@24f
    const/16 v55, 0x2

    #@251
    move/from16 v0, v55

    #@253
    new-array v0, v0, [Ljava/lang/Object;

    #@255
    move-object/from16 v55, v0

    #@257
    .line 1787
    const-wide/16 v56, 0x3e8

    #@259
    div-long v56, v20, v56

    #@25b
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25e
    move-result-object v56

    #@25f
    const/16 v57, 0x0

    #@261
    aput-object v56, v55, v57

    #@263
    .line 1788
    const-wide/16 v56, 0x64

    #@265
    mul-long v56, v56, v20

    #@267
    div-long v56, v56, v50

    #@269
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26c
    move-result-object v56

    #@26d
    const/16 v57, 0x1

    #@26f
    aput-object v56, v55, v57

    #@271
    .line 1786
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@274
    move-result-object v47

    #@275
    .line 1789
    .local v47, "timeStr":Ljava/lang/String;
    const-string/jumbo v54, "%d/%d%%"

    #@278
    const/16 v55, 0x2

    #@27a
    move/from16 v0, v55

    #@27c
    new-array v0, v0, [Ljava/lang/Object;

    #@27e
    move-object/from16 v55, v0

    #@280
    .line 1790
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@283
    move-result-object v56

    #@284
    const/16 v57, 0x0

    #@286
    aput-object v56, v55, v57

    #@288
    .line 1791
    mul-int/lit8 v56, v48, 0x64

    #@28a
    move/from16 v0, v56

    #@28c
    int-to-long v0, v0

    #@28d
    move-wide/from16 v56, v0

    #@28f
    div-long v56, v56, v52

    #@291
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@294
    move-result-object v56

    #@295
    const/16 v57, 0x1

    #@297
    aput-object v56, v55, v57

    #@299
    .line 1789
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29c
    move-result-object v49

    #@29d
    .line 1792
    .local v49, "timesStr":Ljava/lang/String;
    const/16 v54, 0x3

    #@29f
    move/from16 v0, v54

    #@2a1
    new-array v0, v0, [Ljava/lang/Object;

    #@2a3
    move-object/from16 v54, v0

    #@2a5
    const/16 v55, 0x0

    #@2a7
    aput-object v36, v54, v55

    #@2a9
    const/16 v55, 0x1

    #@2ab
    aput-object v49, v54, v55

    #@2ad
    const/16 v55, 0x2

    #@2af
    aput-object v47, v54, v55

    #@2b1
    move-object/from16 v0, p1

    #@2b3
    move-object/from16 v1, v54

    #@2b5
    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@2b8
    .line 1795
    new-instance v42, Ljava/util/ArrayList;

    #@2ba
    .line 1796
    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    #@2bc
    move-object/from16 v54, v0

    #@2be
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@2c1
    move-result-object v54

    #@2c2
    .line 1795
    move-object/from16 v0, v42

    #@2c4
    move-object/from16 v1, v54

    #@2c6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2c9
    .line 1797
    .local v42, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v54, Lcom/android/server/content/SyncManager$14;

    #@2cb
    move-object/from16 v0, v54

    #@2cd
    move-object/from16 v1, p0

    #@2cf
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    #@2d2
    move-object/from16 v0, v42

    #@2d4
    move-object/from16 v1, v54

    #@2d6
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2d9
    .line 1808
    invoke-interface/range {v42 .. v42}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2dc
    move-result-object v45

    #@2dd
    .local v45, "stats$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    #@2e0
    move-result v54

    #@2e1
    if-eqz v54, :cond_8

    #@2e3
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e6
    move-result-object v44

    #@2e7
    check-cast v44, Lcom/android/server/content/SyncManager$AccountSyncStats;

    #@2e9
    .line 1809
    .local v44, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move-object/from16 v0, v44

    #@2eb
    iget-wide v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    #@2ed
    move-wide/from16 v20, v0

    #@2ef
    .line 1810
    move-object/from16 v0, v44

    #@2f1
    iget v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    #@2f3
    move/from16 v48, v0

    #@2f5
    .line 1811
    const-string/jumbo v54, "%ds/%d%%"

    #@2f8
    const/16 v55, 0x2

    #@2fa
    move/from16 v0, v55

    #@2fc
    new-array v0, v0, [Ljava/lang/Object;

    #@2fe
    move-object/from16 v55, v0

    #@300
    .line 1812
    const-wide/16 v56, 0x3e8

    #@302
    div-long v56, v20, v56

    #@304
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@307
    move-result-object v56

    #@308
    const/16 v57, 0x0

    #@30a
    aput-object v56, v55, v57

    #@30c
    .line 1813
    const-wide/16 v56, 0x64

    #@30e
    mul-long v56, v56, v20

    #@310
    div-long v56, v56, v50

    #@312
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@315
    move-result-object v56

    #@316
    const/16 v57, 0x1

    #@318
    aput-object v56, v55, v57

    #@31a
    .line 1811
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31d
    move-result-object v47

    #@31e
    .line 1814
    const-string/jumbo v54, "%d/%d%%"

    #@321
    const/16 v55, 0x2

    #@323
    move/from16 v0, v55

    #@325
    new-array v0, v0, [Ljava/lang/Object;

    #@327
    move-object/from16 v55, v0

    #@329
    .line 1815
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32c
    move-result-object v56

    #@32d
    const/16 v57, 0x0

    #@32f
    aput-object v56, v55, v57

    #@331
    .line 1816
    mul-int/lit8 v56, v48, 0x64

    #@333
    move/from16 v0, v56

    #@335
    int-to-long v0, v0

    #@336
    move-wide/from16 v56, v0

    #@338
    div-long v56, v56, v52

    #@33a
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@33d
    move-result-object v56

    #@33e
    const/16 v57, 0x1

    #@340
    aput-object v56, v55, v57

    #@342
    .line 1814
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@345
    move-result-object v49

    #@346
    .line 1817
    const/16 v54, 0x3

    #@348
    move/from16 v0, v54

    #@34a
    new-array v0, v0, [Ljava/lang/Object;

    #@34c
    move-object/from16 v54, v0

    #@34e
    move-object/from16 v0, v44

    #@350
    iget-object v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    #@352
    move-object/from16 v55, v0

    #@354
    const/16 v56, 0x0

    #@356
    aput-object v55, v54, v56

    #@358
    const/16 v55, 0x1

    #@35a
    aput-object v49, v54, v55

    #@35c
    const/16 v55, 0x2

    #@35e
    aput-object v47, v54, v55

    #@360
    move-object/from16 v0, p1

    #@362
    move-object/from16 v1, v54

    #@364
    invoke-virtual {v0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@367
    goto/16 :goto_3

    #@369
    .line 1819
    .end local v44    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    :cond_8
    move-object/from16 v0, p1

    #@36b
    move-object/from16 v1, v39

    #@36d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@370
    goto/16 :goto_2

    #@372
    .line 1823
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
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@375
    .line 1824
    const-string/jumbo v54, "Recent Sync History"

    #@378
    move-object/from16 v0, p1

    #@37a
    move-object/from16 v1, v54

    #@37c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37f
    .line 1825
    new-instance v54, Ljava/lang/StringBuilder;

    #@381
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@384
    const-string/jumbo v55, "  %-"

    #@387
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38a
    move-result-object v54

    #@38b
    move-object/from16 v0, v54

    #@38d
    move/from16 v1, v33

    #@38f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@392
    move-result-object v54

    #@393
    const-string/jumbo v55, "s  %-"

    #@396
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v54

    #@39a
    move-object/from16 v0, v54

    #@39c
    move/from16 v1, v34

    #@39e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a1
    move-result-object v54

    #@3a2
    const-string/jumbo v55, "s %s\n"

    #@3a5
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a8
    move-result-object v54

    #@3a9
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ac
    move-result-object v24

    #@3ad
    .line 1826
    .local v24, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@3b0
    move-result-object v31

    #@3b1
    .line 1827
    .local v31, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    #@3b3
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@3b5
    move-object/from16 v54, v0

    #@3b7
    invoke-virtual/range {v54 .. v54}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3ba
    move-result-object v38

    #@3bb
    .line 1828
    .local v38, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x0

    #@3bd
    .local v25, "i":I
    :goto_4
    move/from16 v0, v25

    #@3bf
    if-ge v0, v4, :cond_15

    #@3c1
    .line 1829
    move-object/from16 v0, v28

    #@3c3
    move/from16 v1, v25

    #@3c5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c8
    move-result-object v26

    #@3c9
    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@3cb
    .line 1831
    .restart local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    #@3cd
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@3cf
    move-object/from16 v54, v0

    #@3d1
    move-object/from16 v0, v26

    #@3d3
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@3d5
    move/from16 v55, v0

    #@3d7
    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@3da
    move-result-object v10

    #@3db
    .line 1834
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_f

    #@3dd
    .line 1835
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3df
    move-object/from16 v54, v0

    #@3e1
    move-object/from16 v0, v54

    #@3e3
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@3e5
    move/from16 v54, v0

    #@3e7
    if-eqz v54, :cond_d

    #@3e9
    .line 1836
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3eb
    move-object/from16 v54, v0

    #@3ed
    move-object/from16 v0, v54

    #@3ef
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@3f1
    .line 1837
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    #@3f3
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@3f6
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3f8
    move-object/from16 v55, v0

    #@3fa
    move-object/from16 v0, v55

    #@3fc
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3fe
    move-object/from16 v55, v0

    #@400
    move-object/from16 v0, v55

    #@402
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@404
    move-object/from16 v55, v0

    #@406
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@409
    move-result-object v54

    #@40a
    const-string/jumbo v55, "/"

    #@40d
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@410
    move-result-object v54

    #@411
    .line 1838
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@413
    move-object/from16 v55, v0

    #@415
    move-object/from16 v0, v55

    #@417
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@419
    move-object/from16 v55, v0

    #@41b
    move-object/from16 v0, v55

    #@41d
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@41f
    move-object/from16 v55, v0

    #@421
    .line 1837
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@424
    move-result-object v54

    #@425
    .line 1839
    const-string/jumbo v55, " u"

    #@428
    .line 1837
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v54

    #@42c
    .line 1839
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@42e
    move-object/from16 v55, v0

    #@430
    move-object/from16 v0, v55

    #@432
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@434
    move/from16 v55, v0

    #@436
    .line 1837
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@439
    move-result-object v54

    #@43a
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43d
    move-result-object v6

    #@43e
    .line 1853
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v26

    #@440
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    #@442
    move-wide/from16 v20, v0

    #@444
    .line 1854
    .restart local v20    # "elapsedTime":J
    new-instance v46, Landroid/text/format/Time;

    #@446
    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    #@449
    .line 1855
    .local v46, "time":Landroid/text/format/Time;
    move-object/from16 v0, v26

    #@44b
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@44d
    move-wide/from16 v22, v0

    #@44f
    .line 1856
    .local v22, "eventTime":J
    move-object/from16 v0, v46

    #@451
    move-wide/from16 v1, v22

    #@453
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    #@456
    .line 1858
    new-instance v54, Ljava/lang/StringBuilder;

    #@458
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@45b
    move-object/from16 v0, v54

    #@45d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@460
    move-result-object v54

    #@461
    const-string/jumbo v55, "/"

    #@464
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@467
    move-result-object v54

    #@468
    move-object/from16 v0, v54

    #@46a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46d
    move-result-object v54

    #@46e
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@471
    move-result-object v29

    #@472
    .line 1859
    .local v29, "key":Ljava/lang/String;
    move-object/from16 v0, v31

    #@474
    move-object/from16 v1, v29

    #@476
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@479
    move-result-object v30

    #@47a
    check-cast v30, Ljava/lang/Long;

    #@47c
    .line 1861
    .local v30, "lastEventTime":Ljava/lang/Long;
    if-nez v30, :cond_10

    #@47e
    .line 1862
    const-string/jumbo v18, ""

    #@481
    .line 1875
    .local v18, "diffString":Ljava/lang/String;
    :goto_6
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@484
    move-result-object v54

    #@485
    move-object/from16 v0, v31

    #@487
    move-object/from16 v1, v29

    #@489
    move-object/from16 v2, v54

    #@48b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48e
    .line 1877
    const-string/jumbo v54, "  #%-3d: %s %8s  %5.1fs  %8s"

    #@491
    const/16 v55, 0x5

    #@493
    move/from16 v0, v55

    #@495
    new-array v0, v0, [Ljava/lang/Object;

    #@497
    move-object/from16 v55, v0

    #@499
    .line 1878
    add-int/lit8 v56, v25, 0x1

    #@49b
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49e
    move-result-object v56

    #@49f
    const/16 v57, 0x0

    #@4a1
    aput-object v56, v55, v57

    #@4a3
    .line 1879
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@4a6
    move-result-object v56

    #@4a7
    const/16 v57, 0x1

    #@4a9
    aput-object v56, v55, v57

    #@4ab
    .line 1880
    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@4ad
    move-object/from16 v0, v26

    #@4af
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@4b1
    move/from16 v57, v0

    #@4b3
    aget-object v56, v56, v57

    #@4b5
    const/16 v57, 0x2

    #@4b7
    aput-object v56, v55, v57

    #@4b9
    .line 1881
    move-wide/from16 v0, v20

    #@4bb
    long-to-float v0, v0

    #@4bc
    move/from16 v56, v0

    #@4be
    const/high16 v57, 0x447a0000    # 1000.0f

    #@4c0
    div-float v56, v56, v57

    #@4c2
    invoke-static/range {v56 .. v56}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4c5
    move-result-object v56

    #@4c6
    const/16 v57, 0x3

    #@4c8
    aput-object v56, v55, v57

    #@4ca
    .line 1882
    const/16 v56, 0x4

    #@4cc
    aput-object v18, v55, v56

    #@4ce
    .line 1877
    move-object/from16 v0, p1

    #@4d0
    move-object/from16 v1, v54

    #@4d2
    move-object/from16 v2, v55

    #@4d4
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@4d7
    .line 1883
    const/16 v54, 0x3

    #@4d9
    move/from16 v0, v54

    #@4db
    new-array v0, v0, [Ljava/lang/Object;

    #@4dd
    move-object/from16 v54, v0

    #@4df
    const/16 v55, 0x0

    #@4e1
    aput-object v6, v54, v55

    #@4e3
    const/16 v55, 0x1

    #@4e5
    aput-object v12, v54, v55

    #@4e7
    .line 1884
    move-object/from16 v0, v26

    #@4e9
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    #@4eb
    move/from16 v55, v0

    #@4ed
    move-object/from16 v0, v38

    #@4ef
    move/from16 v1, v55

    #@4f1
    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    #@4f4
    move-result-object v55

    #@4f5
    const/16 v56, 0x2

    #@4f7
    aput-object v55, v54, v56

    #@4f9
    .line 1883
    move-object/from16 v0, p1

    #@4fb
    move-object/from16 v1, v24

    #@4fd
    move-object/from16 v2, v54

    #@4ff
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@502
    .line 1886
    move-object/from16 v0, v26

    #@504
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@506
    move/from16 v54, v0

    #@508
    const/16 v55, 0x1

    #@50a
    move/from16 v0, v54

    #@50c
    move/from16 v1, v55

    #@50e
    if-ne v0, v1, :cond_a

    #@510
    .line 1887
    move-object/from16 v0, v26

    #@512
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    #@514
    move-wide/from16 v54, v0

    #@516
    const-wide/16 v56, 0x0

    #@518
    cmp-long v54, v54, v56

    #@51a
    if-eqz v54, :cond_13

    #@51c
    .line 1889
    :cond_a
    :goto_7
    const-string/jumbo v54, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    #@51f
    const/16 v55, 0x3

    #@521
    move/from16 v0, v55

    #@523
    new-array v0, v0, [Ljava/lang/Object;

    #@525
    move-object/from16 v55, v0

    #@527
    .line 1890
    move-object/from16 v0, v26

    #@529
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@52b
    move/from16 v56, v0

    #@52d
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@530
    move-result-object v56

    #@531
    const/16 v57, 0x0

    #@533
    aput-object v56, v55, v57

    #@535
    .line 1891
    move-object/from16 v0, v26

    #@537
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    #@539
    move-wide/from16 v56, v0

    #@53b
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53e
    move-result-object v56

    #@53f
    const/16 v57, 0x1

    #@541
    aput-object v56, v55, v57

    #@543
    .line 1892
    move-object/from16 v0, v26

    #@545
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    #@547
    move-wide/from16 v56, v0

    #@549
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@54c
    move-result-object v56

    #@54d
    const/16 v57, 0x2

    #@54f
    aput-object v56, v55, v57

    #@551
    .line 1889
    move-object/from16 v0, p1

    #@553
    move-object/from16 v1, v54

    #@555
    move-object/from16 v2, v55

    #@557
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@55a
    .line 1894
    :cond_b
    move-object/from16 v0, v26

    #@55c
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@55e
    move-object/from16 v54, v0

    #@560
    if-eqz v54, :cond_c

    #@562
    .line 1895
    const-string/jumbo v54, "success"

    #@565
    move-object/from16 v0, v26

    #@567
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@569
    move-object/from16 v55, v0

    #@56b
    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56e
    move-result v54

    #@56f
    if-eqz v54, :cond_14

    #@571
    .line 1828
    :cond_c
    :goto_8
    add-int/lit8 v25, v25, 0x1

    #@573
    goto/16 :goto_4

    #@575
    .line 1840
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v18    # "diffString":Ljava/lang/String;
    .end local v20    # "elapsedTime":J
    .end local v22    # "eventTime":J
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_d
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@577
    move-object/from16 v54, v0

    #@579
    move-object/from16 v0, v54

    #@57b
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@57d
    move/from16 v54, v0

    #@57f
    if-eqz v54, :cond_e

    #@581
    .line 1841
    new-instance v54, Ljava/lang/StringBuilder;

    #@583
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@586
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@588
    move-object/from16 v55, v0

    #@58a
    move-object/from16 v0, v55

    #@58c
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@58e
    move-object/from16 v55, v0

    #@590
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@593
    move-result-object v55

    #@594
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@597
    move-result-object v54

    #@598
    const-string/jumbo v55, "/"

    #@59b
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59e
    move-result-object v54

    #@59f
    .line 1842
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5a1
    move-object/from16 v55, v0

    #@5a3
    move-object/from16 v0, v55

    #@5a5
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@5a7
    move-object/from16 v55, v0

    #@5a9
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@5ac
    move-result-object v55

    #@5ad
    .line 1841
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b0
    move-result-object v54

    #@5b1
    .line 1843
    const-string/jumbo v55, " u"

    #@5b4
    .line 1841
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b7
    move-result-object v54

    #@5b8
    .line 1843
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5ba
    move-object/from16 v55, v0

    #@5bc
    move-object/from16 v0, v55

    #@5be
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@5c0
    move/from16 v55, v0

    #@5c2
    .line 1841
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c5
    move-result-object v54

    #@5c6
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c9
    move-result-object v12

    #@5ca
    .line 1844
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "none"

    #@5cd
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    #@5cf
    .line 1846
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_e
    const-string/jumbo v12, "Unknown"

    #@5d2
    .line 1847
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@5d5
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    #@5d7
    .line 1850
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_f
    const-string/jumbo v12, "Unknown"

    #@5da
    .line 1851
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@5dd
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    #@5df
    .line 1864
    .restart local v20    # "elapsedTime":J
    .restart local v22    # "eventTime":J
    .restart local v29    # "key":Ljava/lang/String;
    .restart local v30    # "lastEventTime":Ljava/lang/Long;
    .restart local v46    # "time":Landroid/text/format/Time;
    :cond_10
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    #@5e2
    move-result-wide v54

    #@5e3
    sub-long v54, v54, v22

    #@5e5
    const-wide/16 v56, 0x3e8

    #@5e7
    div-long v16, v54, v56

    #@5e9
    .line 1865
    .local v16, "diff":J
    const-wide/16 v54, 0x3c

    #@5eb
    cmp-long v54, v16, v54

    #@5ed
    if-gez v54, :cond_11

    #@5ef
    .line 1866
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@5f2
    move-result-object v18

    #@5f3
    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    #@5f5
    .line 1867
    .end local v18    # "diffString":Ljava/lang/String;
    :cond_11
    const-wide/16 v54, 0xe10

    #@5f7
    cmp-long v54, v16, v54

    #@5f9
    if-gez v54, :cond_12

    #@5fb
    .line 1868
    const-string/jumbo v54, "%02d:%02d"

    #@5fe
    const/16 v55, 0x2

    #@600
    move/from16 v0, v55

    #@602
    new-array v0, v0, [Ljava/lang/Object;

    #@604
    move-object/from16 v55, v0

    #@606
    const-wide/16 v56, 0x3c

    #@608
    div-long v56, v16, v56

    #@60a
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@60d
    move-result-object v56

    #@60e
    const/16 v57, 0x0

    #@610
    aput-object v56, v55, v57

    #@612
    const-wide/16 v56, 0x3c

    #@614
    rem-long v56, v16, v56

    #@616
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@619
    move-result-object v56

    #@61a
    const/16 v57, 0x1

    #@61c
    aput-object v56, v55, v57

    #@61e
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@621
    move-result-object v18

    #@622
    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    #@624
    .line 1870
    .end local v18    # "diffString":Ljava/lang/String;
    :cond_12
    const-wide/16 v54, 0xe10

    #@626
    rem-long v40, v16, v54

    #@628
    .line 1871
    .local v40, "sec":J
    const-string/jumbo v54, "%02d:%02d:%02d"

    #@62b
    const/16 v55, 0x3

    #@62d
    move/from16 v0, v55

    #@62f
    new-array v0, v0, [Ljava/lang/Object;

    #@631
    move-object/from16 v55, v0

    #@633
    .line 1872
    const-wide/16 v56, 0xe10

    #@635
    div-long v56, v16, v56

    #@637
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@63a
    move-result-object v56

    #@63b
    const/16 v57, 0x0

    #@63d
    aput-object v56, v55, v57

    #@63f
    const-wide/16 v56, 0x3c

    #@641
    div-long v56, v40, v56

    #@643
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@646
    move-result-object v56

    #@647
    const/16 v57, 0x1

    #@649
    aput-object v56, v55, v57

    #@64b
    const-wide/16 v56, 0x3c

    #@64d
    rem-long v56, v40, v56

    #@64f
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@652
    move-result-object v56

    #@653
    const/16 v57, 0x2

    #@655
    aput-object v56, v55, v57

    #@657
    .line 1871
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@65a
    move-result-object v18

    #@65b
    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    #@65d
    .line 1888
    .end local v16    # "diff":J
    .end local v40    # "sec":J
    :cond_13
    move-object/from16 v0, v26

    #@65f
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    #@661
    move-wide/from16 v54, v0

    #@663
    const-wide/16 v56, 0x0

    #@665
    cmp-long v54, v54, v56

    #@667
    if-eqz v54, :cond_b

    #@669
    goto/16 :goto_7

    #@66b
    .line 1896
    :cond_14
    const-string/jumbo v54, "    mesg=%s\n"

    #@66e
    const/16 v55, 0x1

    #@670
    move/from16 v0, v55

    #@672
    new-array v0, v0, [Ljava/lang/Object;

    #@674
    move-object/from16 v55, v0

    #@676
    move-object/from16 v0, v26

    #@678
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@67a
    move-object/from16 v56, v0

    #@67c
    const/16 v57, 0x0

    #@67e
    aput-object v56, v55, v57

    #@680
    move-object/from16 v0, p1

    #@682
    move-object/from16 v1, v54

    #@684
    move-object/from16 v2, v55

    #@686
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@689
    goto/16 :goto_8

    #@68b
    .line 1899
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
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@68e
    .line 1900
    const-string/jumbo v54, "Recent Sync History Extras"

    #@691
    move-object/from16 v0, p1

    #@693
    move-object/from16 v1, v54

    #@695
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@698
    .line 1901
    const/16 v25, 0x0

    #@69a
    :goto_9
    move/from16 v0, v25

    #@69c
    if-ge v0, v4, :cond_1b

    #@69e
    .line 1902
    move-object/from16 v0, v28

    #@6a0
    move/from16 v1, v25

    #@6a2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6a5
    move-result-object v26

    #@6a6
    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@6a8
    .line 1903
    .restart local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, v26

    #@6aa
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    #@6ac
    move-object/from16 v19, v0

    #@6ae
    .line 1904
    .local v19, "extras":Landroid/os/Bundle;
    if-eqz v19, :cond_16

    #@6b0
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    #@6b3
    move-result v54

    #@6b4
    if-nez v54, :cond_17

    #@6b6
    .line 1901
    :cond_16
    :goto_a
    add-int/lit8 v25, v25, 0x1

    #@6b8
    goto :goto_9

    #@6b9
    .line 1908
    :cond_17
    move-object/from16 v0, p0

    #@6bb
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@6bd
    move-object/from16 v54, v0

    #@6bf
    move-object/from16 v0, v26

    #@6c1
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@6c3
    move/from16 v55, v0

    #@6c5
    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@6c8
    move-result-object v10

    #@6c9
    .line 1911
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_1a

    #@6cb
    .line 1912
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6cd
    move-object/from16 v54, v0

    #@6cf
    move-object/from16 v0, v54

    #@6d1
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@6d3
    move/from16 v54, v0

    #@6d5
    if-eqz v54, :cond_18

    #@6d7
    .line 1913
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6d9
    move-object/from16 v54, v0

    #@6db
    move-object/from16 v0, v54

    #@6dd
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@6df
    .line 1914
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    #@6e1
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@6e4
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6e6
    move-object/from16 v55, v0

    #@6e8
    move-object/from16 v0, v55

    #@6ea
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@6ec
    move-object/from16 v55, v0

    #@6ee
    move-object/from16 v0, v55

    #@6f0
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@6f2
    move-object/from16 v55, v0

    #@6f4
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f7
    move-result-object v54

    #@6f8
    const-string/jumbo v55, "/"

    #@6fb
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6fe
    move-result-object v54

    #@6ff
    .line 1915
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@701
    move-object/from16 v55, v0

    #@703
    move-object/from16 v0, v55

    #@705
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@707
    move-object/from16 v55, v0

    #@709
    move-object/from16 v0, v55

    #@70b
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@70d
    move-object/from16 v55, v0

    #@70f
    .line 1914
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@712
    move-result-object v54

    #@713
    .line 1916
    const-string/jumbo v55, " u"

    #@716
    .line 1914
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@719
    move-result-object v54

    #@71a
    .line 1916
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@71c
    move-object/from16 v55, v0

    #@71e
    move-object/from16 v0, v55

    #@720
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@722
    move/from16 v55, v0

    #@724
    .line 1914
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@727
    move-result-object v54

    #@728
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72b
    move-result-object v6

    #@72c
    .line 1930
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_b
    new-instance v46, Landroid/text/format/Time;

    #@72e
    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    #@731
    .line 1931
    .restart local v46    # "time":Landroid/text/format/Time;
    move-object/from16 v0, v26

    #@733
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@735
    move-wide/from16 v22, v0

    #@737
    .line 1932
    .restart local v22    # "eventTime":J
    move-object/from16 v0, v46

    #@739
    move-wide/from16 v1, v22

    #@73b
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    #@73e
    .line 1934
    const-string/jumbo v54, "  #%-3d: %s %8s "

    #@741
    const/16 v55, 0x3

    #@743
    move/from16 v0, v55

    #@745
    new-array v0, v0, [Ljava/lang/Object;

    #@747
    move-object/from16 v55, v0

    #@749
    .line 1935
    add-int/lit8 v56, v25, 0x1

    #@74b
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74e
    move-result-object v56

    #@74f
    const/16 v57, 0x0

    #@751
    aput-object v56, v55, v57

    #@753
    .line 1936
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@756
    move-result-object v56

    #@757
    const/16 v57, 0x1

    #@759
    aput-object v56, v55, v57

    #@75b
    .line 1937
    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@75d
    move-object/from16 v0, v26

    #@75f
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@761
    move/from16 v57, v0

    #@763
    aget-object v56, v56, v57

    #@765
    const/16 v57, 0x2

    #@767
    aput-object v56, v55, v57

    #@769
    .line 1934
    move-object/from16 v0, p1

    #@76b
    move-object/from16 v1, v54

    #@76d
    move-object/from16 v2, v55

    #@76f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@772
    .line 1939
    const/16 v54, 0x3

    #@774
    move/from16 v0, v54

    #@776
    new-array v0, v0, [Ljava/lang/Object;

    #@778
    move-object/from16 v54, v0

    #@77a
    const/16 v55, 0x0

    #@77c
    aput-object v6, v54, v55

    #@77e
    const/16 v55, 0x1

    #@780
    aput-object v12, v54, v55

    #@782
    const/16 v55, 0x2

    #@784
    aput-object v19, v54, v55

    #@786
    move-object/from16 v0, p1

    #@788
    move-object/from16 v1, v24

    #@78a
    move-object/from16 v2, v54

    #@78c
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@78f
    goto/16 :goto_a

    #@791
    .line 1917
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v22    # "eventTime":J
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_18
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@793
    move-object/from16 v54, v0

    #@795
    move-object/from16 v0, v54

    #@797
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@799
    move/from16 v54, v0

    #@79b
    if-eqz v54, :cond_19

    #@79d
    .line 1918
    new-instance v54, Ljava/lang/StringBuilder;

    #@79f
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    #@7a2
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7a4
    move-object/from16 v55, v0

    #@7a6
    move-object/from16 v0, v55

    #@7a8
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@7aa
    move-object/from16 v55, v0

    #@7ac
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@7af
    move-result-object v55

    #@7b0
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b3
    move-result-object v54

    #@7b4
    const-string/jumbo v55, "/"

    #@7b7
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ba
    move-result-object v54

    #@7bb
    .line 1919
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7bd
    move-object/from16 v55, v0

    #@7bf
    move-object/from16 v0, v55

    #@7c1
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@7c3
    move-object/from16 v55, v0

    #@7c5
    invoke-virtual/range {v55 .. v55}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@7c8
    move-result-object v55

    #@7c9
    .line 1918
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cc
    move-result-object v54

    #@7cd
    .line 1920
    const-string/jumbo v55, " u"

    #@7d0
    .line 1918
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d3
    move-result-object v54

    #@7d4
    .line 1920
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7d6
    move-object/from16 v55, v0

    #@7d8
    move-object/from16 v0, v55

    #@7da
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@7dc
    move/from16 v55, v0

    #@7de
    .line 1918
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e1
    move-result-object v54

    #@7e2
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e5
    move-result-object v12

    #@7e6
    .line 1921
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "none"

    #@7e9
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_b

    #@7eb
    .line 1923
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_19
    const-string/jumbo v12, "Unknown"

    #@7ee
    .line 1924
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@7f1
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_b

    #@7f3
    .line 1927
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v12, "Unknown"

    #@7f6
    .line 1928
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    #@7f9
    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_b

    #@7fb
    .line 1679
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
    :cond_1b
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1997
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3
    .line 1998
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    #@6
    move-result-object v4

    #@7
    .line 1999
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_1

    #@9
    .line 2000
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
    .line 2001
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
    .line 2002
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3a
    .line 2004
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@3c
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@3e
    invoke-virtual {v5, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@41
    move-result-object v5

    #@42
    .line 2003
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
    .line 2005
    .local v0, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@55
    goto :goto_1

    #@56
    .line 2007
    .end local v0    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@59
    .line 2008
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@5c
    goto :goto_0

    #@5d
    .line 1996
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
    .line 1656
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
    .line 1657
    const/16 v0, 0x73

    #@18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@1b
    .line 1655
    return-void
.end method

.method private ensureAlarmService()V
    .locals 2

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 627
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "alarm"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/AlarmManager;

    #@f
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    #@11
    .line 625
    :cond_0
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 1450
    new-instance v0, Landroid/text/format/Time;

    #@2
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@5
    .line 1451
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    #@8
    .line 1452
    const-string/jumbo v1, "%Y-%m-%d %H:%M:%S"

    #@b
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
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
    .line 302
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
    .line 408
    monitor-enter p0

    #@1
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 410
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@7
    .line 411
    const-string/jumbo v1, "connectivity"

    #@a
    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/net/ConnectivityManager;

    #@10
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    #@12
    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v0

    #@16
    .line 408
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
    .line 3490
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
    .line 3491
    :catch_0
    move-exception v0

    #@f
    .line 3493
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@11
    return-object v1
.end method

.method private getLastFailureMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 1625
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1651
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 1627
    :pswitch_0
    const-string/jumbo v0, "sync already in progress"

    #@a
    return-object v0

    #@b
    .line 1630
    :pswitch_1
    const-string/jumbo v0, "authentication error"

    #@e
    return-object v0

    #@f
    .line 1633
    :pswitch_2
    const-string/jumbo v0, "I/O error"

    #@12
    return-object v0

    #@13
    .line 1636
    :pswitch_3
    const-string/jumbo v0, "parse error"

    #@16
    return-object v0

    #@17
    .line 1639
    :pswitch_4
    const-string/jumbo v0, "conflict error"

    #@1a
    return-object v0

    #@1b
    .line 1642
    :pswitch_5
    const-string/jumbo v0, "too many deletions error"

    #@1e
    return-object v0

    #@1f
    .line 1645
    :pswitch_6
    const-string/jumbo v0, "too many retries error"

    #@22
    return-object v0

    #@23
    .line 1648
    :pswitch_7
    const-string/jumbo v0, "internal error"

    #@26
    return-object v0

    #@27
    .line 1625
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getTotalBytesTransferredByUid(I)J
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 996
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

.method private increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    .locals 18
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 1034
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v10

    #@4
    .line 1037
    .local v10, "now":J
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@8
    move-object/from16 v0, p1

    #@a
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@c
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@f
    move-result-object v12

    #@10
    .line 1038
    .local v12, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    #@12
    .line 1039
    .local v6, "newDelayInMs":J
    if-eqz v12, :cond_2

    #@14
    .line 1042
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@16
    check-cast v2, Ljava/lang/Long;

    #@18
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@1b
    move-result-wide v2

    #@1c
    cmp-long v2, v10, v2

    #@1e
    if-gez v2, :cond_1

    #@20
    .line 1043
    const-string/jumbo v2, "SyncManager"

    #@23
    const/4 v3, 0x2

    #@24
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 1044
    const-string/jumbo v3, "SyncManager"

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v13, "Still in backoff, do not increase it. Remaining: "

    #@35
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v13

    #@39
    .line 1045
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3b
    check-cast v2, Ljava/lang/Long;

    #@3d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@40
    move-result-wide v14

    #@41
    sub-long/2addr v14, v10

    #@42
    const-wide/16 v16, 0x3e8

    #@44
    div-long v14, v14, v16

    #@46
    .line 1044
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 1045
    const-string/jumbo v13, " seconds."

    #@4d
    .line 1044
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 1047
    :cond_0
    return-void

    #@59
    .line 1050
    :cond_1
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@5b
    check-cast v2, Ljava/lang/Long;

    #@5d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@60
    move-result-wide v2

    #@61
    const-wide/16 v14, 0x2

    #@63
    mul-long v6, v2, v14

    #@65
    .line 1052
    :cond_2
    const-wide/16 v2, 0x0

    #@67
    cmp-long v2, v6, v2

    #@69
    if-gtz v2, :cond_3

    #@6b
    .line 1054
    const-wide/16 v2, 0x7530

    #@6d
    .line 1055
    const-wide/32 v14, 0x80e8

    #@70
    .line 1054
    move-object/from16 v0, p0

    #@72
    invoke-direct {v0, v2, v3, v14, v15}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    #@75
    move-result-wide v6

    #@76
    .line 1059
    :cond_3
    move-object/from16 v0, p0

    #@78
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@7a
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7d
    move-result-object v2

    #@7e
    .line 1060
    const-string/jumbo v3, "sync_max_retry_delay_in_seconds"

    #@81
    .line 1061
    const-wide/16 v14, 0xe10

    #@83
    .line 1059
    invoke-static {v2, v3, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@86
    move-result-wide v8

    #@87
    .line 1062
    .local v8, "maxSyncRetryTimeInSeconds":J
    const-wide/16 v2, 0x3e8

    #@89
    mul-long/2addr v2, v8

    #@8a
    cmp-long v2, v6, v2

    #@8c
    if-lez v2, :cond_4

    #@8e
    .line 1063
    const-wide/16 v2, 0x3e8

    #@90
    mul-long v6, v8, v2

    #@92
    .line 1066
    :cond_4
    add-long v4, v10, v6

    #@94
    .line 1068
    .local v4, "backoff":J
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@98
    move-object/from16 v0, p1

    #@9a
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@9c
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@9f
    .line 1069
    move-object/from16 v0, p1

    #@a1
    iput-wide v4, v0, Lcom/android/server/content/SyncOperation;->backoff:J

    #@a3
    .line 1070
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    #@a6
    .line 1072
    move-object/from16 v0, p0

    #@a8
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@aa
    monitor-enter v3

    #@ab
    .line 1073
    :try_start_0
    move-object/from16 v0, p0

    #@ad
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@af
    move-object/from16 v0, p1

    #@b1
    iget-object v13, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@b3
    invoke-virtual {v2, v13, v4, v5}, Lcom/android/server/content/SyncQueue;->onBackoffChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b6
    monitor-exit v3

    #@b7
    .line 1031
    return-void

    #@b8
    .line 1072
    :catchall_0
    move-exception v2

    #@b9
    monitor-exit v3

    #@ba
    throw v2
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 574
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 575
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

.method private static isSyncSetting(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3383
    const-string/jumbo v0, "expedited"

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3384
    return v1

    #@b
    .line 3386
    :cond_0
    const-string/jumbo v0, "ignore_settings"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 3387
    return v1

    #@15
    .line 3389
    :cond_1
    const-string/jumbo v0, "ignore_backoff"

    #@18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 3390
    return v1

    #@1f
    .line 3392
    :cond_2
    const-string/jumbo v0, "do_not_retry"

    #@22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 3393
    return v1

    #@29
    .line 3395
    :cond_3
    const-string/jumbo v0, "force"

    #@2c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_4

    #@32
    .line 3396
    return v1

    #@33
    .line 3398
    :cond_4
    const-string/jumbo v0, "upload"

    #@36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_5

    #@3c
    .line 3399
    return v1

    #@3d
    .line 3401
    :cond_5
    const-string/jumbo v0, "deletions_override"

    #@40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_6

    #@46
    .line 3402
    return v1

    #@47
    .line 3404
    :cond_6
    const-string/jumbo v0, "discard_deletions"

    #@4a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_7

    #@50
    .line 3405
    return v1

    #@51
    .line 3407
    :cond_7
    const-string/jumbo v0, "expected_upload"

    #@54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_8

    #@5a
    .line 3408
    return v1

    #@5b
    .line 3410
    :cond_8
    const-string/jumbo v0, "expected_download"

    #@5e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_9

    #@64
    .line 3411
    return v1

    #@65
    .line 3413
    :cond_9
    const-string/jumbo v0, "sync_priority"

    #@68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_a

    #@6e
    .line 3414
    return v1

    #@6f
    .line 3416
    :cond_a
    const-string/jumbo v0, "allow_metered"

    #@72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_b

    #@78
    .line 3417
    return v1

    #@79
    .line 3419
    :cond_b
    const-string/jumbo v0, "initialize"

    #@7c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_c

    #@82
    .line 3420
    return v1

    #@83
    .line 3422
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
    .line 3340
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
    .line 3341
    .local v0, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v0, p1, :cond_0

    #@14
    .line 3342
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 3345
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
    .line 582
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v4

    #@6
    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    #@9
    .line 583
    .local v0, "random":Ljava/util/Random;
    sub-long v2, p3, p1

    #@b
    .line 584
    .local v2, "spread":J
    const-wide/32 v4, 0x7fffffff

    #@e
    cmp-long v1, v2, v4

    #@10
    if-lez v1, :cond_0

    #@12
    .line 585
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 588
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

.method private onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    #@3
    .line 1261
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@5
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Landroid/accounts/Account;

    #@8
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    #@b
    .line 1262
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@d
    monitor-enter v1

    #@e
    .line 1263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncQueue;->removeUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 1257
    return-void

    #@15
    .line 1262
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private onUserStarting(I)V
    .locals 14
    .param p1, "userId"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1224
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    #@a
    .line 1226
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@c
    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    #@f
    .line 1228
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    #@12
    .line 1230
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@14
    monitor-enter v2

    #@15
    .line 1231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@17
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncQueue;->addPendingOperations(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 1235
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    #@22
    move-result-object v11

    #@23
    .line 1236
    .local v11, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    #@24
    array-length v13, v11

    #@25
    move v12, v0

    #@26
    :goto_0
    if-ge v12, v13, :cond_0

    #@28
    aget-object v1, v11, v12

    #@2a
    .line 1237
    .local v1, "account":Landroid/accounts/Account;
    const/4 v3, -0x8

    #@2b
    .line 1239
    const/4 v10, 0x1

    #@2c
    move-object v0, p0

    #@2d
    move v2, p1

    #@2e
    move-object v5, v4

    #@2f
    move-wide v8, v6

    #@30
    .line 1237
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@33
    .line 1236
    add-int/lit8 v0, v12, 0x1

    #@35
    move v12, v0

    #@36
    goto :goto_0

    #@37
    .line 1230
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v11    # "accounts":[Landroid/accounts/Account;
    :catchall_0
    move-exception v0

    #@38
    monitor-exit v2

    #@39
    throw v0

    #@3a
    .line 1242
    .restart local v11    # "accounts":[Landroid/accounts/Account;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    #@3d
    .line 1222
    return-void
.end method

.method private onUserStopping(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1246
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    #@4
    .line 1249
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6
    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@9
    .line 1248
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@c
    .line 1245
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 977
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
    .line 978
    const-string/jumbo v1, "SyncManager"

    #@d
    const-string/jumbo v2, "posting MESSAGE_SYNC_MONITOR in 60s"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 983
    :cond_0
    iget v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    #@15
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    #@18
    move-result-wide v2

    #@19
    .line 982
    iput-wide v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    #@1b
    .line 984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e
    move-result-wide v2

    #@1f
    iput-wide v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    #@21
    .line 986
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@23
    .line 987
    const/16 v2, 0x8

    #@25
    .line 986
    invoke-virtual {v1, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v0

    #@29
    .line 989
    .local v0, "monitorMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@2b
    const-wide/32 v2, 0xea60

    #@2e
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@31
    .line 976
    return-void
.end method

.method private postSyncExpiryMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 962
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
    .line 963
    const-string/jumbo v1, "SyncManager"

    #@d
    const-string/jumbo v2, "posting MESSAGE_SYNC_EXPIRED in 1800s"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 966
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 967
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    #@1a
    iput v1, v0, Landroid/os/Message;->what:I

    #@1c
    .line 968
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    .line 969
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@20
    const-wide/32 v2, 0x1b7740

    #@23
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@26
    .line 961
    return-void
.end method

.method private readDataConnectionState()Z
    .locals 2

    #@0
    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@7
    move-result-object v0

    #@8
    .line 373
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

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 949
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
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 950
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 951
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    #@1a
    iput v1, v0, Landroid/os/Message;->what:I

    #@1c
    .line 952
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@1f
    .line 953
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    .line 954
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@23
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 948
    return-void
.end method

.method private sendCheckAlarmsMessage()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 934
    const-string/jumbo v0, "SyncManager"

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const-string/jumbo v0, "SyncManager"

    #@e
    const-string/jumbo v1, "sending MESSAGE_CHECK_ALARMS"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@16
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(I)V

    #@19
    .line 936
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    #@1e
    .line 933
    return-void
.end method

.method private sendSyncAlarmMessage()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 929
    const-string/jumbo v0, "SyncManager"

    #@4
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "SyncManager"

    #@d
    const-string/jumbo v1, "sending MESSAGE_SYNC_ALARM"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    #@18
    .line 928
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    #@0
    .prologue
    .line 941
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
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 942
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@15
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 943
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@1a
    iput v1, v0, Landroid/os/Message;->what:I

    #@1c
    .line 944
    new-instance v1, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;

    #@1e
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@21
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    .line 945
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@25
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    #@28
    .line 940
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V
    .locals 10
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delayUntilSeconds"    # J

    #@0
    .prologue
    .line 1078
    const-wide/16 v6, 0x3e8

    #@2
    mul-long v2, p2, v6

    #@4
    .line 1079
    .local v2, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    .line 1081
    .local v0, "absoluteNow":J
    cmp-long v6, v2, v0

    #@a
    if-lez v6, :cond_0

    #@c
    .line 1082
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v6

    #@10
    sub-long v8, v2, v0

    #@12
    add-long v4, v6, v8

    #@14
    .line 1086
    .local v4, "newDelayUntilTime":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@16
    iget-object v7, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@18
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    #@1b
    .line 1087
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@1d
    monitor-enter v7

    #@1e
    .line 1088
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@20
    iget-object v8, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@22
    invoke-virtual {v6, v8, v4, v5}, Lcom/android/server/content/SyncQueue;->onDelayUntilTimeChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v7

    #@26
    .line 1077
    return-void

    #@27
    .line 1084
    .end local v4    # "newDelayUntilTime":J
    :cond_0
    const-wide/16 v4, 0x0

    #@29
    .restart local v4    # "newDelayUntilTime":J
    goto :goto_0

    #@2a
    .line 1087
    :catchall_0
    move-exception v6

    #@2b
    monitor-exit v7

    #@2c
    throw v6
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
    .line 3355
    if-ne p0, p1, :cond_0

    #@4
    .line 3356
    return v7

    #@5
    .line 3359
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
    .line 3360
    return v6

    #@12
    .line 3362
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
    .line 3363
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
    .line 3364
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
    .line 3365
    .local v1, "key":Ljava/lang/String;
    if-nez p2, :cond_3

    #@3e
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    #@41
    move-result v4

    #@42
    if-nez v4, :cond_2

    #@44
    .line 3368
    :cond_3
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@47
    move-result v4

    #@48
    if-nez v4, :cond_6

    #@4a
    .line 3369
    return v6

    #@4b
    .line 3362
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
    .line 3363
    :cond_5
    move-object v3, p0

    #@4e
    .restart local v3    # "smaller":Landroid/os/Bundle;
    goto :goto_1

    #@4f
    .line 3371
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
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-nez v4, :cond_2

    #@5d
    .line 3372
    return v6

    #@5e
    .line 3375
    .end local v1    # "key":Ljava/lang/String;
    :cond_7
    return v7
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1099
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@3
    .line 1098
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 1145
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@4
    monitor-enter v1

    #@5
    .line 1146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@7
    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 1149
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1150
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@15
    move-object v1, p1

    #@16
    move-wide v4, v2

    #@17
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@1a
    .line 1144
    :cond_0
    return-void

    #@1b
    .line 1145
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 1132
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@4
    monitor-enter v1

    #@5
    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {v0, p1, v4}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 1135
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@e
    move-object v1, p1

    #@f
    move-wide v4, v2

    #@10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    #@13
    .line 1131
    return-void

    #@14
    .line 1132
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1443
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v1, "  "

    #@5
    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 1444
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    #@b
    .line 1445
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    #@e
    .line 1446
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@11
    .line 1442
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1675
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    #@3
    .line 1676
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    #@6
    .line 1674
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .locals 42
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1456
    const-string/jumbo v33, "data connected: "

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v33

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    move-object/from16 v0, p0

    #@c
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    #@e
    move/from16 v33, v0

    #@10
    move-object/from16 v0, p1

    #@12
    move/from16 v1, v33

    #@14
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@17
    .line 1457
    const-string/jumbo v33, "auto sync: "

    #@1a
    move-object/from16 v0, p1

    #@1c
    move-object/from16 v1, v33

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 1458
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    #@24
    move-result-object v32

    #@25
    .line 1459
    .local v32, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v32, :cond_1

    #@27
    .line 1460
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v31

    #@2b
    .local v31, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v33

    #@2f
    if-eqz v33, :cond_0

    #@31
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v30

    #@35
    check-cast v30, Landroid/content/pm/UserInfo;

    #@37
    .line 1461
    .local v30, "user":Landroid/content/pm/UserInfo;
    new-instance v33, Ljava/lang/StringBuilder;

    #@39
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v34, "u"

    #@3f
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v33

    #@43
    move-object/from16 v0, v30

    #@45
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@47
    move/from16 v34, v0

    #@49
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v33

    #@4d
    const-string/jumbo v34, "="

    #@50
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v33

    #@54
    .line 1462
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@58
    move-object/from16 v34, v0

    #@5a
    move-object/from16 v0, v30

    #@5c
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@5e
    move/from16 v35, v0

    #@60
    invoke-virtual/range {v34 .. v35}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@63
    move-result v34

    #@64
    .line 1461
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v33

    #@68
    .line 1462
    const-string/jumbo v34, " "

    #@6b
    .line 1461
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v33

    #@6f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v33

    #@73
    move-object/from16 v0, p1

    #@75
    move-object/from16 v1, v33

    #@77
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    goto :goto_0

    #@7b
    .line 1464
    .end local v30    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@7e
    .line 1466
    .end local v31    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v33, "memory low: "

    #@81
    move-object/from16 v0, p1

    #@83
    move-object/from16 v1, v33

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    #@8c
    move/from16 v33, v0

    #@8e
    move-object/from16 v0, p1

    #@90
    move/from16 v1, v33

    #@92
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@95
    .line 1467
    const-string/jumbo v33, "device idle: "

    #@98
    move-object/from16 v0, p1

    #@9a
    move-object/from16 v1, v33

    #@9c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    #@a3
    move/from16 v33, v0

    #@a5
    move-object/from16 v0, p1

    #@a7
    move/from16 v1, v33

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@ac
    .line 1469
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@af
    move-result-object v33

    #@b0
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    #@b3
    move-result-object v5

    #@b4
    .line 1471
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    const-string/jumbo v33, "accounts: "

    #@b7
    move-object/from16 v0, p1

    #@b9
    move-object/from16 v1, v33

    #@bb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    .line 1472
    sget-object v33, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    #@c0
    move-object/from16 v0, v33

    #@c2
    if-eq v5, v0, :cond_2

    #@c4
    .line 1473
    array-length v0, v5

    #@c5
    move/from16 v33, v0

    #@c7
    move-object/from16 v0, p1

    #@c9
    move/from16 v1, v33

    #@cb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@ce
    .line 1477
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d1
    move-result-wide v14

    #@d2
    .line 1478
    .local v14, "now":J
    const-string/jumbo v33, "now: "

    #@d5
    move-object/from16 v0, p1

    #@d7
    move-object/from16 v1, v33

    #@d9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    move-object/from16 v0, p1

    #@de
    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    #@e1
    .line 1479
    new-instance v33, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v34, " ("

    #@e9
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v33

    #@ed
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f0
    move-result-wide v34

    #@f1
    invoke-static/range {v34 .. v35}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@f4
    move-result-object v34

    #@f5
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v33

    #@f9
    const-string/jumbo v34, ")"

    #@fc
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v33

    #@100
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v33

    #@104
    move-object/from16 v0, p1

    #@106
    move-object/from16 v1, v33

    #@108
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 1480
    const-string/jumbo v33, "offset: "

    #@10e
    move-object/from16 v0, p1

    #@110
    move-object/from16 v1, v33

    #@112
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    move-object/from16 v0, p0

    #@117
    iget v0, v0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    #@119
    move/from16 v33, v0

    #@11b
    move/from16 v0, v33

    #@11d
    div-int/lit16 v0, v0, 0x3e8

    #@11f
    move/from16 v33, v0

    #@121
    move/from16 v0, v33

    #@123
    int-to-long v0, v0

    #@124
    move-wide/from16 v34, v0

    #@126
    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@129
    move-result-object v33

    #@12a
    move-object/from16 v0, p1

    #@12c
    move-object/from16 v1, v33

    #@12e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    .line 1481
    const-string/jumbo v33, " (HH:MM:SS)"

    #@134
    move-object/from16 v0, p1

    #@136
    move-object/from16 v1, v33

    #@138
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 1482
    const-string/jumbo v33, "uptime: "

    #@13e
    move-object/from16 v0, p1

    #@140
    move-object/from16 v1, v33

    #@142
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@145
    const-wide/16 v34, 0x3e8

    #@147
    div-long v34, v14, v34

    #@149
    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@14c
    move-result-object v33

    #@14d
    move-object/from16 v0, p1

    #@14f
    move-object/from16 v1, v33

    #@151
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@154
    .line 1483
    const-string/jumbo v33, " (HH:MM:SS)"

    #@157
    move-object/from16 v0, p1

    #@159
    move-object/from16 v1, v33

    #@15b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15e
    .line 1484
    const-string/jumbo v33, "time spent syncing: "

    #@161
    move-object/from16 v0, p1

    #@163
    move-object/from16 v1, v33

    #@165
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168
    .line 1486
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@16c
    move-object/from16 v33, v0

    #@16e
    move-object/from16 v0, v33

    #@170
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@172
    move-object/from16 v33, v0

    #@174
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    #@177
    move-result-wide v34

    #@178
    const-wide/16 v36, 0x3e8

    #@17a
    div-long v34, v34, v36

    #@17c
    .line 1485
    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@17f
    move-result-object v33

    #@180
    move-object/from16 v0, p1

    #@182
    move-object/from16 v1, v33

    #@184
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@187
    .line 1487
    const-string/jumbo v33, " (HH:MM:SS), sync "

    #@18a
    move-object/from16 v0, p1

    #@18c
    move-object/from16 v1, v33

    #@18e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@191
    .line 1488
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@195
    move-object/from16 v33, v0

    #@197
    move-object/from16 v0, v33

    #@199
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@19b
    move-object/from16 v33, v0

    #@19d
    move-object/from16 v0, v33

    #@19f
    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    #@1a1
    move/from16 v33, v0

    #@1a3
    if-eqz v33, :cond_3

    #@1a5
    const-string/jumbo v33, ""

    #@1a8
    :goto_2
    move-object/from16 v0, p1

    #@1aa
    move-object/from16 v1, v33

    #@1ac
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1af
    .line 1489
    const-string/jumbo v33, "in progress"

    #@1b2
    move-object/from16 v0, p1

    #@1b4
    move-object/from16 v1, v33

    #@1b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b9
    .line 1490
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@1bd
    move-object/from16 v33, v0

    #@1bf
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncHandler;->-get0(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    #@1c2
    move-result-object v33

    #@1c3
    if-eqz v33, :cond_4

    #@1c5
    .line 1491
    const-string/jumbo v33, "next alarm time: "

    #@1c8
    move-object/from16 v0, p1

    #@1ca
    move-object/from16 v1, v33

    #@1cc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@1d3
    move-object/from16 v33, v0

    #@1d5
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncHandler;->-get0(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    #@1d8
    move-result-object v33

    #@1d9
    move-object/from16 v0, p1

    #@1db
    move-object/from16 v1, v33

    #@1dd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1e0
    .line 1492
    const-string/jumbo v33, " ("

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    move-object/from16 v1, v33

    #@1e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ea
    .line 1493
    move-object/from16 v0, p0

    #@1ec
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    #@1ee
    move-object/from16 v33, v0

    #@1f0
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncHandler;->-get0(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    #@1f3
    move-result-object v33

    #@1f4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    #@1f7
    move-result-wide v34

    #@1f8
    sub-long v34, v34, v14

    #@1fa
    const-wide/16 v36, 0x3e8

    #@1fc
    div-long v34, v34, v36

    #@1fe
    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@201
    move-result-object v33

    #@202
    move-object/from16 v0, p1

    #@204
    move-object/from16 v1, v33

    #@206
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@209
    .line 1494
    const-string/jumbo v33, " (HH:MM:SS) from now)"

    #@20c
    move-object/from16 v0, p1

    #@20e
    move-object/from16 v1, v33

    #@210
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@213
    .line 1499
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@216
    .line 1500
    new-instance v33, Ljava/lang/StringBuilder;

    #@218
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v34, "Active Syncs: "

    #@21e
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v33

    #@222
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@226
    move-object/from16 v34, v0

    #@228
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    #@22b
    move-result v34

    #@22c
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v33

    #@230
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@233
    move-result-object v33

    #@234
    move-object/from16 v0, p1

    #@236
    move-object/from16 v1, v33

    #@238
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23b
    .line 1501
    move-object/from16 v0, p0

    #@23d
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    #@23f
    move-object/from16 v33, v0

    #@241
    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@244
    move-result-object v17

    #@245
    .line 1502
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@249
    move-object/from16 v33, v0

    #@24b
    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24e
    move-result-object v7

    #@24f
    .local v7, "activeSyncContext$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@252
    move-result v33

    #@253
    if-eqz v33, :cond_5

    #@255
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@258
    move-result-object v6

    #@259
    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@25b
    .line 1503
    .local v6, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@25d
    move-wide/from16 v34, v0

    #@25f
    sub-long v34, v14, v34

    #@261
    const-wide/16 v36, 0x3e8

    #@263
    div-long v10, v34, v36

    #@265
    .line 1504
    .local v10, "durationInSeconds":J
    const-string/jumbo v33, "  "

    #@268
    move-object/from16 v0, p1

    #@26a
    move-object/from16 v1, v33

    #@26c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26f
    .line 1505
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@272
    move-result-object v33

    #@273
    move-object/from16 v0, p1

    #@275
    move-object/from16 v1, v33

    #@277
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27a
    .line 1506
    const-string/jumbo v33, " - "

    #@27d
    move-object/from16 v0, p1

    #@27f
    move-object/from16 v1, v33

    #@281
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@284
    .line 1507
    iget-object v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@286
    move-object/from16 v33, v0

    #@288
    const/16 v34, 0x0

    #@28a
    move-object/from16 v0, v33

    #@28c
    move-object/from16 v1, v17

    #@28e
    move/from16 v2, v34

    #@290
    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    #@293
    move-result-object v33

    #@294
    move-object/from16 v0, p1

    #@296
    move-object/from16 v1, v33

    #@298
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29b
    .line 1508
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@29e
    goto :goto_4

    #@29f
    .line 1475
    .end local v6    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v7    # "activeSyncContext$iterator":Ljava/util/Iterator;
    .end local v10    # "durationInSeconds":J
    .end local v14    # "now":J
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const-string/jumbo v33, "not known yet"

    #@2a2
    move-object/from16 v0, p1

    #@2a4
    move-object/from16 v1, v33

    #@2a6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a9
    goto/16 :goto_1

    #@2ab
    .line 1488
    .restart local v14    # "now":J
    :cond_3
    const-string/jumbo v33, "not "

    #@2ae
    goto/16 :goto_2

    #@2b0
    .line 1496
    :cond_4
    const-string/jumbo v33, "no alarm is scheduled (there had better not be any pending syncs)"

    #@2b3
    move-object/from16 v0, p1

    #@2b5
    move-object/from16 v1, v33

    #@2b7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ba
    goto/16 :goto_3

    #@2bc
    .line 1511
    .restart local v7    # "activeSyncContext$iterator":Ljava/util/Iterator;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    #@2be
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@2c1
    .line 1512
    .local v21, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@2c3
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@2c5
    move-object/from16 v34, v0

    #@2c7
    monitor-enter v34

    #@2c8
    .line 1513
    :try_start_0
    move-object/from16 v0, p0

    #@2ca
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@2cc
    move-object/from16 v33, v0

    #@2ce
    move-object/from16 v0, v33

    #@2d0
    move-object/from16 v1, v21

    #@2d2
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    #@2d5
    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2d8
    move-result-object v33

    #@2d9
    move-object/from16 v0, v33

    #@2db
    move-object/from16 v1, v21

    #@2dd
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->dumpPendingOperations(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e0
    monitor-exit v34

    #@2e1
    .line 1518
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2e4
    .line 1519
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v33

    #@2e8
    move-object/from16 v0, p1

    #@2ea
    move-object/from16 v1, v33

    #@2ec
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ef
    .line 1522
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2f2
    .line 1523
    const-string/jumbo v33, "Sync Status"

    #@2f5
    move-object/from16 v0, p1

    #@2f7
    move-object/from16 v1, v33

    #@2f9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fc
    .line 1524
    const/16 v33, 0x0

    #@2fe
    array-length v0, v5

    #@2ff
    move/from16 v35, v0

    #@301
    move/from16 v34, v33

    #@303
    :goto_5
    move/from16 v0, v34

    #@305
    move/from16 v1, v35

    #@307
    if-ge v0, v1, :cond_d

    #@309
    aget-object v4, v5, v34

    #@30b
    .line 1525
    .local v4, "account":Landroid/accounts/AccountAndUser;
    const-string/jumbo v33, "Account %s u%d %s\n"

    #@30e
    const/16 v36, 0x3

    #@310
    move/from16 v0, v36

    #@312
    new-array v0, v0, [Ljava/lang/Object;

    #@314
    move-object/from16 v36, v0

    #@316
    .line 1526
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@318
    move-object/from16 v37, v0

    #@31a
    move-object/from16 v0, v37

    #@31c
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@31e
    move-object/from16 v37, v0

    #@320
    const/16 v38, 0x0

    #@322
    aput-object v37, v36, v38

    #@324
    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    #@326
    move/from16 v37, v0

    #@328
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32b
    move-result-object v37

    #@32c
    const/16 v38, 0x1

    #@32e
    aput-object v37, v36, v38

    #@330
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@332
    move-object/from16 v37, v0

    #@334
    move-object/from16 v0, v37

    #@336
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@338
    move-object/from16 v37, v0

    #@33a
    const/16 v38, 0x2

    #@33c
    aput-object v37, v36, v38

    #@33e
    .line 1525
    move-object/from16 v0, p1

    #@340
    move-object/from16 v1, v33

    #@342
    move-object/from16 v2, v36

    #@344
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@347
    .line 1528
    const-string/jumbo v33, "======================================================================="

    #@34a
    move-object/from16 v0, p1

    #@34c
    move-object/from16 v1, v33

    #@34e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@351
    .line 1529
    new-instance v29, Lcom/android/server/content/SyncManager$PrintTable;

    #@353
    const/16 v33, 0xd

    #@355
    move-object/from16 v0, v29

    #@357
    move/from16 v1, v33

    #@359
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    #@35c
    .line 1530
    .local v29, "table":Lcom/android/server/content/SyncManager$PrintTable;
    const/16 v33, 0xd

    #@35e
    move/from16 v0, v33

    #@360
    new-array v0, v0, [Ljava/lang/Object;

    #@362
    move-object/from16 v33, v0

    #@364
    .line 1531
    const-string/jumbo v36, "Authority"

    #@367
    const/16 v37, 0x0

    #@369
    aput-object v36, v33, v37

    #@36b
    .line 1532
    const-string/jumbo v36, "Syncable"

    #@36e
    const/16 v37, 0x1

    #@370
    aput-object v36, v33, v37

    #@372
    .line 1533
    const-string/jumbo v36, "Enabled"

    #@375
    const/16 v37, 0x2

    #@377
    aput-object v36, v33, v37

    #@379
    .line 1534
    const-string/jumbo v36, "Delay"

    #@37c
    const/16 v37, 0x3

    #@37e
    aput-object v36, v33, v37

    #@380
    .line 1535
    const-string/jumbo v36, "Loc"

    #@383
    const/16 v37, 0x4

    #@385
    aput-object v36, v33, v37

    #@387
    .line 1536
    const-string/jumbo v36, "Poll"

    #@38a
    const/16 v37, 0x5

    #@38c
    aput-object v36, v33, v37

    #@38e
    .line 1537
    const-string/jumbo v36, "Per"

    #@391
    const/16 v37, 0x6

    #@393
    aput-object v36, v33, v37

    #@395
    .line 1538
    const-string/jumbo v36, "Serv"

    #@398
    const/16 v37, 0x7

    #@39a
    aput-object v36, v33, v37

    #@39c
    .line 1539
    const-string/jumbo v36, "User"

    #@39f
    const/16 v37, 0x8

    #@3a1
    aput-object v36, v33, v37

    #@3a3
    .line 1540
    const-string/jumbo v36, "Tot"

    #@3a6
    const/16 v37, 0x9

    #@3a8
    aput-object v36, v33, v37

    #@3aa
    .line 1541
    const-string/jumbo v36, "Time"

    #@3ad
    const/16 v37, 0xa

    #@3af
    aput-object v36, v33, v37

    #@3b1
    .line 1542
    const-string/jumbo v36, "Last Sync"

    #@3b4
    const/16 v37, 0xb

    #@3b6
    aput-object v36, v33, v37

    #@3b8
    .line 1543
    const-string/jumbo v36, "Periodic"

    #@3bb
    const/16 v37, 0xc

    #@3bd
    aput-object v36, v33, v37

    #@3bf
    .line 1530
    const/16 v36, 0x0

    #@3c1
    const/16 v37, 0x0

    #@3c3
    move-object/from16 v0, v29

    #@3c5
    move/from16 v1, v36

    #@3c7
    move/from16 v2, v37

    #@3c9
    move-object/from16 v3, v33

    #@3cb
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@3ce
    .line 1547
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@3d1
    move-result-object v23

    #@3d2
    .line 1548
    .local v23, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    move-object/from16 v0, p0

    #@3d4
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@3d6
    move-object/from16 v33, v0

    #@3d8
    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    #@3da
    move/from16 v36, v0

    #@3dc
    move-object/from16 v0, v33

    #@3de
    move/from16 v1, v36

    #@3e0
    invoke-virtual {v0, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@3e3
    move-result-object v33

    #@3e4
    move-object/from16 v0, v23

    #@3e6
    move-object/from16 v1, v33

    #@3e8
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3eb
    .line 1550
    new-instance v33, Lcom/android/server/content/SyncManager$12;

    #@3ed
    move-object/from16 v0, v33

    #@3ef
    move-object/from16 v1, p0

    #@3f1
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    #@3f4
    .line 1549
    move-object/from16 v0, v23

    #@3f6
    move-object/from16 v1, v33

    #@3f8
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@3fb
    .line 1557
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3fe
    move-result-object v27

    #@3ff
    .local v27, "syncAdapterType$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@402
    move-result v33

    #@403
    if-eqz v33, :cond_c

    #@405
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@408
    move-result-object v26

    #@409
    check-cast v26, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@40b
    .line 1558
    .local v26, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v26

    #@40d
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@40f
    move-object/from16 v33, v0

    #@411
    check-cast v33, Landroid/content/SyncAdapterType;

    #@413
    move-object/from16 v0, v33

    #@415
    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@417
    move-object/from16 v33, v0

    #@419
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@41b
    move-object/from16 v36, v0

    #@41d
    move-object/from16 v0, v36

    #@41f
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@421
    move-object/from16 v36, v0

    #@423
    move-object/from16 v0, v33

    #@425
    move-object/from16 v1, v36

    #@427
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42a
    move-result v33

    #@42b
    if-eqz v33, :cond_6

    #@42d
    .line 1561
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    #@430
    move-result v18

    #@431
    .line 1563
    .local v18, "row":I
    move-object/from16 v0, p0

    #@433
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@435
    move-object/from16 v36, v0

    #@437
    .line 1564
    new-instance v37, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@439
    .line 1565
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@43b
    move-object/from16 v38, v0

    #@43d
    .line 1566
    move-object/from16 v0, v26

    #@43f
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@441
    move-object/from16 v33, v0

    #@443
    check-cast v33, Landroid/content/SyncAdapterType;

    #@445
    move-object/from16 v0, v33

    #@447
    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@449
    move-object/from16 v33, v0

    #@44b
    .line 1567
    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    #@44d
    move/from16 v39, v0

    #@44f
    .line 1564
    move-object/from16 v0, v37

    #@451
    move-object/from16 v1, v38

    #@453
    move-object/from16 v2, v33

    #@455
    move/from16 v3, v39

    #@457
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@45a
    .line 1563
    invoke-virtual/range {v36 .. v37}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@45d
    move-result-object v28

    #@45e
    .line 1568
    .local v28, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v28

    #@460
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@462
    move-object/from16 v22, v0

    #@464
    check-cast v22, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@466
    .line 1569
    .local v22, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v28

    #@468
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@46a
    move-object/from16 v24, v0

    #@46c
    check-cast v24, Landroid/content/SyncStatusInfo;

    #@46e
    .line 1570
    .local v24, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v22

    #@470
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@472
    move-object/from16 v33, v0

    #@474
    move-object/from16 v0, v33

    #@476
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@478
    .line 1571
    .local v8, "authority":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@47b
    move-result v33

    #@47c
    const/16 v36, 0x32

    #@47e
    move/from16 v0, v33

    #@480
    move/from16 v1, v36

    #@482
    if-le v0, v1, :cond_7

    #@484
    .line 1572
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@487
    move-result v33

    #@488
    add-int/lit8 v33, v33, -0x32

    #@48a
    move/from16 v0, v33

    #@48c
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@48f
    move-result-object v8

    #@490
    .line 1574
    :cond_7
    const/16 v33, 0x3

    #@492
    move/from16 v0, v33

    #@494
    new-array v0, v0, [Ljava/lang/Object;

    #@496
    move-object/from16 v33, v0

    #@498
    const/16 v36, 0x0

    #@49a
    aput-object v8, v33, v36

    #@49c
    move-object/from16 v0, v22

    #@49e
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@4a0
    move/from16 v36, v0

    #@4a2
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a5
    move-result-object v36

    #@4a6
    const/16 v37, 0x1

    #@4a8
    aput-object v36, v33, v37

    #@4aa
    move-object/from16 v0, v22

    #@4ac
    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@4ae
    move/from16 v36, v0

    #@4b0
    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4b3
    move-result-object v36

    #@4b4
    const/16 v37, 0x2

    #@4b6
    aput-object v36, v33, v37

    #@4b8
    const/16 v36, 0x0

    #@4ba
    move-object/from16 v0, v29

    #@4bc
    move/from16 v1, v18

    #@4be
    move/from16 v2, v36

    #@4c0
    move-object/from16 v3, v33

    #@4c2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@4c5
    .line 1575
    const/16 v33, 0x7

    #@4c7
    move/from16 v0, v33

    #@4c9
    new-array v0, v0, [Ljava/lang/Object;

    #@4cb
    move-object/from16 v33, v0

    #@4cd
    .line 1576
    move-object/from16 v0, v24

    #@4cf
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@4d1
    move/from16 v36, v0

    #@4d3
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d6
    move-result-object v36

    #@4d7
    const/16 v37, 0x0

    #@4d9
    aput-object v36, v33, v37

    #@4db
    .line 1577
    move-object/from16 v0, v24

    #@4dd
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@4df
    move/from16 v36, v0

    #@4e1
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e4
    move-result-object v36

    #@4e5
    const/16 v37, 0x1

    #@4e7
    aput-object v36, v33, v37

    #@4e9
    .line 1578
    move-object/from16 v0, v24

    #@4eb
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@4ed
    move/from16 v36, v0

    #@4ef
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f2
    move-result-object v36

    #@4f3
    const/16 v37, 0x2

    #@4f5
    aput-object v36, v33, v37

    #@4f7
    .line 1579
    move-object/from16 v0, v24

    #@4f9
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@4fb
    move/from16 v36, v0

    #@4fd
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@500
    move-result-object v36

    #@501
    const/16 v37, 0x3

    #@503
    aput-object v36, v33, v37

    #@505
    .line 1580
    move-object/from16 v0, v24

    #@507
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@509
    move/from16 v36, v0

    #@50b
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50e
    move-result-object v36

    #@50f
    const/16 v37, 0x4

    #@511
    aput-object v36, v33, v37

    #@513
    .line 1581
    move-object/from16 v0, v24

    #@515
    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@517
    move/from16 v36, v0

    #@519
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51c
    move-result-object v36

    #@51d
    const/16 v37, 0x5

    #@51f
    aput-object v36, v33, v37

    #@521
    .line 1582
    move-object/from16 v0, v24

    #@523
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@525
    move-wide/from16 v36, v0

    #@527
    const-wide/16 v38, 0x3e8

    #@529
    div-long v36, v36, v38

    #@52b
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@52e
    move-result-object v36

    #@52f
    const/16 v37, 0x6

    #@531
    aput-object v36, v33, v37

    #@533
    .line 1575
    const/16 v36, 0x4

    #@535
    move-object/from16 v0, v29

    #@537
    move/from16 v1, v18

    #@539
    move/from16 v2, v36

    #@53b
    move-object/from16 v3, v33

    #@53d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@540
    .line 1585
    const/4 v12, 0x0

    #@541
    .local v12, "i":I
    :goto_7
    move-object/from16 v0, v22

    #@543
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@545
    move-object/from16 v33, v0

    #@547
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    #@54a
    move-result v33

    #@54b
    move/from16 v0, v33

    #@54d
    if-ge v12, v0, :cond_9

    #@54f
    .line 1586
    move-object/from16 v0, v22

    #@551
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@553
    move-object/from16 v33, v0

    #@555
    move-object/from16 v0, v33

    #@557
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55a
    move-result-object v25

    #@55b
    check-cast v25, Landroid/content/PeriodicSync;

    #@55d
    .line 1588
    .local v25, "sync":Landroid/content/PeriodicSync;
    const-string/jumbo v33, "[p:%d s, f: %d s]"

    #@560
    const/16 v36, 0x2

    #@562
    move/from16 v0, v36

    #@564
    new-array v0, v0, [Ljava/lang/Object;

    #@566
    move-object/from16 v36, v0

    #@568
    move-object/from16 v0, v25

    #@56a
    iget-wide v0, v0, Landroid/content/PeriodicSync;->period:J

    #@56c
    move-wide/from16 v38, v0

    #@56e
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@571
    move-result-object v37

    #@572
    const/16 v38, 0x0

    #@574
    aput-object v37, v36, v38

    #@576
    move-object/from16 v0, v25

    #@578
    iget-wide v0, v0, Landroid/content/PeriodicSync;->flexTime:J

    #@57a
    move-wide/from16 v38, v0

    #@57c
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@57f
    move-result-object v37

    #@580
    const/16 v38, 0x1

    #@582
    aput-object v37, v36, v38

    #@584
    move-object/from16 v0, v33

    #@586
    move-object/from16 v1, v36

    #@588
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58b
    move-result-object v16

    #@58c
    .line 1590
    .local v16, "period":Ljava/lang/String;
    move-object/from16 v0, v25

    #@58e
    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@590
    move-object/from16 v33, v0

    #@592
    invoke-virtual/range {v33 .. v33}, Landroid/os/Bundle;->size()I

    #@595
    move-result v33

    #@596
    if-lez v33, :cond_8

    #@598
    .line 1591
    move-object/from16 v0, v25

    #@59a
    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@59c
    move-object/from16 v33, v0

    #@59e
    invoke-virtual/range {v33 .. v33}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@5a1
    move-result-object v9

    #@5a2
    .line 1592
    .local v9, "extras":Ljava/lang/String;
    :goto_8
    new-instance v33, Ljava/lang/StringBuilder;

    #@5a4
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@5a7
    const-string/jumbo v36, "Next sync: "

    #@5aa
    move-object/from16 v0, v33

    #@5ac
    move-object/from16 v1, v36

    #@5ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b1
    move-result-object v33

    #@5b2
    move-object/from16 v0, v24

    #@5b4
    invoke-virtual {v0, v12}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    #@5b7
    move-result-wide v36

    #@5b8
    .line 1593
    move-object/from16 v0, v25

    #@5ba
    iget-wide v0, v0, Landroid/content/PeriodicSync;->period:J

    #@5bc
    move-wide/from16 v38, v0

    #@5be
    const-wide/16 v40, 0x3e8

    #@5c0
    mul-long v38, v38, v40

    #@5c2
    .line 1592
    add-long v36, v36, v38

    #@5c4
    invoke-static/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@5c7
    move-result-object v36

    #@5c8
    move-object/from16 v0, v33

    #@5ca
    move-object/from16 v1, v36

    #@5cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cf
    move-result-object v33

    #@5d0
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d3
    move-result-object v13

    #@5d4
    .line 1594
    .local v13, "next":Ljava/lang/String;
    mul-int/lit8 v33, v12, 0x2

    #@5d6
    add-int v33, v33, v18

    #@5d8
    const/16 v36, 0x1

    #@5da
    move/from16 v0, v36

    #@5dc
    new-array v0, v0, [Ljava/lang/Object;

    #@5de
    move-object/from16 v36, v0

    #@5e0
    new-instance v37, Ljava/lang/StringBuilder;

    #@5e2
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@5e5
    move-object/from16 v0, v37

    #@5e7
    move-object/from16 v1, v16

    #@5e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ec
    move-result-object v37

    #@5ed
    const-string/jumbo v38, " "

    #@5f0
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f3
    move-result-object v37

    #@5f4
    move-object/from16 v0, v37

    #@5f6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f9
    move-result-object v37

    #@5fa
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fd
    move-result-object v37

    #@5fe
    const/16 v38, 0x0

    #@600
    aput-object v37, v36, v38

    #@602
    const/16 v37, 0xc

    #@604
    move-object/from16 v0, v29

    #@606
    move/from16 v1, v33

    #@608
    move/from16 v2, v37

    #@60a
    move-object/from16 v3, v36

    #@60c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@60f
    .line 1595
    mul-int/lit8 v33, v12, 0x2

    #@611
    add-int v33, v33, v18

    #@613
    add-int/lit8 v33, v33, 0x1

    #@615
    const/16 v36, 0x1

    #@617
    move/from16 v0, v36

    #@619
    new-array v0, v0, [Ljava/lang/Object;

    #@61b
    move-object/from16 v36, v0

    #@61d
    const/16 v37, 0x0

    #@61f
    aput-object v13, v36, v37

    #@621
    const/16 v37, 0xc

    #@623
    move-object/from16 v0, v29

    #@625
    move/from16 v1, v33

    #@627
    move/from16 v2, v37

    #@629
    move-object/from16 v3, v36

    #@62b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@62e
    .line 1585
    add-int/lit8 v12, v12, 0x1

    #@630
    goto/16 :goto_7

    #@632
    .line 1512
    .end local v4    # "account":Landroid/accounts/AccountAndUser;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v9    # "extras":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "next":Ljava/lang/String;
    .end local v16    # "period":Ljava/lang/String;
    .end local v18    # "row":I
    .end local v22    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v24    # "status":Landroid/content/SyncStatusInfo;
    .end local v25    # "sync":Landroid/content/PeriodicSync;
    .end local v26    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v27    # "syncAdapterType$iterator":Ljava/util/Iterator;
    .end local v28    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v29    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :catchall_0
    move-exception v33

    #@633
    monitor-exit v34

    #@634
    throw v33

    #@635
    .line 1591
    .restart local v4    # "account":Landroid/accounts/AccountAndUser;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v16    # "period":Ljava/lang/String;
    .restart local v18    # "row":I
    .restart local v22    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .restart local v24    # "status":Landroid/content/SyncStatusInfo;
    .restart local v25    # "sync":Landroid/content/PeriodicSync;
    .restart local v26    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v27    # "syncAdapterType$iterator":Ljava/util/Iterator;
    .restart local v28    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .restart local v29    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_8
    const-string/jumbo v9, "Bundle[]"

    #@638
    .restart local v9    # "extras":Ljava/lang/String;
    goto/16 :goto_8

    #@63a
    .line 1598
    .end local v9    # "extras":Ljava/lang/String;
    .end local v16    # "period":Ljava/lang/String;
    .end local v25    # "sync":Landroid/content/PeriodicSync;
    :cond_9
    move/from16 v19, v18

    #@63c
    .line 1599
    .local v19, "row1":I
    move-object/from16 v0, v22

    #@63e
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    #@640
    move-wide/from16 v36, v0

    #@642
    cmp-long v33, v36, v14

    #@644
    if-lez v33, :cond_a

    #@646
    .line 1600
    add-int/lit8 v20, v19, 0x1

    #@648
    .end local v19    # "row1":I
    .local v20, "row1":I
    const/16 v33, 0x1

    #@64a
    move/from16 v0, v33

    #@64c
    new-array v0, v0, [Ljava/lang/Object;

    #@64e
    move-object/from16 v33, v0

    #@650
    new-instance v36, Ljava/lang/StringBuilder;

    #@652
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    #@655
    const-string/jumbo v37, "D: "

    #@658
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65b
    move-result-object v36

    #@65c
    move-object/from16 v0, v22

    #@65e
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    #@660
    move-wide/from16 v38, v0

    #@662
    sub-long v38, v38, v14

    #@664
    const-wide/16 v40, 0x3e8

    #@666
    div-long v38, v38, v40

    #@668
    move-object/from16 v0, v36

    #@66a
    move-wide/from16 v1, v38

    #@66c
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@66f
    move-result-object v36

    #@670
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@673
    move-result-object v36

    #@674
    const/16 v37, 0x0

    #@676
    aput-object v36, v33, v37

    #@678
    const/16 v36, 0xc

    #@67a
    move-object/from16 v0, v29

    #@67c
    move/from16 v1, v19

    #@67e
    move/from16 v2, v36

    #@680
    move-object/from16 v3, v33

    #@682
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@685
    .line 1601
    move-object/from16 v0, v22

    #@687
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@689
    move-wide/from16 v36, v0

    #@68b
    cmp-long v33, v36, v14

    #@68d
    if-lez v33, :cond_e

    #@68f
    .line 1602
    add-int/lit8 v19, v20, 0x1

    #@691
    .end local v20    # "row1":I
    .restart local v19    # "row1":I
    const/16 v33, 0x1

    #@693
    move/from16 v0, v33

    #@695
    new-array v0, v0, [Ljava/lang/Object;

    #@697
    move-object/from16 v33, v0

    #@699
    new-instance v36, Ljava/lang/StringBuilder;

    #@69b
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    #@69e
    const-string/jumbo v37, "B: "

    #@6a1
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a4
    move-result-object v36

    #@6a5
    move-object/from16 v0, v22

    #@6a7
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@6a9
    move-wide/from16 v38, v0

    #@6ab
    sub-long v38, v38, v14

    #@6ad
    const-wide/16 v40, 0x3e8

    #@6af
    div-long v38, v38, v40

    #@6b1
    move-object/from16 v0, v36

    #@6b3
    move-wide/from16 v1, v38

    #@6b5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6b8
    move-result-object v36

    #@6b9
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6bc
    move-result-object v36

    #@6bd
    const/16 v37, 0x0

    #@6bf
    aput-object v36, v33, v37

    #@6c1
    const/16 v36, 0xc

    #@6c3
    move-object/from16 v0, v29

    #@6c5
    move/from16 v1, v20

    #@6c7
    move/from16 v2, v36

    #@6c9
    move-object/from16 v3, v33

    #@6cb
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@6ce
    .line 1603
    add-int/lit8 v20, v19, 0x1

    #@6d0
    .end local v19    # "row1":I
    .restart local v20    # "row1":I
    const/16 v33, 0x1

    #@6d2
    move/from16 v0, v33

    #@6d4
    new-array v0, v0, [Ljava/lang/Object;

    #@6d6
    move-object/from16 v33, v0

    #@6d8
    move-object/from16 v0, v22

    #@6da
    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@6dc
    move-wide/from16 v36, v0

    #@6de
    const-wide/16 v38, 0x3e8

    #@6e0
    div-long v36, v36, v38

    #@6e2
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6e5
    move-result-object v36

    #@6e6
    const/16 v37, 0x0

    #@6e8
    aput-object v36, v33, v37

    #@6ea
    const/16 v36, 0xc

    #@6ec
    move-object/from16 v0, v29

    #@6ee
    move/from16 v1, v19

    #@6f0
    move/from16 v2, v36

    #@6f2
    move-object/from16 v3, v33

    #@6f4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@6f7
    move/from16 v19, v20

    #@6f9
    .line 1607
    .end local v20    # "row1":I
    .restart local v19    # "row1":I
    :cond_a
    :goto_9
    move-object/from16 v0, v24

    #@6fb
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@6fd
    move-wide/from16 v36, v0

    #@6ff
    const-wide/16 v38, 0x0

    #@701
    cmp-long v33, v36, v38

    #@703
    if-eqz v33, :cond_b

    #@705
    .line 1608
    add-int/lit8 v20, v19, 0x1

    #@707
    .end local v19    # "row1":I
    .restart local v20    # "row1":I
    const/16 v33, 0x1

    #@709
    move/from16 v0, v33

    #@70b
    new-array v0, v0, [Ljava/lang/Object;

    #@70d
    move-object/from16 v33, v0

    #@70f
    new-instance v36, Ljava/lang/StringBuilder;

    #@711
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    #@714
    sget-object v37, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@716
    move-object/from16 v0, v24

    #@718
    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@71a
    move/from16 v38, v0

    #@71c
    aget-object v37, v37, v38

    #@71e
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@721
    move-result-object v36

    #@722
    .line 1609
    const-string/jumbo v37, " "

    #@725
    .line 1608
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@728
    move-result-object v36

    #@729
    .line 1609
    const-string/jumbo v37, "SUCCESS"

    #@72c
    .line 1608
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72f
    move-result-object v36

    #@730
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@733
    move-result-object v36

    #@734
    const/16 v37, 0x0

    #@736
    aput-object v36, v33, v37

    #@738
    const/16 v36, 0xb

    #@73a
    move-object/from16 v0, v29

    #@73c
    move/from16 v1, v19

    #@73e
    move/from16 v2, v36

    #@740
    move-object/from16 v3, v33

    #@742
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@745
    .line 1610
    add-int/lit8 v19, v20, 0x1

    #@747
    .end local v20    # "row1":I
    .restart local v19    # "row1":I
    const/16 v33, 0x1

    #@749
    move/from16 v0, v33

    #@74b
    new-array v0, v0, [Ljava/lang/Object;

    #@74d
    move-object/from16 v33, v0

    #@74f
    move-object/from16 v0, v24

    #@751
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@753
    move-wide/from16 v36, v0

    #@755
    invoke-static/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@758
    move-result-object v36

    #@759
    const/16 v37, 0x0

    #@75b
    aput-object v36, v33, v37

    #@75d
    const/16 v36, 0xb

    #@75f
    move-object/from16 v0, v29

    #@761
    move/from16 v1, v20

    #@763
    move/from16 v2, v36

    #@765
    move-object/from16 v3, v33

    #@767
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@76a
    .line 1612
    :cond_b
    move-object/from16 v0, v24

    #@76c
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@76e
    move-wide/from16 v36, v0

    #@770
    const-wide/16 v38, 0x0

    #@772
    cmp-long v33, v36, v38

    #@774
    if-eqz v33, :cond_6

    #@776
    .line 1613
    add-int/lit8 v20, v19, 0x1

    #@778
    .end local v19    # "row1":I
    .restart local v20    # "row1":I
    const/16 v33, 0x1

    #@77a
    move/from16 v0, v33

    #@77c
    new-array v0, v0, [Ljava/lang/Object;

    #@77e
    move-object/from16 v33, v0

    #@780
    new-instance v36, Ljava/lang/StringBuilder;

    #@782
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    #@785
    sget-object v37, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@787
    move-object/from16 v0, v24

    #@789
    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@78b
    move/from16 v38, v0

    #@78d
    aget-object v37, v37, v38

    #@78f
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@792
    move-result-object v36

    #@793
    .line 1614
    const-string/jumbo v37, " "

    #@796
    .line 1613
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@799
    move-result-object v36

    #@79a
    .line 1614
    const-string/jumbo v37, "FAILURE"

    #@79d
    .line 1613
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a0
    move-result-object v36

    #@7a1
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a4
    move-result-object v36

    #@7a5
    const/16 v37, 0x0

    #@7a7
    aput-object v36, v33, v37

    #@7a9
    const/16 v36, 0xb

    #@7ab
    move-object/from16 v0, v29

    #@7ad
    move/from16 v1, v19

    #@7af
    move/from16 v2, v36

    #@7b1
    move-object/from16 v3, v33

    #@7b3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@7b6
    .line 1615
    add-int/lit8 v19, v20, 0x1

    #@7b8
    .end local v20    # "row1":I
    .restart local v19    # "row1":I
    const/16 v33, 0x1

    #@7ba
    move/from16 v0, v33

    #@7bc
    new-array v0, v0, [Ljava/lang/Object;

    #@7be
    move-object/from16 v33, v0

    #@7c0
    move-object/from16 v0, v24

    #@7c2
    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@7c4
    move-wide/from16 v36, v0

    #@7c6
    invoke-static/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    #@7c9
    move-result-object v36

    #@7ca
    const/16 v37, 0x0

    #@7cc
    aput-object v36, v33, v37

    #@7ce
    const/16 v36, 0xb

    #@7d0
    move-object/from16 v0, v29

    #@7d2
    move/from16 v1, v20

    #@7d4
    move/from16 v2, v36

    #@7d6
    move-object/from16 v3, v33

    #@7d8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@7db
    .line 1617
    add-int/lit8 v20, v19, 0x1

    #@7dd
    .end local v19    # "row1":I
    .restart local v20    # "row1":I
    const/16 v33, 0x1

    #@7df
    move/from16 v0, v33

    #@7e1
    new-array v0, v0, [Ljava/lang/Object;

    #@7e3
    move-object/from16 v33, v0

    #@7e5
    move-object/from16 v0, v24

    #@7e7
    iget-object v0, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@7e9
    move-object/from16 v36, v0

    #@7eb
    const/16 v37, 0x0

    #@7ed
    aput-object v36, v33, v37

    #@7ef
    const/16 v36, 0xb

    #@7f1
    move-object/from16 v0, v29

    #@7f3
    move/from16 v1, v19

    #@7f5
    move/from16 v2, v36

    #@7f7
    move-object/from16 v3, v33

    #@7f9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    #@7fc
    goto/16 :goto_6

    #@7fe
    .line 1620
    .end local v8    # "authority":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v18    # "row":I
    .end local v20    # "row1":I
    .end local v22    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v24    # "status":Landroid/content/SyncStatusInfo;
    .end local v26    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v28    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    :cond_c
    move-object/from16 v0, v29

    #@800
    move-object/from16 v1, p1

    #@802
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    #@805
    .line 1524
    add-int/lit8 v33, v34, 0x1

    #@807
    move/from16 v34, v33

    #@809
    goto/16 :goto_5

    #@80b
    .line 1455
    .end local v4    # "account":Landroid/accounts/AccountAndUser;
    .end local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v27    # "syncAdapterType$iterator":Ljava/util/Iterator;
    .end local v29    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_d
    return-void

    #@80c
    .restart local v4    # "account":Landroid/accounts/AccountAndUser;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v18    # "row":I
    .restart local v20    # "row1":I
    .restart local v22    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v23    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .restart local v24    # "status":Landroid/content/SyncStatusInfo;
    .restart local v26    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v27    # "syncAdapterType$iterator":Ljava/util/Iterator;
    .restart local v28    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .restart local v29    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_e
    move/from16 v19, v20

    #@80e
    .end local v20    # "row1":I
    .restart local v19    # "row1":I
    goto/16 :goto_9
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
    .line 596
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@3
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 597
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
    .line 600
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    #@13
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 604
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@1b
    .line 605
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1d
    invoke-static {p3, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@20
    move-result-object v6

    #@21
    .line 604
    invoke-virtual {v5, v6, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@24
    move-result-object v3

    #@25
    .line 606
    .local v3, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v3, :cond_1

    #@27
    return v0

    #@28
    .line 600
    .end local v3    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return v0

    #@29
    .line 608
    .restart local v3    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_1
    const/4 v1, 0x0

    #@2a
    .line 610
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2d
    move-result-object v5

    #@2e
    .line 611
    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@30
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    const/4 v7, 0x0

    #@35
    .line 610
    invoke-interface {v5, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v1

    #@39
    .line 612
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2

    #@3b
    return v0

    #@3c
    .line 613
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@3d
    .line 615
    .local v2, "re":Landroid/os/RemoteException;
    return v0

    #@3e
    .line 617
    .end local v2    # "re":Landroid/os/RemoteException;
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@40
    if-eqz v5, :cond_3

    #@42
    .line 618
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@44
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v5

    #@4a
    .line 617
    if-eqz v5, :cond_3

    #@4c
    .line 619
    return v0

    #@4d
    .line 621
    :cond_3
    return v8
.end method

.method getPackageName(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;
    .locals 5
    .param p1, "endpoint"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3325
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 3326
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@7
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 3329
    :cond_0
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@e
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@10
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@12
    invoke-static {v2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@15
    move-result-object v1

    #@16
    .line 3331
    .local v1, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@18
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@1a
    invoke-virtual {v2, v1, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@1d
    move-result-object v0

    #@1e
    .line 3332
    .local v0, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v0, :cond_1

    #@20
    .line 3333
    return-object v4

    #@21
    .line 3335
    :cond_1
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 925
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
    .line 914
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@2
    invoke-virtual {v5, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@5
    move-result-object v3

    #@6
    .line 915
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@9
    move-result v5

    #@a
    new-array v4, v5, [Landroid/content/SyncAdapterType;

    #@c
    .line 916
    .local v4, "types":[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    #@d
    .line 917
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
    .line 918
    .local v1, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1f
    check-cast v5, Landroid/content/SyncAdapterType;

    #@21
    aput-object v5, v4, v0

    #@23
    .line 919
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 921
    .end local v1    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    return-object v0
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 6
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1156
    const-string/jumbo v2, "SyncManager"

    #@4
    const/4 v3, 0x3

    #@5
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    .line 1157
    .local v0, "isLoggable":Z
    if-eqz v0, :cond_0

    #@b
    .line 1158
    const-string/jumbo v2, "SyncManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "encountered error(s) during the sync: "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, ", "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1161
    :cond_0
    new-instance v1, Lcom/android/server/content/SyncOperation;

    #@32
    const-wide/16 v2, 0x0

    #@34
    invoke-direct {v1, p2, v2, v3}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;J)V

    #@37
    .line 1166
    .end local p2    # "operation":Lcom/android/server/content/SyncOperation;
    .local v1, "operation":Lcom/android/server/content/SyncOperation;
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@39
    const-string/jumbo v3, "ignore_backoff"

    #@3c
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_1

    #@42
    .line 1167
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@44
    const-string/jumbo v3, "ignore_backoff"

    #@47
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@4a
    .line 1170
    :cond_1
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@4c
    const-string/jumbo v3, "do_not_retry"

    #@4f
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_3

    #@55
    .line 1171
    if-eqz v0, :cond_2

    #@57
    .line 1172
    const-string/jumbo v2, "SyncManager"

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 1155
    :cond_2
    :goto_0
    return-void

    #@72
    .line 1175
    :cond_3
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@74
    const-string/jumbo v3, "upload"

    #@77
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_4

    #@7d
    .line 1176
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@7f
    if-eqz v2, :cond_5

    #@81
    .line 1184
    :cond_4
    iget-boolean v2, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    #@83
    if-eqz v2, :cond_7

    #@85
    .line 1187
    if-eqz v0, :cond_2

    #@87
    .line 1188
    const-string/jumbo v2, "SyncManager"

    #@8a
    new-instance v3, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v4, "not retrying sync operation because it retried too many times: "

    #@92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    goto :goto_0

    #@a2
    .line 1178
    :cond_5
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@a4
    const-string/jumbo v3, "upload"

    #@a7
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@aa
    .line 1179
    if-eqz v0, :cond_6

    #@ac
    .line 1180
    const-string/jumbo v2, "SyncManager"

    #@af
    new-instance v3, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v4, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    #@b7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v3

    #@c3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 1183
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@c9
    goto :goto_0

    #@ca
    .line 1191
    :cond_7
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    #@cd
    move-result v2

    #@ce
    if-eqz v2, :cond_9

    #@d0
    .line 1193
    if-eqz v0, :cond_8

    #@d2
    .line 1194
    const-string/jumbo v2, "SyncManager"

    #@d5
    const-string/jumbo v3, "retrying sync operation because even though it had an error it achieved some success"

    #@d8
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    .line 1197
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@de
    goto :goto_0

    #@df
    .line 1198
    :cond_9
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@e1
    if-eqz v2, :cond_b

    #@e3
    .line 1199
    if-eqz v0, :cond_a

    #@e5
    .line 1200
    const-string/jumbo v2, "SyncManager"

    #@e8
    new-instance v3, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v4, "retrying sync operation that failed because there was already a sync in progress: "

    #@f0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v3

    #@fc
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 1204
    :cond_a
    new-instance v2, Lcom/android/server/content/SyncOperation;

    #@101
    .line 1206
    const-wide/16 v4, 0x2710

    #@103
    .line 1204
    invoke-direct {v2, v1, v4, v5}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;J)V

    #@106
    .line 1203
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@109
    goto/16 :goto_0

    #@10b
    .line 1208
    :cond_b
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    #@10e
    move-result v2

    #@10f
    if-eqz v2, :cond_d

    #@111
    .line 1210
    if-eqz v0, :cond_c

    #@113
    .line 1211
    const-string/jumbo v2, "SyncManager"

    #@116
    new-instance v3, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v4, "retrying sync operation because it encountered a soft error: "

    #@11e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v3

    #@122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v3

    #@126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 1214
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@130
    goto/16 :goto_0

    #@132
    .line 1217
    :cond_d
    const-string/jumbo v2, "SyncManager"

    #@135
    new-instance v3, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v4, "not retrying sync operation because the error is a hard error: "

    #@13d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v3

    #@141
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v3

    #@145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v3

    #@149
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14c
    goto/16 :goto_0
.end method

.method onAppNotIdle(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1275
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@2
    monitor-enter v4

    #@3
    .line 1279
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@5
    invoke-virtual {v3}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .line 1280
    .local v2, "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    const/4 v0, 0x0

    #@e
    .line 1281
    .local v0, "changed":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_3

    #@14
    .line 1282
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/content/SyncOperation;

    #@1a
    .line 1283
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v1, Lcom/android/server/content/SyncOperation;->appIdle:Z

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 1284
    if-eqz p1, :cond_1

    #@20
    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@22
    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncManager;->getPackageName(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    .line 1283
    if-eqz v3, :cond_0

    #@2c
    .line 1285
    :cond_1
    const/4 v3, -0x1

    #@2d
    if-eq p2, v3, :cond_2

    #@2f
    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@31
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@33
    if-ne v3, p2, :cond_0

    #@35
    .line 1286
    :cond_2
    const/4 v3, 0x0

    #@36
    iput-boolean v3, v1, Lcom/android/server/content/SyncOperation;->appIdle:Z

    #@38
    .line 1287
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V

    #@3b
    .line 1288
    const/4 v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 1291
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_3
    if-eqz v0, :cond_4

    #@3f
    .line 1292
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :cond_4
    monitor-exit v4

    #@43
    .line 1274
    return-void

    #@44
    .line 1275
    .end local v0    # "changed":Z
    .end local v2    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v4

    #@46
    throw v3
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 904
    new-instance v5, Landroid/os/Bundle;

    #@2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 905
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "upload"

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 907
    sget-wide v6, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    #@e
    .line 908
    sget-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    #@10
    const-wide/16 v2, 0x2

    #@12
    mul-long v8, v2, v0

    #@14
    .line 909
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
    .line 906
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@1d
    .line 903
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    .locals 54
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
    .line 742
    const-string/jumbo v3, "SyncManager"

    #@3
    const/4 v4, 0x2

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v43

    #@8
    .line 744
    .local v43, "isLoggable":Z
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
    if-eqz v43, :cond_1

    #@11
    .line 748
    const-string/jumbo v3, "SyncManager"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "one-time sync for: "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, " "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    move-object/from16 v0, p4

    #@3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 751
    :cond_1
    const-string/jumbo v3, "expedited"

    #@4c
    const/4 v4, 0x0

    #@4d
    move-object/from16 v0, p5

    #@4f
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@52
    move-result v3

    #@53
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@56
    move-result-object v38

    #@57
    .line 752
    .local v38, "expedited":Ljava/lang/Boolean;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_2

    #@5d
    .line 753
    const-wide/16 p8, -0x1

    #@5f
    .line 757
    :cond_2
    if-eqz p1, :cond_6

    #@61
    const/4 v3, -0x1

    #@62
    move/from16 v0, p2

    #@64
    if-eq v0, v3, :cond_6

    #@66
    .line 758
    const/4 v3, 0x1

    #@67
    new-array v0, v3, [Landroid/accounts/AccountAndUser;

    #@69
    move-object/from16 v35, v0

    #@6b
    new-instance v3, Landroid/accounts/AccountAndUser;

    #@6d
    move-object/from16 v0, p1

    #@6f
    move/from16 v1, p2

    #@71
    invoke-direct {v3, v0, v1}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@74
    const/4 v4, 0x0

    #@75
    aput-object v3, v35, v4

    #@77
    .line 769
    .local v35, "accounts":[Landroid/accounts/AccountAndUser;
    :cond_3
    const-string/jumbo v3, "upload"

    #@7a
    const/4 v4, 0x0

    #@7b
    move-object/from16 v0, p5

    #@7d
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@80
    move-result v51

    #@81
    .line 770
    .local v51, "uploadOnly":Z
    const-string/jumbo v3, "force"

    #@84
    const/4 v4, 0x0

    #@85
    move-object/from16 v0, p5

    #@87
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@8a
    move-result v45

    #@8b
    .line 771
    .local v45, "manualSync":Z
    if-eqz v45, :cond_4

    #@8d
    .line 772
    const-string/jumbo v3, "ignore_backoff"

    #@90
    const/4 v4, 0x1

    #@91
    move-object/from16 v0, p5

    #@93
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@96
    .line 773
    const-string/jumbo v3, "ignore_settings"

    #@99
    const/4 v4, 0x1

    #@9a
    move-object/from16 v0, p5

    #@9c
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@9f
    .line 776
    :cond_4
    const-string/jumbo v3, "ignore_settings"

    #@a2
    const/4 v4, 0x0

    #@a3
    move-object/from16 v0, p5

    #@a5
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@a8
    move-result v40

    #@a9
    .line 779
    .local v40, "ignoreSettings":Z
    if-eqz v51, :cond_8

    #@ab
    .line 780
    const/4 v7, 0x1

    #@ac
    .line 791
    .local v7, "source":I
    :goto_0
    const/4 v3, 0x0

    #@ad
    move-object/from16 v0, v35

    #@af
    array-length v0, v0

    #@b0
    move/from16 v53, v0

    #@b2
    move/from16 v52, v3

    #@b4
    :goto_1
    move/from16 v0, v52

    #@b6
    move/from16 v1, v53

    #@b8
    if-ge v0, v1, :cond_19

    #@ba
    aget-object v2, v35, v52

    #@bc
    .line 793
    .local v2, "account":Landroid/accounts/AccountAndUser;
    if-ltz p2, :cond_b

    #@be
    iget v3, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@c0
    if-ltz v3, :cond_b

    #@c2
    .line 794
    iget v3, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@c4
    move/from16 v0, p2

    #@c6
    if-eq v0, v3, :cond_b

    #@c8
    .line 791
    :cond_5
    add-int/lit8 v3, v52, 0x1

    #@ca
    move/from16 v52, v3

    #@cc
    goto :goto_1

    #@cd
    .line 760
    .end local v2    # "account":Landroid/accounts/AccountAndUser;
    .end local v7    # "source":I
    .end local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v40    # "ignoreSettings":Z
    .end local v45    # "manualSync":Z
    .end local v51    # "uploadOnly":Z
    :cond_6
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@d1
    move-object/from16 v35, v0

    #@d3
    .line 761
    .restart local v35    # "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v35

    #@d5
    array-length v3, v0

    #@d6
    if-nez v3, :cond_3

    #@d8
    .line 762
    if-eqz v43, :cond_7

    #@da
    .line 763
    const-string/jumbo v3, "SyncManager"

    #@dd
    const-string/jumbo v4, "scheduleSync: no accounts configured, dropping"

    #@e0
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e3
    .line 765
    :cond_7
    return-void

    #@e4
    .line 781
    .restart local v40    # "ignoreSettings":Z
    .restart local v45    # "manualSync":Z
    .restart local v51    # "uploadOnly":Z
    :cond_8
    if-eqz v45, :cond_9

    #@e6
    .line 782
    const/4 v7, 0x3

    #@e7
    .restart local v7    # "source":I
    goto :goto_0

    #@e8
    .line 783
    .end local v7    # "source":I
    :cond_9
    if-nez p4, :cond_a

    #@ea
    .line 784
    const/4 v7, 0x2

    #@eb
    .restart local v7    # "source":I
    goto :goto_0

    #@ec
    .line 788
    .end local v7    # "source":I
    :cond_a
    const/4 v7, 0x0

    #@ed
    .restart local v7    # "source":I
    goto :goto_0

    #@ee
    .line 799
    .restart local v2    # "account":Landroid/accounts/AccountAndUser;
    :cond_b
    new-instance v50, Ljava/util/HashSet;

    #@f0
    invoke-direct/range {v50 .. v50}, Ljava/util/HashSet;-><init>()V

    #@f3
    .line 801
    .local v50, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@f5
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@f7
    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@f9
    invoke-virtual {v3, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    #@fc
    move-result-object v3

    #@fd
    .line 800
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@100
    move-result-object v47

    #@101
    .local v47, "syncAdapter$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    #@104
    move-result v3

    #@105
    if-eqz v3, :cond_c

    #@107
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10a
    move-result-object v46

    #@10b
    check-cast v46, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@10d
    .line 802
    .local v46, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v46

    #@10f
    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@111
    check-cast v3, Landroid/content/SyncAdapterType;

    #@113
    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@115
    move-object/from16 v0, v50

    #@117
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@11a
    goto :goto_2

    #@11b
    .line 808
    .end local v46    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_c
    if-eqz p4, :cond_d

    #@11d
    .line 809
    move-object/from16 v0, v50

    #@11f
    move-object/from16 v1, p4

    #@121
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@124
    move-result v39

    #@125
    .line 810
    .local v39, "hasSyncAdapter":Z
    invoke-virtual/range {v50 .. v50}, Ljava/util/HashSet;->clear()V

    #@128
    .line 811
    if-eqz v39, :cond_d

    #@12a
    move-object/from16 v0, v50

    #@12c
    move-object/from16 v1, p4

    #@12e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@131
    .line 814
    .end local v39    # "hasSyncAdapter":Z
    :cond_d
    invoke-interface/range {v50 .. v50}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@134
    move-result-object v36

    #@135
    .local v36, "authority$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    #@138
    move-result v3

    #@139
    if-eqz v3, :cond_5

    #@13b
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13e
    move-result-object v8

    #@13f
    check-cast v8, Ljava/lang/String;

    #@141
    .line 815
    .local v8, "authority":Ljava/lang/String;
    iget-object v3, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@143
    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@145
    move-object/from16 v0, p0

    #@147
    invoke-virtual {v0, v3, v4, v8}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    #@14a
    move-result v44

    #@14b
    .line 817
    .local v44, "isSyncable":I
    if-eqz v44, :cond_e

    #@14d
    .line 821
    move-object/from16 v0, p0

    #@14f
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@151
    .line 822
    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@153
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@155
    invoke-static {v8, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@158
    move-result-object v4

    #@159
    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@15b
    .line 821
    invoke-virtual {v3, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@15e
    move-result-object v48

    #@15f
    .line 823
    .local v48, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v48, :cond_e

    #@161
    .line 826
    move-object/from16 v0, v48

    #@163
    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@165
    check-cast v3, Landroid/content/SyncAdapterType;

    #@167
    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    #@16a
    move-result v18

    #@16b
    .line 827
    .local v18, "allowParallelSyncs":Z
    move-object/from16 v0, v48

    #@16d
    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@16f
    check-cast v3, Landroid/content/SyncAdapterType;

    #@171
    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    #@174
    move-result v42

    #@175
    .line 828
    .local v42, "isAlwaysSyncable":Z
    if-gez v44, :cond_f

    #@177
    if-eqz v42, :cond_f

    #@179
    .line 829
    move-object/from16 v0, p0

    #@17b
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@17d
    .line 830
    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@17f
    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@181
    const/4 v6, 0x1

    #@182
    .line 829
    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V

    #@185
    .line 831
    const/16 v44, 0x1

    #@187
    .line 833
    :cond_f
    if-eqz p10, :cond_10

    #@189
    if-gez v44, :cond_e

    #@18b
    .line 836
    :cond_10
    move-object/from16 v0, v48

    #@18d
    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@18f
    check-cast v3, Landroid/content/SyncAdapterType;

    #@191
    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    #@194
    move-result v3

    #@195
    if-nez v3, :cond_11

    #@197
    if-nez v51, :cond_e

    #@199
    .line 841
    :cond_11
    if-ltz v44, :cond_12

    #@19b
    if-nez v40, :cond_12

    #@19d
    .line 843
    move-object/from16 v0, p0

    #@19f
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1a1
    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@1a3
    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@1a6
    move-result v3

    #@1a7
    if-eqz v3, :cond_13

    #@1a9
    .line 844
    move-object/from16 v0, p0

    #@1ab
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1ad
    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@1af
    .line 845
    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@1b1
    .line 844
    invoke-virtual {v3, v4, v5, v8}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    #@1b4
    move-result v49

    #@1b5
    .line 846
    :goto_4
    if-nez v49, :cond_14

    #@1b7
    .line 847
    if-eqz v43, :cond_e

    #@1b9
    .line 848
    const-string/jumbo v3, "SyncManager"

    #@1bc
    new-instance v4, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    const-string/jumbo v5, "scheduleSync: sync of "

    #@1c4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v4

    #@1c8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v4

    #@1cc
    const-string/jumbo v5, ", "

    #@1cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v4

    #@1d3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v4

    #@1d7
    .line 849
    const-string/jumbo v5, " is not allowed, dropping request"

    #@1da
    .line 848
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v4

    #@1de
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v4

    #@1e2
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e5
    goto/16 :goto_3

    #@1e7
    .line 841
    :cond_12
    const/16 v49, 0x1

    #@1e9
    .local v49, "syncAllowed":Z
    goto :goto_4

    #@1ea
    .line 843
    .end local v49    # "syncAllowed":Z
    :cond_13
    const/16 v49, 0x0

    #@1ec
    .restart local v49    # "syncAllowed":Z
    goto :goto_4

    #@1ed
    .line 854
    .end local v49    # "syncAllowed":Z
    :cond_14
    new-instance v41, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1ef
    .line 855
    iget-object v3, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@1f1
    iget v4, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@1f3
    .line 854
    move-object/from16 v0, v41

    #@1f5
    invoke-direct {v0, v3, v8, v4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@1f8
    .line 856
    .local v41, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    #@1fa
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@1fc
    move-object/from16 v0, v41

    #@1fe
    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@201
    move-result-object v37

    #@202
    .line 858
    .local v37, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    #@204
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@206
    move-object/from16 v0, v41

    #@208
    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@20b
    move-result-wide v16

    #@20c
    .line 859
    .local v16, "delayUntil":J
    if-eqz v37, :cond_18

    #@20e
    move-object/from16 v0, v37

    #@210
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@212
    check-cast v3, Ljava/lang/Long;

    #@214
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@217
    move-result-wide v14

    #@218
    .line 860
    .local v14, "backoffTime":J
    :goto_5
    if-gez v44, :cond_16

    #@21a
    .line 862
    new-instance v9, Landroid/os/Bundle;

    #@21c
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@21f
    .line 863
    .local v9, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v3, "initialize"

    #@222
    const/4 v4, 0x1

    #@223
    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@226
    .line 864
    if-eqz v43, :cond_15

    #@228
    .line 865
    const-string/jumbo v3, "SyncManager"

    #@22b
    new-instance v4, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v5, "schedule initialisation Sync:, delay until "

    #@233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v4

    #@237
    move-wide/from16 v0, v16

    #@239
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v4

    #@23d
    .line 867
    const-string/jumbo v5, ", run by "

    #@240
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v4

    #@244
    .line 867
    const/4 v5, 0x0

    #@245
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@248
    move-result-object v4

    #@249
    .line 868
    const-string/jumbo v5, ", flex "

    #@24c
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v4

    #@250
    .line 868
    const/4 v5, 0x0

    #@251
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@254
    move-result-object v4

    #@255
    .line 869
    const-string/jumbo v5, ", source "

    #@258
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v4

    #@25c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v4

    #@260
    .line 870
    const-string/jumbo v5, ", account "

    #@263
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v4

    #@267
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v4

    #@26b
    .line 871
    const-string/jumbo v5, ", authority "

    #@26e
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v4

    #@272
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v4

    #@276
    .line 872
    const-string/jumbo v5, ", extras "

    #@279
    .line 865
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v4

    #@27d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@280
    move-result-object v4

    #@281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@284
    move-result-object v4

    #@285
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@288
    .line 875
    :cond_15
    new-instance v3, Lcom/android/server/content/SyncOperation;

    #@28a
    iget-object v4, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@28c
    iget v5, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@28e
    .line 876
    const-wide/16 v10, 0x0

    #@290
    const-wide/16 v12, 0x0

    #@292
    move/from16 v6, p3

    #@294
    .line 875
    invoke-direct/range {v3 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    #@297
    .line 874
    move-object/from16 v0, p0

    #@299
    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@29c
    .line 879
    .end local v9    # "newExtras":Landroid/os/Bundle;
    :cond_16
    if-nez p10, :cond_e

    #@29e
    .line 880
    if-eqz v43, :cond_17

    #@2a0
    .line 881
    const-string/jumbo v3, "SyncManager"

    #@2a3
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a8
    const-string/jumbo v5, "scheduleSync: delay until "

    #@2ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v4

    #@2af
    move-wide/from16 v0, v16

    #@2b1
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v4

    #@2b5
    .line 883
    const-string/jumbo v5, " run by "

    #@2b8
    .line 881
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bb
    move-result-object v4

    #@2bc
    move-wide/from16 v0, p8

    #@2be
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v4

    #@2c2
    .line 884
    const-string/jumbo v5, " flex "

    #@2c5
    .line 881
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v4

    #@2c9
    move-wide/from16 v0, p6

    #@2cb
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v4

    #@2cf
    .line 885
    const-string/jumbo v5, ", source "

    #@2d2
    .line 881
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v4

    #@2d6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v4

    #@2da
    .line 886
    const-string/jumbo v5, ", account "

    #@2dd
    .line 881
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v4

    #@2e1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v4

    #@2e5
    .line 887
    const-string/jumbo v5, ", authority "

    #@2e8
    .line 881
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v4

    #@2ec
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v4

    #@2f0
    .line 888
    const-string/jumbo v5, ", extras "

    #@2f3
    .line 881
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v4

    #@2f7
    move-object/from16 v0, p5

    #@2f9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v4

    #@2fd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@300
    move-result-object v4

    #@301
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@304
    .line 891
    :cond_17
    new-instance v19, Lcom/android/server/content/SyncOperation;

    #@306
    iget-object v0, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@308
    move-object/from16 v20, v0

    #@30a
    iget v0, v2, Landroid/accounts/AccountAndUser;->userId:I

    #@30c
    move/from16 v21, v0

    #@30e
    move/from16 v22, p3

    #@310
    move/from16 v23, v7

    #@312
    move-object/from16 v24, v8

    #@314
    move-object/from16 v25, p5

    #@316
    move-wide/from16 v26, p8

    #@318
    move-wide/from16 v28, p6

    #@31a
    move-wide/from16 v30, v14

    #@31c
    move-wide/from16 v32, v16

    #@31e
    move/from16 v34, v18

    #@320
    invoke-direct/range {v19 .. v34}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    #@323
    .line 890
    move-object/from16 v0, p0

    #@325
    move-object/from16 v1, v19

    #@327
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@32a
    goto/16 :goto_3

    #@32c
    .line 859
    .end local v14    # "backoffTime":J
    :cond_18
    const-wide/16 v14, 0x0

    #@32e
    .restart local v14    # "backoffTime":J
    goto/16 :goto_5

    #@330
    .line 741
    .end local v2    # "account":Landroid/accounts/AccountAndUser;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v14    # "backoffTime":J
    .end local v16    # "delayUntil":J
    .end local v18    # "allowParallelSyncs":Z
    .end local v36    # "authority$iterator":Ljava/util/Iterator;
    .end local v37    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v41    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v42    # "isAlwaysSyncable":Z
    .end local v44    # "isSyncable":I
    .end local v47    # "syncAdapter$iterator":Ljava/util/Iterator;
    .end local v48    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v50    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_19
    return-void
.end method

.method public scheduleSync(Landroid/content/ComponentName;IILandroid/os/Bundle;JJ)V
    .locals 25
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "beforeRunTimeMillis"    # J
    .param p7, "runtimeMillis"    # J

    #@0
    .prologue
    .line 645
    const-string/jumbo v4, "SyncManager"

    #@3
    const/4 v5, 0x2

    #@4
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v23

    #@8
    .line 646
    .local v23, "isLoggable":Z
    if-eqz v23, :cond_0

    #@a
    .line 647
    const-string/jumbo v4, "SyncManager"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "one off sync for: "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    const-string/jumbo v6, " "

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 650
    :cond_0
    const-string/jumbo v4, "expedited"

    #@38
    const/4 v5, 0x0

    #@39
    move-object/from16 v0, p4

    #@3b
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@3e
    move-result v4

    #@3f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@42
    move-result-object v19

    #@43
    .line 651
    .local v19, "expedited":Ljava/lang/Boolean;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_1

    #@49
    .line 652
    const-wide/16 p7, -0x1

    #@4b
    .line 656
    :cond_1
    const-string/jumbo v4, "ignore_settings"

    #@4e
    const/4 v5, 0x0

    #@4f
    move-object/from16 v0, p4

    #@51
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@54
    move-result v20

    #@55
    .line 657
    .local v20, "ignoreSettings":Z
    const/4 v8, 0x5

    #@56
    .line 658
    .local v8, "source":I
    move-object/from16 v0, p0

    #@58
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@5a
    move-object/from16 v0, p1

    #@5c
    move/from16 v1, p2

    #@5e
    invoke-virtual {v4, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    #@61
    move-result v22

    #@62
    .line 663
    .local v22, "isEnabled":Z
    if-nez v20, :cond_3

    #@64
    .line 664
    move-object/from16 v0, p0

    #@66
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@68
    move/from16 v0, p2

    #@6a
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@6d
    move-result v24

    #@6e
    .line 665
    :goto_0
    if-nez v24, :cond_4

    #@70
    .line 666
    if-eqz v23, :cond_2

    #@72
    .line 667
    const-string/jumbo v4, "SyncManager"

    #@75
    new-instance v5, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v6, "scheduleSync: sync of "

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    const-string/jumbo v6, " not allowed, dropping request."

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 669
    :cond_2
    return-void

    #@96
    .line 663
    :cond_3
    const/16 v24, 0x1

    #@98
    .local v24, "syncAllowed":Z
    goto :goto_0

    #@99
    .line 671
    .end local v24    # "syncAllowed":Z
    :cond_4
    if-nez v22, :cond_6

    #@9b
    .line 672
    if-eqz v23, :cond_5

    #@9d
    .line 673
    const-string/jumbo v4, "SyncManager"

    #@a0
    new-instance v5, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v6, "scheduleSync: "

    #@a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v5

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    const-string/jumbo v6, " is not enabled, dropping request"

    #@b5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 675
    :cond_5
    return-void

    #@c1
    .line 677
    :cond_6
    new-instance v21, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@c3
    move-object/from16 v0, v21

    #@c5
    move-object/from16 v1, p1

    #@c7
    move/from16 v2, p2

    #@c9
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    #@cc
    .line 678
    .local v21, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    #@ce
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@d0
    move-object/from16 v0, v21

    #@d2
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@d5
    move-result-object v18

    #@d6
    .line 679
    .local v18, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    #@d8
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@da
    move-object/from16 v0, v21

    #@dc
    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@df
    move-result-wide v16

    #@e0
    .line 680
    .local v16, "delayUntil":J
    if-eqz v18, :cond_8

    #@e2
    move-object/from16 v0, v18

    #@e4
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@e6
    check-cast v4, Ljava/lang/Long;

    #@e8
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@eb
    move-result-wide v14

    #@ec
    .line 681
    .local v14, "backoffTime":J
    :goto_1
    if-eqz v23, :cond_7

    #@ee
    .line 682
    const-string/jumbo v4, "SyncManager"

    #@f1
    new-instance v5, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v6, "schedule Sync:, delay until "

    #@f9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v5

    #@fd
    move-wide/from16 v0, v16

    #@ff
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    .line 684
    const-string/jumbo v6, ", run by "

    #@106
    .line 682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v5

    #@10a
    move-wide/from16 v0, p7

    #@10c
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v5

    #@110
    .line 685
    const-string/jumbo v6, ", flex "

    #@113
    .line 682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v5

    #@117
    move-wide/from16 v0, p5

    #@119
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v5

    #@11d
    .line 686
    const-string/jumbo v6, ", source "

    #@120
    .line 682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    .line 687
    const-string/jumbo v6, ", sync service "

    #@12b
    .line 682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v5

    #@12f
    move-object/from16 v0, p1

    #@131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    .line 688
    const-string/jumbo v6, ", extras "

    #@138
    .line 682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v5

    #@13c
    move-object/from16 v0, p4

    #@13e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v5

    #@142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v5

    #@146
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@149
    .line 691
    :cond_7
    new-instance v4, Lcom/android/server/content/SyncOperation;

    #@14b
    move-object/from16 v5, p1

    #@14d
    move/from16 v6, p2

    #@14f
    move/from16 v7, p3

    #@151
    move-object/from16 v9, p4

    #@153
    move-wide/from16 v10, p7

    #@155
    move-wide/from16 v12, p5

    #@157
    invoke-direct/range {v4 .. v17}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    #@15a
    .line 690
    move-object/from16 v0, p0

    #@15c
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@15f
    .line 644
    return-void

    #@160
    .line 680
    .end local v14    # "backoffTime":J
    :cond_8
    const-wide/16 v14, 0x0

    #@162
    .restart local v14    # "backoffTime":J
    goto :goto_1
.end method

.method public scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 1109
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@3
    monitor-enter v2

    #@4
    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    .local v0, "queueChanged":Z
    monitor-exit v2

    #@b
    .line 1113
    if-eqz v0, :cond_2

    #@d
    .line 1114
    const-string/jumbo v1, "SyncManager"

    #@10
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1115
    const-string/jumbo v1, "SyncManager"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "scheduleSyncOperation: enqueued "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1117
    :cond_0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    #@33
    .line 1107
    :cond_1
    :goto_0
    return-void

    #@34
    .line 1109
    .end local v0    # "queueChanged":Z
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1

    #@37
    .line 1119
    .restart local v0    # "queueChanged":Z
    :cond_2
    const-string/jumbo v1, "SyncManager"

    #@3a
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_1

    #@40
    .line 1120
    const-string/jumbo v1, "SyncManager"

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "scheduleSyncOperation: dropping duplicate sync operation "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    goto :goto_0
.end method

.method public updateRunningAccounts()V
    .locals 5

    #@0
    .prologue
    .line 318
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    #@7
    move-result-object v3

    #@8
    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@a
    .line 320
    iget-boolean v3, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 321
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    #@11
    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    #@13
    .line 325
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "currentSyncContext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@25
    .line 327
    .local v1, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@27
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@29
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@2b
    .line 328
    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2d
    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2f
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@31
    .line 326
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@34
    move-result v3

    #@35
    if-nez v3, :cond_1

    #@37
    .line 329
    const-string/jumbo v3, "SyncManager"

    #@3a
    const-string/jumbo v4, "canceling sync since the account is no longer running"

    #@3d
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 331
    const/4 v3, 0x0

    #@41
    .line 330
    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@44
    goto :goto_0

    #@45
    .line 336
    .end local v1    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    #@48
    .line 317
    return-void
.end method
