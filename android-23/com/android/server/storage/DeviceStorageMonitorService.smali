.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$1;,
        Lcom/android/server/storage/DeviceStorageMonitorService$2;,
        Lcom/android/server/storage/DeviceStorageMonitorService$3;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final DATA_PATH:Ljava/io/File;

.field static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field static final localLOGV:Z


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private final mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

.field mClearSucceeded:Z

.field mClearingCache:Z

.field private final mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private final mHandler:Landroid/os/Handler;

.field private final mIsBootImageOnDisk:Z

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field mMemLowThreshold:J

.field private final mRemoteService:Landroid/os/IBinder;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStorageFullIntent:Landroid/content/Intent;

.field private final mStorageLowIntent:Landroid/content/Intent;

.field private final mStorageNotFullIntent:Landroid/content/Intent;

.field private final mStorageOkIntent:Landroid/content/Intent;

.field private final mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private final mTotalMemory:J


# direct methods
.method static synthetic -get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 103
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    #@6
    .line 104
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    #@c
    .line 105
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    #@12
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/high16 v4, 0x4000000

    #@3
    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@6
    .line 94
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@8
    .line 95
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    #@a
    .line 107
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    #@e
    .line 108
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    #@10
    .line 142
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    #@15
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    #@17
    .line 377
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    #@1e
    .line 395
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    #@23
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    #@25
    .line 324
    const-wide/16 v0, 0x0

    #@27
    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    #@29
    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    #@2f
    .line 326
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    #@32
    move-result v0

    #@33
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    #@35
    .line 328
    new-instance v0, Landroid/os/StatFs;

    #@37
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    #@39
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@40
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    #@42
    .line 329
    new-instance v0, Landroid/os/StatFs;

    #@44
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    #@46
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@4d
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    #@4f
    .line 330
    new-instance v0, Landroid/os/StatFs;

    #@51
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    #@53
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@5a
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    #@5c
    .line 332
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    #@5e
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    #@61
    move-result v0

    #@62
    int-to-long v0, v0

    #@63
    .line 333
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    #@65
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    #@68
    move-result v2

    #@69
    int-to-long v2, v2

    #@6a
    .line 332
    mul-long/2addr v0, v2

    #@6b
    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    #@6d
    .line 334
    new-instance v0, Landroid/content/Intent;

    #@6f
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    #@72
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@75
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    #@77
    .line 335
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    #@79
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7c
    .line 336
    new-instance v0, Landroid/content/Intent;

    #@7e
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_OK"

    #@81
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@84
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    #@86
    .line 337
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    #@88
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@8b
    .line 338
    new-instance v0, Landroid/content/Intent;

    #@8d
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_FULL"

    #@90
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@93
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    #@95
    .line 339
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    #@97
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@9a
    .line 340
    new-instance v0, Landroid/content/Intent;

    #@9c
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    #@9f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a2
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    #@a4
    .line 341
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    #@a6
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a9
    .line 322
    return-void
.end method

.method private cancelFullNotification()V
    .locals 3

    #@0
    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    #@6
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@b
    .line 522
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    #@11
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    .line 519
    return-void
.end method

.method private cancelNotification()V
    .locals 5

    #@0
    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 500
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "notification"

    #@7
    .line 499
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/app/NotificationManager;

    #@d
    .line 502
    .local v1, "mNotificationMgr":Landroid/app/NotificationManager;
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@f
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x1

    #@11
    invoke-virtual {v1, v3, v4, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@14
    .line 504
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    #@16
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@18
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1b
    .line 505
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    #@1d
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1f
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@22
    .line 495
    return-void
.end method

.method private clearCache()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 217
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 219
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    #@8
    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;)V

    #@b
    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    #@d
    .line 221
    :cond_0
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    #@10
    .line 224
    :try_start_0
    const-string/jumbo v1, "package"

    #@13
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@1a
    move-result-object v1

    #@1b
    .line 225
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    #@1d
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    #@1f
    const/4 v5, 0x0

    #@20
    .line 224
    invoke-interface {v1, v5, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 216
    :goto_0
    return-void

    #@24
    .line 226
    :catch_0
    move-exception v0

    #@25
    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceStorageMonitorService"

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Failed to get handle for PackageManger Exception: "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 228
    iput-boolean v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    #@41
    .line 229
    iput-boolean v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    #@43
    goto :goto_0
.end method

.method private static isBootImageOnDisk()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 345
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    array-length v4, v3

    #@6
    move v1, v2

    #@7
    .local v0, "instructionSet":Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_1

    #@9
    aget-object v0, v3, v1

    #@b
    .line 346
    invoke-static {v0}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_0

    #@11
    .line 347
    return v2

    #@12
    .line 345
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 350
    :cond_1
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method private restatDataDir()V
    .locals 22

    #@0
    .prologue
    .line 166
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    #@4
    move-object/from16 v18, v0

    #@6
    sget-object v19, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    #@8
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@b
    move-result-object v19

    #@c
    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    #@f
    .line 167
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    #@13
    move-object/from16 v18, v0

    #@15
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@18
    move-result v18

    #@19
    move/from16 v0, v18

    #@1b
    int-to-long v0, v0

    #@1c
    move-wide/from16 v18, v0

    #@1e
    .line 168
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    #@22
    move-object/from16 v20, v0

    #@24
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    #@27
    move-result v20

    #@28
    move/from16 v0, v20

    #@2a
    int-to-long v0, v0

    #@2b
    move-wide/from16 v20, v0

    #@2d
    .line 167
    mul-long v18, v18, v20

    #@2f
    move-wide/from16 v0, v18

    #@31
    move-object/from16 v2, p0

    #@33
    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    #@35
    .line 173
    :goto_0
    const-string/jumbo v18, "debug.freemem"

    #@38
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 174
    .local v6, "debugFreeMem":Ljava/lang/String;
    const-string/jumbo v18, ""

    #@3f
    move-object/from16 v0, v18

    #@41
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v18

    #@45
    if-nez v18, :cond_0

    #@47
    .line 175
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4a
    move-result-wide v18

    #@4b
    move-wide/from16 v0, v18

    #@4d
    move-object/from16 v2, p0

    #@4f
    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@51
    .line 178
    :cond_0
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    #@55
    move-object/from16 v18, v0

    #@57
    .line 179
    const-string/jumbo v19, "sys_free_storage_log_interval"

    #@5a
    .line 180
    const-wide/16 v20, 0x2d0

    #@5c
    .line 178
    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@5f
    move-result-wide v18

    #@60
    .line 180
    const-wide/16 v20, 0x3c

    #@62
    .line 178
    mul-long v18, v18, v20

    #@64
    .line 180
    const-wide/16 v20, 0x3e8

    #@66
    .line 178
    mul-long v10, v18, v20

    #@68
    .line 182
    .local v10, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6b
    move-result-wide v4

    #@6c
    .line 183
    .local v4, "currTime":J
    move-object/from16 v0, p0

    #@6e
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    #@70
    move-wide/from16 v18, v0

    #@72
    const-wide/16 v20, 0x0

    #@74
    cmp-long v18, v18, v20

    #@76
    if-eqz v18, :cond_1

    #@78
    .line 184
    move-object/from16 v0, p0

    #@7a
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    #@7c
    move-wide/from16 v18, v0

    #@7e
    sub-long v18, v4, v18

    #@80
    cmp-long v18, v18, v10

    #@82
    if-ltz v18, :cond_2

    #@84
    .line 185
    :cond_1
    move-object/from16 v0, p0

    #@86
    iput-wide v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    #@88
    .line 186
    const-wide/16 v14, -0x1

    #@8a
    .local v14, "mFreeSystem":J
    const-wide/16 v12, -0x1

    #@8c
    .line 188
    .local v12, "mFreeCache":J
    :try_start_1
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    #@90
    move-object/from16 v18, v0

    #@92
    sget-object v19, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    #@94
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@97
    move-result-object v19

    #@98
    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    #@9b
    .line 189
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    #@9f
    move-object/from16 v18, v0

    #@a1
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@a4
    move-result v18

    #@a5
    move/from16 v0, v18

    #@a7
    int-to-long v0, v0

    #@a8
    move-wide/from16 v18, v0

    #@aa
    .line 190
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    #@ae
    move-object/from16 v20, v0

    #@b0
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@b3
    move-result v20

    #@b4
    move/from16 v0, v20

    #@b6
    int-to-long v0, v0

    #@b7
    move-wide/from16 v20, v0

    #@b9
    .line 189
    mul-long v14, v18, v20

    #@bb
    .line 195
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    #@bf
    move-object/from16 v18, v0

    #@c1
    sget-object v19, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    #@c3
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@c6
    move-result-object v19

    #@c7
    invoke-virtual/range {v18 .. v19}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    #@ca
    .line 196
    move-object/from16 v0, p0

    #@cc
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    #@ce
    move-object/from16 v18, v0

    #@d0
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@d3
    move-result v18

    #@d4
    move/from16 v0, v18

    #@d6
    int-to-long v0, v0

    #@d7
    move-wide/from16 v18, v0

    #@d9
    .line 197
    move-object/from16 v0, p0

    #@db
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    #@dd
    move-object/from16 v20, v0

    #@df
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    #@e2
    move-result v20

    #@e3
    move/from16 v0, v20

    #@e5
    int-to-long v0, v0

    #@e6
    move-wide/from16 v20, v0

    #@e8
    .line 196
    mul-long v12, v18, v20

    #@ea
    .line 201
    :goto_2
    const/16 v18, 0x3

    #@ec
    move/from16 v0, v18

    #@ee
    new-array v0, v0, [Ljava/lang/Object;

    #@f0
    move-object/from16 v18, v0

    #@f2
    .line 202
    move-object/from16 v0, p0

    #@f4
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@f6
    move-wide/from16 v20, v0

    #@f8
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@fb
    move-result-object v19

    #@fc
    const/16 v20, 0x0

    #@fe
    aput-object v19, v18, v20

    #@100
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@103
    move-result-object v19

    #@104
    const/16 v20, 0x1

    #@106
    aput-object v19, v18, v20

    #@108
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10b
    move-result-object v19

    #@10c
    const/16 v20, 0x2

    #@10e
    aput-object v19, v18, v20

    #@110
    .line 201
    const/16 v19, 0xaba

    #@112
    move/from16 v0, v19

    #@114
    move-object/from16 v1, v18

    #@116
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@119
    .line 205
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :cond_2
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    #@11d
    move-object/from16 v18, v0

    #@11f
    .line 206
    const-string/jumbo v19, "disk_free_change_reporting_threshold"

    #@122
    .line 207
    const-wide/32 v20, 0x200000

    #@125
    .line 205
    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@128
    move-result-wide v16

    #@129
    .line 209
    .local v16, "threshold":J
    move-object/from16 v0, p0

    #@12b
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@12d
    move-wide/from16 v18, v0

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    #@133
    move-wide/from16 v20, v0

    #@135
    sub-long v8, v18, v20

    #@137
    .line 210
    .local v8, "delta":J
    cmp-long v18, v8, v16

    #@139
    if-gtz v18, :cond_3

    #@13b
    move-wide/from16 v0, v16

    #@13d
    neg-long v0, v0

    #@13e
    move-wide/from16 v18, v0

    #@140
    cmp-long v18, v8, v18

    #@142
    if-gez v18, :cond_4

    #@144
    .line 211
    :cond_3
    move-object/from16 v0, p0

    #@146
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@148
    move-wide/from16 v18, v0

    #@14a
    move-wide/from16 v0, v18

    #@14c
    move-object/from16 v2, p0

    #@14e
    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    #@150
    .line 212
    move-object/from16 v0, p0

    #@152
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@154
    move-wide/from16 v18, v0

    #@156
    const/16 v20, 0xab8

    #@158
    move/from16 v0, v20

    #@15a
    move-wide/from16 v1, v18

    #@15c
    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@15f
    .line 164
    :cond_4
    return-void

    #@160
    .line 198
    .end local v8    # "delta":J
    .end local v16    # "threshold":J
    .restart local v12    # "mFreeCache":J
    .restart local v14    # "mFreeSystem":J
    :catch_0
    move-exception v7

    #@161
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    #@162
    .line 191
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    #@163
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_1

    #@165
    .line 169
    .end local v4    # "currTime":J
    .end local v6    # "debugFreeMem":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "freeMemLogInterval":J
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :catch_2
    move-exception v7

    #@166
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0
.end method

.method private sendFullNotification()V
    .locals 3

    #@0
    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    #@6
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@b
    .line 511
    return-void
.end method

.method private sendNotification()V
    .locals 14

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 453
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    .line 456
    .local v0, "context":Landroid/content/Context;
    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@9
    const/16 v3, 0xab9

    #@b
    invoke-static {v3, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@e
    .line 458
    new-instance v2, Landroid/content/Intent;

    #@10
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 459
    const-string/jumbo v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    #@19
    .line 458
    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1c
    .line 461
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string/jumbo v3, "memory"

    #@1f
    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@21
    invoke-virtual {v2, v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@24
    .line 462
    const/high16 v3, 0x10000000

    #@26
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@29
    .line 465
    const-string/jumbo v3, "notification"

    #@2c
    .line 464
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2f
    move-result-object v8

    #@30
    check-cast v8, Landroid/app/NotificationManager;

    #@32
    .line 467
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    const v3, 0x104033f

    #@35
    .line 466
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@38
    move-result-object v10

    #@39
    .line 468
    .local v10, "title":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    #@3b
    if-eqz v3, :cond_1

    #@3d
    .line 469
    const v3, 0x1040340

    #@40
    .line 468
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@43
    move-result-object v6

    #@44
    .line 472
    .local v6, "details":Ljava/lang/CharSequence;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@46
    move v3, v1

    #@47
    .line 471
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@4a
    move-result-object v7

    #@4b
    .line 473
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    #@4d
    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@50
    .line 474
    const v3, 0x1080639

    #@53
    .line 473
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@5a
    move-result-object v1

    #@5b
    .line 477
    const v3, 0x1060059

    #@5e
    .line 476
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    #@61
    move-result v3

    #@62
    .line 473
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@71
    move-result-object v1

    #@72
    .line 481
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    #@74
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    #@77
    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@7a
    move-result-object v3

    #@7b
    .line 473
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@82
    move-result-object v1

    #@83
    .line 484
    const-string/jumbo v3, "sys"

    #@86
    .line 473
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@8d
    move-result-object v9

    #@8e
    .line 486
    .local v9, "notification":Landroid/app/Notification;
    iget v1, v9, Landroid/app/Notification;->flags:I

    #@90
    or-int/lit8 v1, v1, 0x20

    #@92
    iput v1, v9, Landroid/app/Notification;->flags:I

    #@94
    .line 488
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@96
    .line 487
    invoke-virtual {v8, v4, v11, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@99
    .line 489
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    #@9b
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9d
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@a0
    .line 452
    return-void

    #@a1
    .line 460
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    #@a4
    goto/16 :goto_0

    #@a6
    .line 470
    .restart local v2    # "lowMemIntent":Landroid/content/Intent;
    .restart local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    const v3, 0x1040341

    #@a9
    goto :goto_1
.end method


# virtual methods
.method checkMemory(Z)V
    .locals 10
    .param p1, "checkCache"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 238
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v2

    #@a
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    #@c
    sub-long v0, v2, v4

    #@e
    .line 242
    .local v0, "diffTime":J
    const-wide/32 v2, 0x927c0

    #@11
    cmp-long v2, v0, v2

    #@13
    if-lez v2, :cond_0

    #@15
    .line 243
    const-string/jumbo v2, "DeviceStorageMonitorService"

    #@18
    const-string/jumbo v3, "Thread that clears cache file seems to run for ever"

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 311
    .end local v0    # "diffTime":J
    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    #@21
    invoke-virtual {p0, v9, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    #@24
    .line 233
    return-void

    #@25
    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->restatDataDir()V

    #@28
    .line 250
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@2a
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@2c
    cmp-long v2, v2, v4

    #@2e
    if-gez v2, :cond_5

    #@30
    .line 251
    if-eqz p1, :cond_4

    #@32
    .line 257
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@34
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    #@36
    cmp-long v2, v2, v4

    #@38
    if-gez v2, :cond_2

    #@3a
    .line 260
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    #@3c
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@3e
    sub-long/2addr v2, v4

    #@3f
    .line 261
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@41
    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    #@43
    sub-long/2addr v4, v6

    #@44
    const-wide/16 v6, 0x4

    #@46
    div-long/2addr v4, v6

    #@47
    .line 260
    cmp-long v2, v2, v4

    #@49
    if-ltz v2, :cond_2

    #@4b
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4e
    move-result-wide v2

    #@4f
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    #@51
    .line 266
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    #@53
    .line 267
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->clearCache()V

    #@56
    .line 293
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@58
    if-nez v2, :cond_3

    #@5a
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    #@5c
    if-eqz v2, :cond_6

    #@5e
    .line 297
    :cond_3
    :goto_2
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@60
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    #@62
    cmp-long v2, v2, v4

    #@64
    if-gez v2, :cond_7

    #@66
    .line 298
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    #@68
    if-nez v2, :cond_0

    #@6a
    .line 299
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendFullNotification()V

    #@6d
    .line 300
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    #@6f
    goto :goto_0

    #@70
    .line 273
    :cond_4
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@72
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    #@74
    .line 274
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@76
    if-nez v2, :cond_2

    #@78
    .line 277
    const-string/jumbo v2, "DeviceStorageMonitorService"

    #@7b
    const-string/jumbo v3, "Running low on memory. Sending notification"

    #@7e
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 278
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    #@84
    .line 279
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@86
    goto :goto_1

    #@87
    .line 286
    :cond_5
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@89
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    #@8b
    .line 287
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@8d
    if-eqz v2, :cond_2

    #@8f
    .line 288
    const-string/jumbo v2, "DeviceStorageMonitorService"

    #@92
    const-string/jumbo v3, "Memory available. Cancelling notification"

    #@95
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 289
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    #@9b
    .line 290
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@9d
    goto :goto_1

    #@9e
    .line 294
    :cond_6
    const-string/jumbo v2, "DeviceStorageMonitorService"

    #@a1
    const-string/jumbo v3, "No boot image on disk due to lack of space. Sending notification"

    #@a4
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    .line 295
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    #@aa
    goto :goto_2

    #@ab
    .line 303
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    #@ad
    if-eqz v2, :cond_0

    #@af
    .line 304
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelFullNotification()V

    #@b2
    .line 305
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    #@b4
    goto/16 :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "Current DeviceStorageMonitor state:"

    #@7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 416
    const-string/jumbo v1, "  mFreeMem="

    #@d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    #@12
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 417
    const-string/jumbo v1, " mTotalMemory="

    #@1c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    .line 418
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    #@21
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 420
    const-string/jumbo v1, "  mFreeMemAfterLastCacheClear="

    #@2b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    .line 421
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    #@30
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 423
    const-string/jumbo v1, "  mLastReportedFreeMem="

    #@3a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 424
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    #@3f
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 425
    const-string/jumbo v1, " mLastReportedFreeMemTime="

    #@49
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 426
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    #@4e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@51
    move-result-wide v4

    #@52
    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@55
    .line 427
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@58
    .line 429
    const-string/jumbo v1, "  mLowMemFlag="

    #@5b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@60
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@63
    .line 430
    const-string/jumbo v1, " mMemFullFlag="

    #@66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    #@6b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@6e
    .line 431
    const-string/jumbo v1, " mIsBootImageOnDisk="

    #@71
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    #@76
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@79
    .line 433
    const-string/jumbo v1, "  mClearSucceeded="

    #@7c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    #@81
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@84
    .line 434
    const-string/jumbo v1, " mClearingCache="

    #@87
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    #@8c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@8f
    .line 436
    const-string/jumbo v1, "  mMemLowThreshold="

    #@92
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    .line 437
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@97
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    .line 438
    const-string/jumbo v1, " mMemFullThreshold="

    #@a1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a4
    .line 439
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    #@a6
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ad
    .line 441
    const-string/jumbo v1, "  mMemCacheStartTrimThreshold="

    #@b0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    .line 442
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    #@b5
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    .line 443
    const-string/jumbo v1, " mMemCacheTrimToThreshold="

    #@bf
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    .line 444
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    #@c4
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 411
    return-void
.end method

.method public onStart()V
    .locals 8

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@7
    move-result-object v0

    #@8
    .line 361
    .local v0, "sm":Landroid/os/storage/StorageManager;
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    #@a
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@d
    move-result-wide v2

    #@e
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@10
    .line 362
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    #@12
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    #@18
    .line 364
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@1a
    const-wide/16 v4, 0x3

    #@1c
    mul-long/2addr v2, v4

    #@1d
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    #@1f
    add-long/2addr v2, v4

    #@20
    const-wide/16 v4, 0x4

    #@22
    div-long/2addr v2, v4

    #@23
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    #@25
    .line 365
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@27
    .line 366
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@29
    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    #@2b
    sub-long/2addr v4, v6

    #@2c
    const-wide/16 v6, 0x2

    #@2e
    mul-long/2addr v4, v6

    #@2f
    .line 365
    add-long/2addr v2, v4

    #@30
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    #@32
    .line 367
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    #@34
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    #@36
    .line 368
    const/4 v1, 0x1

    #@37
    invoke-virtual {p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    #@3a
    .line 370
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    #@3c
    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    #@3f
    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    #@41
    .line 371
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    #@43
    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    #@46
    .line 373
    const-string/jumbo v1, "devicestoragemonitor"

    #@49
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    #@4b
    invoke-virtual {p0, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@4e
    .line 374
    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    #@50
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    #@52
    invoke-virtual {p0, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@55
    .line 358
    return-void
.end method

.method postCheckMemoryMsg(ZJ)V
    .locals 6
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 316
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 317
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    #@b
    .line 318
    if-eqz p1, :cond_0

    #@d
    move v0, v1

    #@e
    .line 317
    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@15
    .line 314
    return-void

    #@16
    :cond_0
    move v0, v2

    #@17
    .line 318
    goto :goto_0
.end method
