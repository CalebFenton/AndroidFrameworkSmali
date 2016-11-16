.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$1;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$PackageReceiver;,
        Lcom/android/server/usage/UsageStatsService$SettingsObserver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EVENT:I = 0x0

.field private static final ONE_MINUTE:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleScreenThresholdMillis:J

.field mAppIdleTempParoled:Z

.field mAppIdleWallclockThresholdMillis:J

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCharging:Z

.field mCheckIdleIntervalMillis:J

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

.field private mHaveCarrierPrivilegedApps:Z

.field private mLastAppIdleParoledTime:J

.field private final mLock:Ljava/lang/Object;

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mRealTimeSnapshot:J

.field private mSystemServicesReady:Z

.field mSystemTimeSnapshot:J

.field private mUsageStatsDir:Ljava/io/File;

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/AppIdleHistory;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;IIJ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usage/UsageStatsService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->isDisplayOn()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/usage/UsageStatsService;)J
    .locals 2

    #@0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 125
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@a
    .line 136
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@11
    .line 147
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    #@14
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@1b
    .line 296
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    #@1d
    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    #@20
    .line 295
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@22
    .line 158
    return-void
.end method

.method private checkAndGetTimeLocked()J
    .locals 18

    #@0
    .prologue
    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 586
    .local v4, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    .line 587
    .local v2, "actualRealtime":J
    move-object/from16 v0, p0

    #@a
    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    #@c
    sub-long v14, v2, v14

    #@e
    move-object/from16 v0, p0

    #@10
    iget-wide v0, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    #@12
    move-wide/from16 v16, v0

    #@14
    add-long v8, v14, v16

    #@16
    .line 588
    .local v8, "expectedSystemTime":J
    sub-long v6, v4, v8

    #@18
    .line 589
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@1b
    move-result-wide v14

    #@1c
    const-wide/16 v16, 0x7d0

    #@1e
    cmp-long v13, v14, v16

    #@20
    if-lez v13, :cond_1

    #@22
    .line 591
    const-string/jumbo v13, "UsageStatsService"

    #@25
    new-instance v14, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v15, "Time changed in UsageStats by "

    #@2d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v14

    #@31
    const-wide/16 v16, 0x3e8

    #@33
    div-long v16, v6, v16

    #@35
    move-wide/from16 v0, v16

    #@37
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v14

    #@3b
    const-string/jumbo v15, " seconds"

    #@3e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v14

    #@42
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v14

    #@46
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 592
    move-object/from16 v0, p0

    #@4b
    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@4d
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    #@50
    move-result v12

    #@51
    .line 593
    .local v12, "userCount":I
    const/4 v10, 0x0

    #@52
    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    #@54
    .line 594
    move-object/from16 v0, p0

    #@56
    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@58
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v11

    #@5c
    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    #@5e
    .line 595
    .local v11, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v11, v8, v9, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    #@61
    .line 593
    add-int/lit8 v10, v10, 0x1

    #@63
    goto :goto_0

    #@64
    .line 597
    .end local v11    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    move-object/from16 v0, p0

    #@66
    iput-wide v2, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    #@68
    .line 598
    move-object/from16 v0, p0

    #@6a
    iput-wide v4, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    #@6c
    .line 600
    .end local v10    # "i":I
    .end local v12    # "userCount":I
    :cond_1
    return-wide v4
.end method

.method private cleanUpRemovedUsersLocked()V
    .locals 10

    #@0
    .prologue
    .line 352
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    #@2
    const/4 v8, 0x1

    #@3
    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@6
    move-result-object v6

    #@7
    .line 353
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_0

    #@9
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@c
    move-result v7

    #@d
    if-nez v7, :cond_1

    #@f
    .line 354
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v8, "There can\'t be no users"

    #@14
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v7

    #@18
    .line 357
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    #@1a
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@1d
    .line 358
    .local v3, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@1f
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 359
    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_2

    #@25
    .line 361
    return-void

    #@26
    .line 364
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@2d
    .line 366
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@30
    move-result v4

    #@31
    .line 367
    .local v4, "userCount":I
    const/4 v2, 0x0

    #@32
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@34
    .line 368
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Landroid/content/pm/UserInfo;

    #@3a
    .line 369
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@3c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@43
    .line 367
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 372
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@49
    move-result v0

    #@4a
    .line 373
    .local v0, "deleteCount":I
    const/4 v2, 0x0

    #@4b
    :goto_1
    if-ge v2, v0, :cond_4

    #@4d
    .line 374
    new-instance v8, Ljava/io/File;

    #@4f
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@51
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@54
    move-result-object v7

    #@55
    check-cast v7, Ljava/lang/String;

    #@57
    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5a
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    #@5d
    .line 373
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 351
    :cond_4
    return-void
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 6
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    #@0
    .prologue
    .line 608
    const-wide/16 v0, 0x0

    #@2
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@4
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    #@6
    sub-long/2addr v2, v4

    #@7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@a
    move-result-wide v0

    #@b
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@10
    .line 607
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 557
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 558
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    #@6
    .line 559
    const/4 v2, 0x0

    #@7
    array-length v3, v0

    #@8
    :goto_0
    if-ge v2, v3, :cond_0

    #@a
    aget-object v1, v0, v2

    #@c
    .line 560
    .local v1, "subFile":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    #@f
    .line 559
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 564
    .end local v1    # "subFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 565
    const-string/jumbo v2, "UsageStatsService"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Failed to delete "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 556
    :cond_1
    return-void
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .locals 3

    #@0
    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    const-class v2, Landroid/telephony/TelephonyManager;

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@c
    .line 986
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    #@12
    .line 987
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    #@15
    .line 983
    return-void
.end method

.method private flushToDiskLocked()V
    .locals 5

    #@0
    .prologue
    .line 1017
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v2

    #@6
    .line 1018
    .local v2, "userCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 1019
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    #@11
    .line 1020
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@14
    .line 1021
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@16
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimesLocked(I)V

    #@1f
    .line 1018
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1025
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@24
    invoke-virtual {v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurationsLocked()V

    #@27
    .line 1026
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@2d
    .line 1016
    return-void
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    #@8
    .line 572
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_0

    #@a
    .line 573
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    #@c
    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    .line 574
    new-instance v2, Ljava/io/File;

    #@12
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    .line 573
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    #@1e
    .line 575
    .restart local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    #@21
    .line 576
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@26
    .line 578
    :cond_0
    return-object v0
.end method

.method private initializeDefaultsForSystemApps(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 330
    const-string/jumbo v7, "UsageStatsService"

    #@3
    new-instance v8, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v9, "Initializing defaults for system apps on user "

    #@b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v8

    #@f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v0

    #@1e
    .line 332
    .local v0, "elapsedRealtime":J
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@20
    .line 333
    const/16 v8, 0x200

    #@22
    .line 332
    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    #@25
    move-result-object v5

    #@26
    .line 335
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@29
    move-result v3

    #@2a
    .line 336
    .local v3, "packageCount":I
    const/4 v2, 0x0

    #@2b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@2d
    .line 337
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Landroid/content/pm/PackageInfo;

    #@33
    .line 338
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@35
    .line 339
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@37
    if-eqz v7, :cond_0

    #@39
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_0

    #@41
    .line 340
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@43
    invoke-virtual {v7, v4, p1, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->reportUsageLocked(Ljava/lang/String;IJ)V

    #@46
    .line 336
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .line 329
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method private isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@c
    .line 947
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    #@e
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 948
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    #@13
    move-result v1

    #@14
    return v1
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    .line 995
    const-string/jumbo v2, "network_score"

    #@7
    .line 994
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/NetworkScoreManager;

    #@d
    .line 996
    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    if-eqz p1, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    :goto_0
    return v1

    #@18
    :cond_0
    const/4 v1, 0x0

    #@19
    goto :goto_0
.end method

.method private isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 817
    if-nez p1, :cond_0

    #@3
    return v2

    #@4
    .line 819
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@6
    if-nez v1, :cond_1

    #@8
    .line 820
    return v2

    #@9
    .line 822
    :cond_1
    const/16 v1, 0x2710

    #@b
    if-ge p2, v1, :cond_2

    #@d
    .line 824
    return v2

    #@e
    .line 826
    :cond_2
    const-string/jumbo v1, "android"

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 829
    return v2

    #@18
    .line 831
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    #@1a
    if-eqz v1, :cond_8

    #@1c
    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@1e
    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 837
    return v2

    #@25
    .line 839
    :catch_0
    move-exception v0

    #@26
    .line 840
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@29
    move-result-object v1

    #@2a
    throw v1

    #@2b
    .line 843
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/usage/UsageStatsService;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_5

    #@31
    .line 844
    return v2

    #@32
    .line 847
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isActiveNetworkScorer(Ljava/lang/String;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_6

    #@38
    .line 848
    return v2

    #@39
    .line 851
    :cond_6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #@3b
    if-eqz v1, :cond_7

    #@3d
    .line 852
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #@3f
    invoke-virtual {v1, p1, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    #@42
    move-result v1

    #@43
    .line 851
    if-eqz v1, :cond_7

    #@45
    .line 853
    return v2

    #@46
    .line 856
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_8

    #@4c
    .line 857
    return v2

    #@4d
    .line 861
    :cond_8
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    #@50
    move-result v1

    #@51
    if-nez v1, :cond_9

    #@53
    .line 862
    return v2

    #@54
    .line 867
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isCarrierApp(Ljava/lang/String;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_a

    #@5a
    .line 868
    return v2

    #@5b
    .line 871
    :cond_a
    const/4 v1, 0x1

    #@5c
    return v1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 772
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 962
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 963
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 964
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->fetchCarrierPrivilegedAppsLocked()V

    #@a
    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 967
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v0

    #@14
    monitor-exit v1

    #@15
    return v0

    #@16
    .line 969
    :cond_1
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 962
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method private isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 957
    const v2, 0x1040074

    #@b
    .line 956
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 958
    .local v0, "deviceProvisioningPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    :goto_0
    return v1

    #@16
    :cond_0
    const/4 v1, 0x0

    #@17
    goto :goto_0
.end method

.method private isDisplayOn()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 245
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@3
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    #@a
    move-result v1

    #@b
    .line 246
    const/4 v2, 0x2

    #@c
    .line 245
    if-ne v1, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    .line 528
    const/16 v3, 0x2000

    #@4
    .line 527
    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    #@7
    move-result v1

    #@8
    .line 529
    .local v1, "uid":I
    if-eqz p3, :cond_0

    #@a
    .line 530
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@c
    const/16 v3, 0xf

    #@e
    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    #@11
    .line 525
    .end local v1    # "uid":I
    :goto_0
    return-void

    #@12
    .line 533
    .restart local v1    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@14
    const/16 v3, 0x10

    #@16
    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 536
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/util/AndroidException;
    goto :goto_0
.end method

.method private postNextParoleTimeout()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x6

    #@1
    .line 412
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 416
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@8
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@a
    add-long/2addr v2, v4

    #@b
    .line 417
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@e
    move-result-wide v4

    #@f
    .line 416
    sub-long v0, v2, v4

    #@11
    .line 418
    .local v0, "timeLeft":J
    const-wide/16 v2, 0x0

    #@13
    cmp-long v2, v0, v2

    #@15
    if-gez v2, :cond_0

    #@17
    .line 419
    const-wide/16 v0, 0x0

    #@19
    .line 421
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@1b
    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@1e
    .line 410
    return-void
.end method

.method private postParoleEndTimeout()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 426
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 427
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@8
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 424
    return-void
.end method

.method private postParoleStateChanged()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x9

    #@2
    .line 432
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 433
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@c
    .line 430
    return-void
.end method

.method private static validRange(JJJ)Z
    .locals 2
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1013
    cmp-long v1, p2, p0

    #@3
    if-gtz v1, :cond_0

    #@5
    cmp-long v1, p2, p4

    #@7
    if-gez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method


# virtual methods
.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@0
    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 780
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 777
    return-void

    #@12
    .line 778
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method checkIdleStates(I)Z
    .locals 18
    .param p1, "checkUserId"    # I

    #@0
    .prologue
    .line 459
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 460
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 465
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    #@f
    move-result-object v15

    #@10
    .line 466
    .local v15, "runningUserIds":[I
    const/4 v2, -0x1

    #@11
    move/from16 v0, p1

    #@13
    if-eq v0, v2, :cond_1

    #@15
    .line 467
    move/from16 v0, p1

    #@17
    invoke-static {v15, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 474
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v6

    #@21
    .line 475
    .local v6, "elapsedRealtime":J
    const/4 v8, 0x0

    #@22
    .local v8, "i":I
    :goto_0
    array-length v2, v15

    #@23
    if-ge v8, v2, :cond_7

    #@25
    .line 476
    aget v5, v15, v8

    #@27
    .line 477
    .local v5, "userId":I
    const/4 v2, -0x1

    #@28
    move/from16 v0, p1

    #@2a
    if-eq v0, v2, :cond_4

    #@2c
    move/from16 v0, p1

    #@2e
    if-eq v0, v5, :cond_4

    #@30
    .line 475
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@32
    goto :goto_0

    #@33
    .line 468
    .end local v5    # "userId":I
    .end local v6    # "elapsedRealtime":J
    .end local v8    # "i":I
    :cond_3
    const/4 v2, 0x0

    #@34
    return v2

    #@35
    .line 470
    .end local v15    # "runningUserIds":[I
    :catch_0
    move-exception v14

    #@36
    .line 471
    .local v14, "re":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@39
    move-result-object v2

    #@3a
    throw v2

    #@3b
    .line 483
    .end local v14    # "re":Landroid/os/RemoteException;
    .restart local v5    # "userId":I
    .restart local v6    # "elapsedRealtime":J
    .restart local v8    # "i":I
    .restart local v15    # "runningUserIds":[I
    :cond_4
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3f
    .line 484
    const/16 v4, 0x200

    #@41
    .line 483
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    #@44
    move-result-object v12

    #@45
    .line 486
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@48
    move-result v11

    #@49
    .line 487
    .local v11, "packageCount":I
    const/4 v10, 0x0

    #@4a
    .local v10, "p":I
    :goto_1
    if-ge v10, v11, :cond_2

    #@4c
    .line 488
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v13

    #@50
    check-cast v13, Landroid/content/pm/PackageInfo;

    #@52
    .line 489
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@54
    .line 491
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@56
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@58
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@5b
    move-result v4

    #@5c
    move-object/from16 v2, p0

    #@5e
    .line 490
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    #@61
    move-result v9

    #@62
    .line 493
    .local v9, "isIdle":Z
    move-object/from16 v0, p0

    #@64
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@6a
    move-object/from16 v16, v0

    #@6c
    .line 494
    if-eqz v9, :cond_6

    #@6e
    const/4 v2, 0x1

    #@6f
    .line 493
    :goto_2
    const/16 v17, 0x3

    #@71
    move-object/from16 v0, v16

    #@73
    move/from16 v1, v17

    #@75
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@7c
    .line 495
    if-eqz v9, :cond_5

    #@7e
    .line 496
    move-object/from16 v0, p0

    #@80
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@82
    monitor-enter v4

    #@83
    .line 497
    :try_start_1
    move-object/from16 v0, p0

    #@85
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@87
    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8a
    monitor-exit v4

    #@8b
    .line 487
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@8d
    goto :goto_1

    #@8e
    .line 494
    :cond_6
    const/4 v2, 0x0

    #@8f
    goto :goto_2

    #@90
    .line 496
    :catchall_0
    move-exception v2

    #@91
    monitor-exit v4

    #@92
    throw v2

    #@93
    .line 506
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v9    # "isIdle":Z
    .end local v10    # "p":I
    .end local v11    # "packageCount":I
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 v2, 0x1

    #@94
    return v2
.end method

.method checkParoleTimeout()V
    .locals 8

    #@0
    .prologue
    .line 511
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 512
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 513
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@a
    move-result-wide v4

    #@b
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@d
    sub-long v0, v4, v6

    #@f
    .line 514
    .local v0, "timeSinceLastParole":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@11
    cmp-long v2, v0, v4

    #@13
    if-lez v2, :cond_1

    #@15
    .line 516
    const/4 v2, 0x1

    #@16
    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .end local v0    # "timeSinceLastParole":J
    :cond_0
    :goto_0
    monitor-exit v3

    #@1a
    .line 510
    return-void

    #@1b
    .line 519
    .restart local v0    # "timeSinceLastParole":J
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 511
    .end local v0    # "timeSinceLastParole":J
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsageLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 345
    return-void

    #@a
    .line 346
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method clearCarrierPrivilegedApps()V
    .locals 2

    #@0
    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 978
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    #@6
    .line 979
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 973
    return-void

    #@b
    .line 977
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1033
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 1034
    :try_start_0
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@5
    const-string/jumbo v4, "  "

    #@8
    invoke-direct {v2, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@b
    .line 1035
    .local v2, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v0, Landroid/util/ArraySet;

    #@d
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@10
    .line 1036
    .local v0, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 1038
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@1c
    move-result v3

    #@1d
    .line 1039
    .local v3, "userCount":I
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@20
    .line 1040
    const-string/jumbo v4, "user"

    #@23
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@28
    move-result v6

    #@29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v2, v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@30
    .line 1041
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@33
    .line 1042
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@36
    .line 1043
    const-string/jumbo v4, "--checkin"

    #@39
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_1

    #@3f
    .line 1044
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    #@47
    invoke-virtual {v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@4a
    .line 1057
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@4c
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@4e
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@51
    move-result v6

    #@52
    invoke-virtual {v4, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    #@55
    .line 1058
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@58
    .line 1039
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 1046
    :cond_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@5d
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@60
    move-result-object v4

    #@61
    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    #@63
    invoke-virtual {v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@66
    .line 1047
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@69
    .line 1048
    array-length v4, p1

    #@6a
    if-lez v4, :cond_0

    #@6c
    .line 1049
    const-string/jumbo v4, "history"

    #@6f
    const/4 v6, 0x0

    #@70
    aget-object v6, p1, v6

    #@72
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v4

    #@76
    if-eqz v4, :cond_2

    #@78
    .line 1050
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@7a
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@7c
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@7f
    move-result v6

    #@80
    invoke-virtual {v4, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->dumpHistory(Lcom/android/internal/util/IndentingPrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    goto :goto_1

    #@84
    .line 1033
    .end local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "userCount":I
    :catchall_0
    move-exception v4

    #@85
    monitor-exit v5

    #@86
    throw v4

    #@87
    .line 1051
    .restart local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v3    # "userCount":I
    :cond_2
    :try_start_1
    const-string/jumbo v4, "flush"

    #@8a
    const/4 v6, 0x0

    #@8b
    aget-object v6, p1, v6

    #@8d
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v4

    #@91
    if-eqz v4, :cond_0

    #@93
    .line 1052
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    #@96
    .line 1053
    const-string/jumbo v4, "Flushed stats to disk"

    #@99
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9c
    goto :goto_1

    #@9d
    .line 1061
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a0
    .line 1062
    new-instance v4, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v6, "Carrier privileged apps (have="

    #@a8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    #@ae
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v4

    #@b2
    .line 1063
    const-string/jumbo v6, "): "

    #@b5
    .line 1062
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    .line 1063
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    #@bb
    .line 1062
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c6
    .line 1065
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@c9
    .line 1066
    const-string/jumbo v4, "Settings:"

    #@cc
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    .line 1068
    const-string/jumbo v4, "  mAppIdleDurationMillis="

    #@d2
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d5
    .line 1069
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleScreenThresholdMillis:J

    #@d7
    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@da
    .line 1070
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@dd
    .line 1072
    const-string/jumbo v4, "  mAppIdleWallclockThresholdMillis="

    #@e0
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    .line 1073
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    #@e5
    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@e8
    .line 1074
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@eb
    .line 1076
    const-string/jumbo v4, "  mCheckIdleIntervalMillis="

    #@ee
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    .line 1077
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    #@f3
    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@f6
    .line 1078
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@f9
    .line 1080
    const-string/jumbo v4, "  mAppIdleParoleIntervalMillis="

    #@fc
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ff
    .line 1081
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@101
    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@104
    .line 1082
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@107
    .line 1084
    const-string/jumbo v4, "  mAppIdleParoleDurationMillis="

    #@10a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10d
    .line 1085
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    #@10f
    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@112
    .line 1086
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@115
    .line 1088
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@118
    .line 1089
    const-string/jumbo v4, "mAppIdleEnabled="

    #@11b
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11e
    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@120
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@123
    .line 1090
    const-string/jumbo v4, " mAppIdleTempParoled="

    #@126
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    #@12b
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@12e
    .line 1091
    const-string/jumbo v4, " mCharging="

    #@131
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@134
    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z

    #@136
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@139
    .line 1092
    const-string/jumbo v4, " mLastAppIdleParoledTime="

    #@13c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13f
    .line 1093
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@141
    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@144
    .line 1094
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@147
    monitor-exit v5

    #@148
    .line 1032
    return-void
.end method

.method flushToDisk()V
    .locals 2

    #@0
    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 706
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 704
    return-void

    #@8
    .line 705
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 680
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getAppId(Ljava/lang/String;)I

    #@3
    move-result v4

    #@4
    .line 681
    .local v4, "appId":I
    if-gez v4, :cond_0

    #@6
    return-void

    #@7
    .line 682
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@b
    move-object/from16 v16, v0

    #@d
    monitor-enter v16

    #@e
    .line 683
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@11
    move-result-wide v6

    #@12
    .local v6, "elapsedRealtime":J
    move-object/from16 v2, p0

    #@14
    move-object/from16 v3, p1

    #@16
    move/from16 v5, p2

    #@18
    .line 685
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    #@1b
    move-result v14

    #@1c
    .line 687
    .local v14, "previouslyIdle":Z
    move-object/from16 v0, p0

    #@1e
    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@20
    move-object/from16 v9, p1

    #@22
    move/from16 v10, p2

    #@24
    move/from16 v11, p3

    #@26
    move-wide v12, v6

    #@27
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/usage/AppIdleHistory;->setIdleLocked(Ljava/lang/String;IZJ)V

    #@2a
    move-object/from16 v2, p0

    #@2c
    move-object/from16 v3, p1

    #@2e
    move/from16 v5, p2

    #@30
    .line 688
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    #@33
    move-result v15

    #@34
    .line 691
    .local v15, "stillIdle":Z
    if-eq v14, v15, :cond_1

    #@36
    .line 692
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@3e
    .line 693
    if-eqz v15, :cond_2

    #@40
    const/4 v2, 0x1

    #@41
    .line 692
    :goto_0
    const/4 v8, 0x3

    #@42
    move/from16 v0, p2

    #@44
    move-object/from16 v1, p1

    #@46
    invoke-virtual {v5, v8, v0, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@4d
    .line 694
    if-nez v15, :cond_1

    #@4f
    .line 695
    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    :cond_1
    monitor-exit v16

    #@53
    .line 679
    return-void

    #@54
    .line 693
    :cond_2
    const/4 v2, 0x0

    #@55
    goto :goto_0

    #@56
    .line 682
    .end local v6    # "elapsedRealtime":J
    .end local v14    # "previouslyIdle":Z
    .end local v15    # "stillIdle":Z
    :catchall_0
    move-exception v2

    #@57
    monitor-exit v16

    #@58
    throw v2
.end method

.method getAppId(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    .line 794
    const/16 v3, 0x2200

    #@4
    .line 793
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    .line 796
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return v2

    #@b
    .line 797
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@c
    .line 798
    .local v1, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    #@d
    return v2
.end method

.method getIdleUidsForUser(I)[I
    .locals 19
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 875
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 876
    const/4 v2, 0x0

    #@7
    new-array v2, v2, [I

    #@9
    return-object v2

    #@a
    .line 879
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v6

    #@e
    .line 883
    .local v6, "elapsedRealtime":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@11
    move-result-object v2

    #@12
    .line 884
    const/4 v3, 0x0

    #@13
    .line 883
    move/from16 v0, p1

    #@15
    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    #@18
    move-result-object v16

    #@19
    .line 885
    .local v16, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v16, :cond_1

    #@1b
    .line 886
    const/4 v2, 0x0

    #@1c
    new-array v2, v2, [I

    #@1e
    return-object v2

    #@1f
    .line 888
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v9

    #@23
    .line 895
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v17, Landroid/util/SparseIntArray;

    #@25
    invoke-direct/range {v17 .. v17}, Landroid/util/SparseIntArray;-><init>()V

    #@28
    .line 899
    .local v17, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@2b
    move-result v2

    #@2c
    add-int/lit8 v11, v2, -0x1

    #@2e
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_5

    #@30
    .line 900
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v8

    #@34
    check-cast v8, Landroid/content/pm/ApplicationInfo;

    #@36
    .line 903
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@38
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3a
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@3d
    move-result v4

    #@3e
    move-object/from16 v2, p0

    #@40
    move/from16 v5, p1

    #@42
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    #@45
    move-result v12

    #@46
    .line 906
    .local v12, "idle":Z
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@48
    move-object/from16 v0, v17

    #@4a
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@4d
    move-result v13

    #@4e
    .line 907
    .local v13, "index":I
    if-gez v13, :cond_3

    #@50
    .line 908
    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@52
    if-eqz v12, :cond_2

    #@54
    const/high16 v2, 0x10000

    #@56
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@58
    move-object/from16 v0, v17

    #@5a
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@5d
    .line 899
    :goto_2
    add-int/lit8 v11, v11, -0x1

    #@5f
    goto :goto_0

    #@60
    .line 889
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "i":I
    .end local v12    # "idle":Z
    .end local v13    # "index":I
    .end local v16    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v17    # "uidStates":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v10

    #@61
    .line 890
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@64
    move-result-object v2

    #@65
    throw v2

    #@66
    .line 908
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v11    # "i":I
    .restart local v12    # "idle":Z
    .restart local v13    # "index":I
    .restart local v16    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "uidStates":Landroid/util/SparseIntArray;
    :cond_2
    const/4 v2, 0x0

    #@67
    goto :goto_1

    #@68
    .line 910
    :cond_3
    move-object/from16 v0, v17

    #@6a
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@6d
    move-result v18

    #@6e
    .line 911
    .local v18, "value":I
    add-int/lit8 v3, v18, 0x1

    #@70
    if-eqz v12, :cond_4

    #@72
    const/high16 v2, 0x10000

    #@74
    :goto_3
    add-int/2addr v2, v3

    #@75
    move-object/from16 v0, v17

    #@77
    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    #@7a
    goto :goto_2

    #@7b
    :cond_4
    const/4 v2, 0x0

    #@7c
    goto :goto_3

    #@7d
    .line 917
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "idle":Z
    .end local v13    # "index":I
    .end local v18    # "value":I
    :cond_5
    const/4 v14, 0x0

    #@7e
    .line 918
    .local v14, "numIdle":I
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    #@81
    move-result v2

    #@82
    add-int/lit8 v11, v2, -0x1

    #@84
    :goto_4
    if-ltz v11, :cond_7

    #@86
    .line 919
    move-object/from16 v0, v17

    #@88
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@8b
    move-result v18

    #@8c
    .line 920
    .restart local v18    # "value":I
    move/from16 v0, v18

    #@8e
    and-int/lit16 v2, v0, 0x7fff

    #@90
    shr-int/lit8 v3, v18, 0x10

    #@92
    if-ne v2, v3, :cond_6

    #@94
    .line 921
    add-int/lit8 v14, v14, 0x1

    #@96
    .line 918
    :cond_6
    add-int/lit8 v11, v11, -0x1

    #@98
    goto :goto_4

    #@99
    .line 925
    .end local v18    # "value":I
    :cond_7
    new-array v15, v14, [I

    #@9b
    .line 926
    .local v15, "res":[I
    const/4 v14, 0x0

    #@9c
    .line 927
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    #@9f
    move-result v2

    #@a0
    add-int/lit8 v11, v2, -0x1

    #@a2
    :goto_5
    if-ltz v11, :cond_9

    #@a4
    .line 928
    move-object/from16 v0, v17

    #@a6
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@a9
    move-result v18

    #@aa
    .line 929
    .restart local v18    # "value":I
    move/from16 v0, v18

    #@ac
    and-int/lit16 v2, v0, 0x7fff

    #@ae
    shr-int/lit8 v3, v18, 0x10

    #@b0
    if-ne v2, v3, :cond_8

    #@b2
    .line 930
    move-object/from16 v0, v17

    #@b4
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@b7
    move-result v2

    #@b8
    aput v2, v15, v14

    #@ba
    .line 931
    add-int/lit8 v14, v14, 0x1

    #@bc
    .line 927
    :cond_8
    add-int/lit8 v11, v11, -0x1

    #@be
    goto :goto_5

    #@bf
    .line 935
    .end local v18    # "value":I
    :cond_9
    return-object v15
.end method

.method informListeners(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isIdle"    # Z

    #@0
    .prologue
    .line 1000
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@12
    .line 1001
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZ)V

    #@15
    goto :goto_0

    #@16
    .line 999
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method informParoleStateChanged()V
    .locals 4

    #@0
    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->isParoledOrCharging()Z

    #@3
    move-result v2

    #@4
    .line 1007
    .local v2, "paroled":Z
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@16
    .line 1008
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 1005
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->isParoledOrCharging()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 804
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 806
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getAppId(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move v3, p2

    #@f
    move-wide v4, p3

    #@10
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method isParoledOrCharging()Z
    .locals 2

    #@0
    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 406
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :goto_0
    monitor-exit v1

    #@a
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 405
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 214
    const/16 v1, 0x1f4

    #@2
    if-ne p1, v1, :cond_2

    #@4
    .line 216
    new-instance v0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;

    #@6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V

    #@b
    .line 217
    .local v0, "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->registerObserver()V

    #@e
    .line 218
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    #@11
    .line 220
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    const-class v2, Landroid/appwidget/AppWidgetManager;

    #@17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/appwidget/AppWidgetManager;

    #@1d
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #@1f
    .line 222
    const-string/jumbo v1, "deviceidle"

    #@22
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@25
    move-result-object v1

    #@26
    .line 221
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@2c
    .line 224
    const-string/jumbo v1, "batterystats"

    #@2f
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@32
    move-result-object v1

    #@33
    .line 223
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@39
    .line 225
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@3c
    move-result-object v1

    #@3d
    .line 226
    const-string/jumbo v2, "display"

    #@40
    .line 225
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroid/hardware/display/DisplayManager;

    #@46
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@48
    .line 227
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v1

    #@4c
    const-class v2, Landroid/os/PowerManager;

    #@4e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Landroid/os/PowerManager;

    #@54
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    #@56
    .line 229
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@58
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@5a
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@5c
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@5f
    .line 230
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v2

    #@62
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@64
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->isDisplayOn()Z

    #@67
    move-result v3

    #@68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6b
    move-result-wide v4

    #@6c
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplayLocked(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    monitor-exit v2

    #@70
    .line 234
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    #@72
    if-eqz v1, :cond_0

    #@74
    .line 235
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->postOneTimeCheckIdleStates()V

    #@77
    .line 238
    :cond_0
    const/4 v1, 0x1

    #@78
    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    #@7a
    .line 213
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_1
    :goto_0
    return-void

    #@7b
    .line 230
    .restart local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :catchall_0
    move-exception v1

    #@7c
    monitor-exit v2

    #@7d
    throw v1

    #@7e
    .line 239
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_2
    const/16 v1, 0x3e8

    #@80
    if-ne p1, v1, :cond_1

    #@82
    .line 240
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@85
    move-result-object v1

    #@86
    const-class v2, Landroid/os/BatteryManager;

    #@88
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@8b
    move-result-object v1

    #@8c
    check-cast v1, Landroid/os/BatteryManager;

    #@8e
    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    #@91
    move-result v1

    #@92
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setChargingState(Z)V

    #@95
    goto :goto_0
.end method

.method onDeviceIdleModeChanged()V
    .locals 10

    #@0
    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    #@2
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@5
    move-result v0

    #@6
    .line 543
    .local v0, "deviceIdle":Z
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 544
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@c
    move-result-wide v6

    #@d
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@f
    sub-long v2, v6, v8

    #@11
    .line 545
    .local v2, "timeSinceLastParole":J
    if-nez v0, :cond_1

    #@13
    .line 546
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@15
    cmp-long v1, v2, v6

    #@17
    if-ltz v1, :cond_1

    #@19
    .line 548
    const/4 v1, 0x1

    #@1a
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_0
    :goto_0
    monitor-exit v4

    #@1e
    .line 540
    return-void

    #@1f
    .line 549
    :cond_1
    if-eqz v0, :cond_0

    #@21
    .line 551
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 543
    .end local v2    # "timeSinceLastParole":J
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v4

    #@28
    throw v1
.end method

.method public onNewUpdate(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->initializeDefaultsForSystemApps(I)V

    #@3
    .line 325
    return-void
.end method

.method public onStart()V
    .locals 13

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 164
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    const-string/jumbo v1, "appops"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/app/AppOpsManager;

    #@e
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    #@10
    .line 165
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "user"

    #@17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/os/UserManager;

    #@1d
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    #@1f
    .line 166
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@29
    .line 167
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    #@2b
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    #@36
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@38
    .line 169
    new-instance v12, Ljava/io/File;

    #@3a
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3d
    move-result-object v0

    #@3e
    const-string/jumbo v1, "system"

    #@41
    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@44
    .line 170
    .local v12, "systemDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@46
    const-string/jumbo v1, "usagestats"

    #@49
    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4c
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@4e
    .line 171
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@50
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@53
    .line 172
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_0

    #@5b
    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5d
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v2, "Usage stats directory does not exist: "

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    .line 174
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@6b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v0

    #@7b
    .line 177
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    #@7d
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@80
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@83
    .line 178
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    #@86
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@89
    .line 179
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@8c
    move-result-object v0

    #@8d
    new-instance v1, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    #@8f
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;)V

    #@92
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@94
    .line 180
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@96
    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@99
    .line 182
    new-instance v8, Landroid/content/IntentFilter;

    #@9b
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@9e
    .line 183
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@a1
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a4
    .line 184
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@a7
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@aa
    .line 185
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@ad
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b0
    .line 186
    const-string/jumbo v0, "package"

    #@b3
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@b6
    .line 188
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@b9
    move-result-object v5

    #@ba
    new-instance v6, Lcom/android/server/usage/UsageStatsService$PackageReceiver;

    #@bc
    invoke-direct {v6, p0, v4}, Lcom/android/server/usage/UsageStatsService$PackageReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$PackageReceiver;)V

    #@bf
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@c1
    .line 189
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@c3
    move-object v9, v4

    #@c4
    .line 188
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@c7
    .line 191
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@ca
    move-result-object v0

    #@cb
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ce
    move-result-object v0

    #@cf
    .line 192
    const v1, 0x1120013

    #@d2
    .line 191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d5
    move-result v0

    #@d6
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@d8
    .line 193
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@da
    if-eqz v0, :cond_1

    #@dc
    .line 194
    new-instance v11, Landroid/content/IntentFilter;

    #@de
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    #@e1
    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@e4
    .line 195
    .local v11, "deviceStates":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DISCHARGING"

    #@e7
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ea
    .line 196
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@ed
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f0
    .line 197
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@f3
    move-result-object v0

    #@f4
    new-instance v1, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    #@f6
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;)V

    #@f9
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@fc
    .line 200
    .end local v11    # "deviceStates":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@fe
    monitor-enter v1

    #@ff
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    #@102
    .line 202
    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    #@104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@107
    move-result-wide v6

    #@108
    invoke-direct {v0, v6, v7}, Lcom/android/server/usage/AppIdleHistory;-><init>(J)V

    #@10b
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10d
    monitor-exit v1

    #@10e
    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@111
    move-result-wide v0

    #@112
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    #@114
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@117
    move-result-wide v0

    #@118
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    #@11a
    .line 208
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@11c
    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    #@11e
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService;)V

    #@121
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@124
    .line 209
    const-string/jumbo v0, "usagestats"

    #@127
    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    #@129
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService;)V

    #@12c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@12f
    .line 163
    return-void

    #@130
    .line 200
    :catchall_0
    move-exception v0

    #@131
    monitor-exit v1

    #@132
    throw v0
.end method

.method public onStatsReloaded()V
    .locals 0

    #@0
    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->postOneTimeCheckIdleStates()V

    #@3
    .line 320
    return-void
.end method

.method public onStatsUpdated()V
    .locals 4

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    const-wide/32 v2, 0x124f80

    #@6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@9
    .line 315
    return-void
.end method

.method onUserRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 715
    :try_start_0
    const-string/jumbo v0, "UsageStatsService"

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Removing user "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, " and all data."

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 716
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@29
    .line 717
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@2b
    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    #@2e
    .line 718
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    monitor-exit v1

    #@32
    .line 713
    return-void

    #@33
    .line 714
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0
.end method

.method postCheckIdleStates(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x5

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@d
    .line 436
    return-void
.end method

.method postOneTimeCheckIdleStates()V
    .locals 2

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 447
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    #@7
    .line 444
    :goto_0
    return-void

    #@8
    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@a
    const/16 v1, 0xa

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@f
    .line 450
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    #@12
    goto :goto_0
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 743
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v8

    #@3
    .line 744
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@6
    move-result-wide v0

    #@7
    .local v0, "timeNow":J
    move-wide v2, p3

    #@8
    move-wide v4, p5

    #@9
    .line 745
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 746
    const/4 v3, 0x0

    #@10
    monitor-exit v8

    #@11
    return-object v3

    #@12
    .line 750
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@15
    move-result-object v2

    #@16
    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    #@17
    move-wide v4, p3

    #@18
    move-wide v6, p5

    #@19
    .line 751
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v3

    #@1d
    monitor-exit v8

    #@1e
    return-object v3

    #@1f
    .line 743
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v8

    #@21
    throw v3
.end method

.method queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    #@0
    .prologue
    .line 759
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 760
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@6
    move-result-wide v0

    #@7
    .local v0, "timeNow":J
    move-wide v2, p2

    #@8
    move-wide v4, p4

    #@9
    .line 761
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 762
    const/4 v2, 0x0

    #@10
    monitor-exit v7

    #@11
    return-object v2

    #@12
    .line 766
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@15
    move-result-object v6

    #@16
    .line 767
    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJ)Landroid/app/usage/UsageEvents;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result-object v2

    #@1a
    monitor-exit v7

    #@1b
    return-object v2

    #@1c
    .line 759
    .end local v0    # "timeNow":J
    .end local v6    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v7

    #@1e
    throw v2
.end method

.method queryUsageStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 726
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v8

    #@3
    .line 727
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@6
    move-result-wide v0

    #@7
    .local v0, "timeNow":J
    move-wide v2, p3

    #@8
    move-wide v4, p5

    #@9
    .line 728
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 729
    const/4 v3, 0x0

    #@10
    monitor-exit v8

    #@11
    return-object v3

    #@12
    .line 733
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@15
    move-result-object v2

    #@16
    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    #@17
    move-wide v4, p3

    #@18
    move-wide v6, p5

    #@19
    .line 734
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v3

    #@1d
    monitor-exit v8

    #@1e
    return-object v3

    #@1f
    .line 726
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v8

    #@21
    throw v3
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@0
    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 785
    return-void

    #@a
    .line 786
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 654
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 656
    .local v2, "packages":[Ljava/lang/String;
    array-length v5, v2

    #@6
    :goto_0
    if-ge v4, v5, :cond_2

    #@8
    aget-object v1, v2, v4

    #@a
    .line 660
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@c
    .line 661
    const/high16 v7, 0x100000

    #@e
    .line 660
    invoke-virtual {v6, v1, v7, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@11
    move-result-object v3

    #@12
    .line 662
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    #@14
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    if-nez v6, :cond_1

    #@18
    .line 656
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 665
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_0

    #@21
    .line 666
    const/4 v6, 0x0

    #@22
    invoke-virtual {p0, v1, p3, v6}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_1

    #@26
    .line 668
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@27
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@28
    .line 652
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 12
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 625
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 626
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@6
    move-result-wide v4

    #@7
    .line 627
    .local v4, "timeNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v0

    #@b
    .line 628
    .local v0, "elapsedRealtime":J
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    #@e
    .line 631
    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@11
    move-result-object v3

    #@12
    .line 634
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@14
    .line 635
    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@16
    .line 634
    invoke-virtual {v6, v8, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z

    #@19
    move-result v2

    #@1a
    .line 636
    .local v2, "previouslyIdle":Z
    invoke-virtual {v3, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    #@1d
    .line 638
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@1f
    const/4 v8, 0x1

    #@20
    if-eq v6, v8, :cond_0

    #@22
    .line 639
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@24
    const/4 v8, 0x2

    #@25
    if-ne v6, v8, :cond_2

    #@27
    .line 642
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@29
    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@2b
    invoke-virtual {v6, v8, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->reportUsageLocked(Ljava/lang/String;IJ)V

    #@2e
    .line 643
    if-eqz v2, :cond_1

    #@30
    .line 644
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@32
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@34
    .line 645
    iget-object v9, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@36
    .line 644
    const/4 v10, 0x3

    #@37
    .line 645
    const/4 v11, 0x0

    #@38
    .line 644
    invoke-virtual {v8, v10, p2, v11, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@3f
    .line 646
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@41
    const/4 v8, 0x0

    #@42
    invoke-direct {p0, v6, p2, v8}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    :cond_1
    monitor-exit v7

    #@46
    .line 624
    return-void

    #@47
    .line 640
    :cond_2
    :try_start_1
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@49
    const/4 v8, 0x6

    #@4a
    if-eq v6, v8, :cond_0

    #@4c
    .line 641
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    const/4 v8, 0x7

    #@4f
    if-ne v6, v8, :cond_1

    #@51
    goto :goto_0

    #@52
    .line 625
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "previouslyIdle":Z
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v4    # "timeNow":J
    :catchall_0
    move-exception v6

    #@53
    monitor-exit v7

    #@54
    throw v6
.end method

.method setAppIdle(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 939
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 941
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@5
    if-eqz p2, :cond_1

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    const/4 v2, 0x4

    #@9
    invoke-virtual {v1, v2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 938
    return-void

    #@11
    .line 941
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method setAppIdleParoled(Z)V
    .locals 4
    .param p1, "paroled"    # Z

    #@0
    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 390
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 391
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    #@9
    .line 393
    if-eqz p1, :cond_1

    #@b
    .line 394
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleEndTimeout()V

    #@e
    .line 399
    :goto_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v1

    #@12
    .line 388
    return-void

    #@13
    .line 396
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@16
    move-result-wide v2

    #@17
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@19
    .line 397
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 389
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method setChargingState(Z)V
    .locals 2
    .param p1, "charging"    # Z

    #@0
    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 380
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 381
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z

    #@9
    .line 382
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 378
    return-void

    #@e
    .line 379
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method shutdown()V
    .locals 3

    #@0
    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    .line 617
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 614
    return-void

    #@e
    .line 615
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
