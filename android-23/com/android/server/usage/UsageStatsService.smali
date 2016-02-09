.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;,
        Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$SettingsObserver;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$1;
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
.field mAppIdleDurationMillis:J

.field mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoled:Z

.field mAppIdleWallclockThresholdMillis:J

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mCheckIdleIntervalMillis:J

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

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

.field private mPowerManager:Landroid/os/PowerManager;

.field mRealTimeSnapshot:J

.field private mScreenOn:Z

.field mScreenOnSystemTimeSnapshot:J

.field mScreenOnTime:J

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
.method static synthetic -get0(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 127
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@a
    .line 137
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@11
    .line 151
    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    #@13
    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@18
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@1f
    .line 261
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    #@21
    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    #@24
    .line 260
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@26
    .line 156
    return-void
.end method

.method private checkAndGetTimeLocked()J
    .locals 14

    #@0
    .prologue
    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 534
    .local v4, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v8

    #@8
    .line 535
    .local v8, "actualRealtime":J
    iget-wide v10, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    #@a
    sub-long v10, v8, v10

    #@c
    iget-wide v12, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    #@e
    add-long v2, v10, v12

    #@10
    .line 536
    .local v2, "expectedSystemTime":J
    const/4 v6, 0x0

    #@11
    .line 537
    .local v6, "resetBeginIdleTime":Z
    sub-long v10, v4, v2

    #@13
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    #@16
    move-result-wide v10

    #@17
    const-wide/16 v12, 0x7d0

    #@19
    cmp-long v10, v10, v12

    #@1b
    if-lez v10, :cond_2

    #@1d
    .line 541
    sub-long v10, v4, v2

    #@1f
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    #@22
    move-result-wide v10

    #@23
    iget-wide v12, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    #@25
    cmp-long v10, v10, v12

    #@27
    if-lez v10, :cond_0

    #@29
    .line 542
    iput-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    #@2b
    .line 543
    const-wide/16 v10, 0x0

    #@2d
    iput-wide v10, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@2f
    .line 544
    const/4 v6, 0x1

    #@30
    .line 546
    :cond_0
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@35
    move-result v7

    #@36
    .line 547
    .local v7, "userCount":I
    const/4 v0, 0x0

    #@37
    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    #@39
    .line 548
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    #@41
    .line 549
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJZ)V

    #@44
    .line 547
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 551
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_1
    iput-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    #@49
    .line 552
    iput-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    #@4b
    .line 554
    .end local v0    # "i":I
    .end local v7    # "userCount":I
    :cond_2
    return-wide v4
.end method

.method private cleanUpRemovedUsersLocked()V
    .locals 10

    #@0
    .prologue
    .line 284
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    #@2
    const/4 v8, 0x1

    #@3
    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@6
    move-result-object v6

    #@7
    .line 285
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_0

    #@9
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@c
    move-result v7

    #@d
    if-nez v7, :cond_1

    #@f
    .line 286
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v8, "There can\'t be no users"

    #@14
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v7

    #@18
    .line 289
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    #@1a
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@1d
    .line 290
    .local v3, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@1f
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 291
    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_2

    #@25
    .line 293
    return-void

    #@26
    .line 296
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@2d
    .line 298
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@30
    move-result v4

    #@31
    .line 299
    .local v4, "userCount":I
    const/4 v2, 0x0

    #@32
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@34
    .line 300
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Landroid/content/pm/UserInfo;

    #@3a
    .line 301
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@3c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@43
    .line 299
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 304
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@49
    move-result v0

    #@4a
    .line 305
    .local v0, "deleteCount":I
    const/4 v2, 0x0

    #@4b
    :goto_1
    if-ge v2, v0, :cond_4

    #@4d
    .line 306
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
    .line 305
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 283
    :cond_4
    return-void
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 6
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    #@0
    .prologue
    .line 562
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
    .line 561
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 505
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 506
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    #@6
    .line 507
    const/4 v2, 0x0

    #@7
    array-length v3, v0

    #@8
    :goto_0
    if-ge v2, v3, :cond_0

    #@a
    aget-object v1, v0, v2

    #@c
    .line 508
    .local v1, "subFile":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    #@f
    .line 507
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 512
    .end local v1    # "subFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 513
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
    .line 504
    :cond_1
    return-void
.end method

.method private flushToDiskLocked()V
    .locals 5

    #@0
    .prologue
    .line 949
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v2

    #@6
    .line 950
    .local v2, "userCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 951
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    #@11
    .line 952
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@14
    .line 950
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 955
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@1d
    .line 948
    return-void
.end method

.method private getScreenOnTimeFile()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 456
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@4
    const-string/jumbo v2, "0/screen_on_time"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    return-object v0
.end method

.method private getScreenOnTimeLocked(J)J
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 449
    iget-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    #@6
    sub-long v0, p1, v0

    #@8
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@a
    add-long/2addr v0, v2

    #@b
    return-wide v0

    #@c
    .line 451
    :cond_0
    iget-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@e
    return-wide v0
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    #@8
    .line 520
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_0

    #@a
    .line 521
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    #@c
    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    .line 522
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
    .line 521
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    #@1e
    .line 523
    .restart local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-direct {p0, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    #@21
    move-result-wide v2

    #@22
    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->init(JJ)V

    #@25
    .line 524
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2a
    .line 526
    :cond_0
    return-object v0
.end method

.method private isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 907
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@4
    move-result-object v4

    #@5
    const-class v5, Landroid/app/admin/DevicePolicyManager;

    #@7
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    #@d
    .line 908
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    #@f
    return v6

    #@10
    .line 909
    :cond_0
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 910
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v0, :cond_1

    #@16
    return v6

    #@17
    .line 911
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1a
    move-result v3

    #@1b
    .line 912
    .local v3, "size":I
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@1e
    .line 913
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/content/ComponentName;

    #@24
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 914
    const/4 v4, 0x1

    #@2f
    return v4

    #@30
    .line 912
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 917
    :cond_3
    return v6
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    .line 928
    const-string/jumbo v2, "network_score"

    #@7
    .line 927
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/NetworkScoreManager;

    #@d
    .line 929
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

.method private isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userService"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p4, "timeNow"    # J
    .param p6, "screenOnTime"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 797
    if-nez p1, :cond_0

    #@3
    return v2

    #@4
    .line 799
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@6
    if-nez v1, :cond_1

    #@8
    .line 800
    return v2

    #@9
    .line 802
    :cond_1
    const-string/jumbo v1, "android"

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    return v2

    #@13
    .line 807
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@15
    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 808
    return v2

    #@1c
    .line 810
    :catch_0
    move-exception v0

    #@1d
    .line 813
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 814
    return v2

    #@24
    .line 817
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isCarrierApp(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_5

    #@2a
    .line 818
    return v2

    #@2b
    .line 821
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isActiveNetworkScorer(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_6

    #@31
    .line 822
    return v2

    #@32
    .line 825
    :cond_6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #@34
    if-eqz v1, :cond_7

    #@36
    .line 826
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #@38
    invoke-virtual {v1, p1, p2}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    #@3b
    move-result v1

    #@3c
    .line 825
    if-eqz v1, :cond_7

    #@3e
    .line 827
    return v2

    #@3f
    :cond_7
    move-object v1, p0

    #@40
    move-object v2, p1

    #@41
    move-object v3, p3

    #@42
    move-wide v4, p4

    #@43
    move-wide v6, p6

    #@44
    .line 830
    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleUnfiltered(Ljava/lang/String;Lcom/android/server/usage/UserUsageStatsService;JJ)Z

    #@47
    move-result v1

    #@48
    return v1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;Lcom/android/server/usage/UserUsageStatsService;JJ)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userService"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p3, "timeNow"    # J
    .param p5, "screenOnTime"    # J

    #@0
    .prologue
    .line 734
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 735
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    #@6
    move-result-wide v2

    #@7
    .line 736
    .local v2, "beginIdleTime":J
    invoke-virtual {p2, p1}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    #@a
    move-result-wide v4

    #@b
    .local v4, "lastUsedTime":J
    move-object v1, p0

    #@c
    move-wide/from16 v6, p5

    #@e
    move-wide v8, p3

    #@f
    .line 737
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/UsageStatsService;->hasPassedIdleTimeoutLocked(JJJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    monitor-exit v10

    #@14
    return v0

    #@15
    .line 734
    .end local v2    # "beginIdleTime":J
    .end local v4    # "lastUsedTime":J
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v10

    #@17
    throw v0
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 921
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@4
    move-result-object v2

    #@5
    const-class v3, Landroid/telephony/TelephonyManager;

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@d
    .line 922
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    #@10
    move-result v2

    #@11
    if-ne v2, v1, :cond_0

    #@13
    :goto_0
    return v1

    #@14
    :cond_0
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 419
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@7
    move-result v1

    #@8
    .line 420
    .local v1, "uid":I
    if-eqz p3, :cond_0

    #@a
    .line 421
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@c
    const/16 v3, 0xf

    #@e
    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    #@11
    .line 417
    .end local v1    # "uid":I
    :goto_0
    return-void

    #@12
    .line 424
    .restart local v1    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@14
    const/16 v3, 0x10

    #@16
    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 427
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@1b
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private postNextParoleTimeout()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x6

    #@1
    .line 327
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 331
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@8
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@a
    add-long/2addr v2, v4

    #@b
    .line 332
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@e
    move-result-wide v4

    #@f
    .line 331
    sub-long v0, v2, v4

    #@11
    .line 333
    .local v0, "timeLeft":J
    const-wide/16 v2, 0x0

    #@13
    cmp-long v2, v0, v2

    #@15
    if-gez v2, :cond_0

    #@17
    .line 334
    const-wide/16 v0, 0x0

    #@19
    .line 336
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@1b
    const-wide/16 v4, 0xa

    #@1d
    div-long v4, v0, v4

    #@1f
    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@22
    .line 325
    return-void
.end method

.method private postParoleEndTimeout()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 341
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 342
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@8
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 339
    return-void
.end method

.method private postParoleStateChanged()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x9

    #@2
    .line 347
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 348
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@c
    .line 345
    return-void
.end method

.method private readScreenOnTimeLocked()J
    .locals 6

    #@0
    .prologue
    .line 460
    const-wide/16 v2, 0x0

    #@2
    .line 461
    .local v2, "screenOnTime":J
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeFile()Ljava/io/File;

    #@5
    move-result-object v4

    #@6
    .line 462
    .local v4, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 464
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    #@e
    new-instance v5, Ljava/io/FileReader;

    #@10
    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@13
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@16
    .line 465
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1d
    move-result-wide v2

    #@1e
    .line 466
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 472
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v2

    #@22
    .line 470
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/usage/UsageStatsService;->writeScreenOnTimeLocked(J)V

    #@25
    goto :goto_0

    #@26
    .line 467
    :catch_0
    move-exception v0

    #@27
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
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
    .line 945
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

.method private writeScreenOnTimeLocked(J)V
    .locals 5
    .param p1, "screenOnTime"    # J

    #@0
    .prologue
    .line 476
    new-instance v2, Landroid/util/AtomicFile;

    #@2
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeFile()Ljava/io/File;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@9
    .line 477
    .local v2, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v0, 0x0

    #@a
    .line 479
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v0

    #@e
    .line 480
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    #@19
    .line 481
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 475
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@1d
    .line 482
    :catch_0
    move-exception v1

    #@1e
    .line 483
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@21
    goto :goto_0
.end method


# virtual methods
.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@0
    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 758
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 755
    return-void

    #@12
    .line 756
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method checkIdleStates(I)V
    .locals 23
    .param p1, "checkUserId"    # I

    #@0
    .prologue
    .line 357
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 358
    return-void

    #@7
    .line 363
    :cond_0
    const/4 v2, -0x1

    #@8
    move/from16 v0, p1

    #@a
    if-ne v0, v2, :cond_1

    #@c
    .line 364
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v21

    #@14
    .line 372
    .local v21, "userIds":[I
    :goto_0
    const/16 v16, 0x0

    #@16
    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v21

    #@18
    array-length v2, v0

    #@19
    move/from16 v0, v16

    #@1b
    if-ge v0, v2, :cond_4

    #@1d
    .line 373
    aget v4, v21, v16

    #@1f
    .line 375
    .local v4, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v2

    #@27
    .line 376
    const/16 v10, 0x2200

    #@29
    .line 375
    invoke-virtual {v2, v10, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    #@2c
    move-result-object v19

    #@2d
    .line 379
    .local v19, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@31
    move-object/from16 v22, v0

    #@33
    monitor-enter v22

    #@34
    .line 380
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@37
    move-result-wide v6

    #@38
    .line 381
    .local v6, "timeNow":J
    move-object/from16 v0, p0

    #@3a
    invoke-direct {v0, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    #@3d
    move-result-wide v8

    #@3e
    .line 382
    .local v8, "screenOnTime":J
    move-object/from16 v0, p0

    #@40
    invoke-direct {v0, v4, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@43
    move-result-object v5

    #@44
    .line 384
    .local v5, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@47
    move-result v18

    #@48
    .line 385
    .local v18, "packageCount":I
    const/16 v17, 0x0

    #@4a
    .local v17, "p":I
    :goto_2
    move/from16 v0, v17

    #@4c
    move/from16 v1, v18

    #@4e
    if-ge v0, v1, :cond_3

    #@50
    .line 386
    move-object/from16 v0, v19

    #@52
    move/from16 v1, v17

    #@54
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v2

    #@58
    check-cast v2, Landroid/content/pm/PackageInfo;

    #@5a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@5c
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v2, p0

    #@5e
    .line 387
    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z

    #@61
    move-result v13

    #@62
    .line 389
    .local v13, "isIdle":Z
    move-object/from16 v0, p0

    #@64
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@6a
    .line 390
    if-eqz v13, :cond_2

    #@6c
    const/4 v2, 0x1

    #@6d
    .line 389
    :goto_3
    const/4 v12, 0x3

    #@6e
    invoke-virtual {v11, v12, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v10, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@75
    .line 391
    move-object/from16 v0, p0

    #@77
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@79
    move-object v11, v3

    #@7a
    move v12, v4

    #@7b
    move-wide v14, v6

    #@7c
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    .line 385
    add-int/lit8 v17, v17, 0x1

    #@81
    goto :goto_2

    #@82
    .line 366
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "timeNow":J
    .end local v8    # "screenOnTime":J
    .end local v13    # "isIdle":Z
    .end local v16    # "i":I
    .end local v17    # "p":I
    .end local v18    # "packageCount":I
    .end local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v21    # "userIds":[I
    :cond_1
    const/4 v2, 0x1

    #@83
    :try_start_2
    new-array v0, v2, [I

    #@85
    move-object/from16 v21, v0

    #@87
    const/4 v2, 0x0

    #@88
    aput p1, v21, v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@8a
    .restart local v21    # "userIds":[I
    goto :goto_0

    #@8b
    .line 368
    .end local v21    # "userIds":[I
    :catch_0
    move-exception v20

    #@8c
    .line 369
    .local v20, "re":Landroid/os/RemoteException;
    return-void

    #@8d
    .line 390
    .end local v20    # "re":Landroid/os/RemoteException;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "userId":I
    .restart local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .restart local v6    # "timeNow":J
    .restart local v8    # "screenOnTime":J
    .restart local v13    # "isIdle":Z
    .restart local v16    # "i":I
    .restart local v17    # "p":I
    .restart local v18    # "packageCount":I
    .restart local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v21    # "userIds":[I
    :cond_2
    const/4 v2, 0x0

    #@8e
    goto :goto_3

    #@8f
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v13    # "isIdle":Z
    :cond_3
    monitor-exit v22

    #@90
    .line 372
    add-int/lit8 v16, v16, 0x1

    #@92
    goto :goto_1

    #@93
    .line 379
    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "timeNow":J
    .end local v8    # "screenOnTime":J
    .end local v17    # "p":I
    .end local v18    # "packageCount":I
    :catchall_0
    move-exception v2

    #@94
    monitor-exit v22

    #@95
    throw v2

    #@96
    .line 395
    .end local v4    # "userId":I
    .end local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_4
    move-object/from16 v0, p0

    #@98
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@9e
    const/4 v11, 0x5

    #@9f
    const/4 v12, 0x0

    #@a0
    move/from16 v0, p1

    #@a2
    invoke-virtual {v10, v11, v0, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@a5
    move-result-object v10

    #@a6
    .line 396
    move-object/from16 v0, p0

    #@a8
    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    #@aa
    .line 395
    invoke-virtual {v2, v10, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@ad
    .line 356
    return-void
.end method

.method checkParoleTimeout()V
    .locals 8

    #@0
    .prologue
    .line 401
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 402
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 403
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@a
    move-result-wide v4

    #@b
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@d
    sub-long v0, v4, v6

    #@f
    .line 404
    .local v0, "timeSinceLastParole":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@11
    cmp-long v2, v0, v4

    #@13
    if-lez v2, :cond_1

    #@15
    .line 406
    const/4 v2, 0x1

    #@16
    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    #@19
    .line 408
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleEndTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .end local v0    # "timeSinceLastParole":J
    :cond_0
    :goto_0
    monitor-exit v3

    #@1d
    .line 400
    return-void

    #@1e
    .line 411
    .restart local v0    # "timeSinceLastParole":J
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 401
    .end local v0    # "timeSinceLastParole":J
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 962
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 963
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@6
    move-result-wide v8

    #@7
    invoke-direct {p0, v8, v9}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    #@a
    move-result-wide v4

    #@b
    .line 964
    .local v4, "screenOnTime":J
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@d
    const-string/jumbo v6, "  "

    #@10
    invoke-direct {v2, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@13
    .line 965
    .local v2, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v0, Landroid/util/ArraySet;

    #@15
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@18
    .line 966
    .local v0, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@1f
    .line 968
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@24
    move-result v3

    #@25
    .line 969
    .local v3, "userCount":I
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@28
    .line 970
    const-string/jumbo v6, "user"

    #@2b
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@30
    move-result v8

    #@31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v2, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@38
    .line 971
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3b
    .line 972
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3e
    .line 973
    const-string/jumbo v6, "--checkin"

    #@41
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_1

    #@47
    .line 974
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v6

    #@4d
    check-cast v6, Lcom/android/server/usage/UserUsageStatsService;

    #@4f
    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;J)V

    #@52
    .line 982
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@55
    .line 969
    add-int/lit8 v1, v1, 0x1

    #@57
    goto :goto_0

    #@58
    .line 976
    :cond_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@5a
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v6

    #@5e
    check-cast v6, Lcom/android/server/usage/UserUsageStatsService;

    #@60
    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;J)V

    #@63
    .line 977
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@66
    .line 978
    array-length v6, p1

    #@67
    if-lez v6, :cond_0

    #@69
    const-string/jumbo v6, "history"

    #@6c
    const/4 v8, 0x0

    #@6d
    aget-object v8, p1, v8

    #@6f
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v6

    #@73
    if-eqz v6, :cond_0

    #@75
    .line 979
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@77
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@79
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@7c
    move-result v8

    #@7d
    invoke-virtual {v6, v2, v8}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    goto :goto_1

    #@81
    .line 962
    .end local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "userCount":I
    .end local v4    # "screenOnTime":J
    :catchall_0
    move-exception v6

    #@82
    monitor-exit v7

    #@83
    throw v6

    #@84
    .line 984
    .restart local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v3    # "userCount":I
    .restart local v4    # "screenOnTime":J
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v8, "Screen On Timebase:"

    #@8c
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@92
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 986
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a0
    .line 987
    const-string/jumbo v6, "Settings:"

    #@a3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a6
    .line 989
    const-string/jumbo v6, "  mAppIdleDurationMillis="

    #@a9
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    .line 990
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    #@ae
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@b1
    .line 991
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@b4
    .line 993
    const-string/jumbo v6, "  mAppIdleWallclockThresholdMillis="

    #@b7
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ba
    .line 994
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    #@bc
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@bf
    .line 995
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@c2
    .line 997
    const-string/jumbo v6, "  mCheckIdleIntervalMillis="

    #@c5
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8
    .line 998
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    #@ca
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@cd
    .line 999
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@d0
    .line 1001
    const-string/jumbo v6, "  mAppIdleParoleIntervalMillis="

    #@d3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    .line 1002
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@d8
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@db
    .line 1003
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@de
    .line 1005
    const-string/jumbo v6, "  mAppIdleParoleDurationMillis="

    #@e1
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4
    .line 1006
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    #@e6
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@e9
    .line 1007
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@ec
    .line 1009
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@ef
    .line 1010
    const-string/jumbo v6, "mAppIdleEnabled="

    #@f2
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5
    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@f7
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@fa
    .line 1011
    const-string/jumbo v6, " mAppIdleParoled="

    #@fd
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    #@102
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@105
    .line 1012
    const-string/jumbo v6, " mScreenOn="

    #@108
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10b
    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    #@10d
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@110
    .line 1013
    const-string/jumbo v6, "mLastAppIdleParoledTime="

    #@113
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@116
    .line 1014
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@118
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@11b
    .line 1015
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@11e
    .line 1016
    const-string/jumbo v6, "mScreenOnTime="

    #@121
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@124
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@126
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@129
    .line 1017
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@12c
    .line 1018
    const-string/jumbo v6, "mScreenOnSystemTimeSnapshot="

    #@12f
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132
    .line 1019
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    #@134
    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@137
    .line 1020
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13a
    monitor-exit v7

    #@13b
    .line 961
    return-void
.end method

.method flushToDisk()V
    .locals 2

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 668
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 666
    return-void

    #@8
    .line 667
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 636
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v23, v0

    #@6
    monitor-enter v23

    #@7
    .line 637
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@a
    move-result-wide v12

    #@b
    .line 638
    .local v12, "timeNow":J
    move-object/from16 v0, p0

    #@d
    invoke-direct {v0, v12, v13}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    #@10
    move-result-wide v10

    #@11
    .line 639
    .local v10, "screenOnTime":J
    if-eqz p3, :cond_2

    #@13
    move-object/from16 v0, p0

    #@15
    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    #@17
    :goto_0
    sub-long v14, v10, v14

    #@19
    const-wide/16 v16, 0x1388

    #@1b
    sub-long v20, v14, v16

    #@1d
    .line 642
    .local v20, "deviceUsageTime":J
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, p2

    #@21
    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@24
    move-result-object v22

    #@25
    .line 643
    .local v22, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, v22

    #@27
    move-object/from16 v1, p1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    #@2c
    move-result-wide v6

    #@2d
    .line 644
    .local v6, "beginIdleTime":J
    move-object/from16 v0, v22

    #@2f
    move-object/from16 v1, p1

    #@31
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    #@34
    move-result-wide v8

    #@35
    .local v8, "lastUsedTime":J
    move-object/from16 v5, p0

    #@37
    .line 645
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usage/UsageStatsService;->hasPassedIdleTimeoutLocked(JJJJ)Z

    #@3a
    move-result v4

    #@3b
    .line 647
    .local v4, "previouslyIdle":Z
    move-object/from16 v0, v22

    #@3d
    move-object/from16 v1, p1

    #@3f
    move-wide/from16 v2, v20

    #@41
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->setBeginIdleTime(Ljava/lang/String;J)V

    #@44
    .line 649
    if-eqz p3, :cond_3

    #@46
    move-object/from16 v0, p0

    #@48
    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    #@4a
    :goto_1
    sub-long v14, v12, v14

    #@4c
    const-wide/16 v16, 0x1388

    #@4e
    sub-long v14, v14, v16

    #@50
    .line 648
    move-object/from16 v0, v22

    #@52
    move-object/from16 v1, p1

    #@54
    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/usage/UserUsageStatsService;->setSystemLastUsedTime(Ljava/lang/String;J)V

    #@57
    .line 651
    move/from16 v0, p3

    #@59
    if-eq v4, v0, :cond_1

    #@5b
    .line 653
    move-object/from16 v0, p0

    #@5d
    iget-object v14, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@63
    .line 654
    if-eqz p3, :cond_4

    #@65
    const/4 v5, 0x1

    #@66
    .line 653
    :goto_2
    const/16 v16, 0x3

    #@68
    move/from16 v0, v16

    #@6a
    move/from16 v1, p2

    #@6c
    move-object/from16 v2, p1

    #@6e
    invoke-virtual {v15, v0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v14, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@75
    .line 655
    if-nez p3, :cond_0

    #@77
    .line 656
    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V

    #@7a
    .line 658
    :cond_0
    move-object/from16 v0, p0

    #@7c
    iget-object v14, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@7e
    move-object/from16 v15, p1

    #@80
    move/from16 v16, p2

    #@82
    move/from16 v17, p3

    #@84
    move-wide/from16 v18, v12

    #@86
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@89
    :cond_1
    monitor-exit v23

    #@8a
    .line 635
    return-void

    #@8b
    .line 639
    .end local v4    # "previouslyIdle":Z
    .end local v6    # "beginIdleTime":J
    .end local v8    # "lastUsedTime":J
    .end local v20    # "deviceUsageTime":J
    .end local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_2
    const-wide/16 v14, 0x0

    #@8d
    goto :goto_0

    #@8e
    .line 649
    .restart local v4    # "previouslyIdle":Z
    .restart local v6    # "beginIdleTime":J
    .restart local v8    # "lastUsedTime":J
    .restart local v20    # "deviceUsageTime":J
    .restart local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_3
    const-wide/16 v14, 0x0

    #@90
    goto :goto_1

    #@91
    .line 654
    :cond_4
    const/4 v5, 0x0

    #@92
    goto :goto_2

    #@93
    .line 636
    .end local v4    # "previouslyIdle":Z
    .end local v6    # "beginIdleTime":J
    .end local v8    # "lastUsedTime":J
    .end local v10    # "screenOnTime":J
    .end local v12    # "timeNow":J
    .end local v20    # "deviceUsageTime":J
    .end local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v5

    #@94
    monitor-exit v23

    #@95
    throw v5
.end method

.method getIdleUidsForUser(I)[I
    .locals 21
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 834
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 835
    const/4 v2, 0x0

    #@7
    new-array v2, v2, [I

    #@9
    return-object v2

    #@a
    .line 841
    :cond_0
    move-object/from16 v0, p0

    #@c
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 842
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@12
    move-result-wide v6

    #@13
    .line 843
    .local v6, "timeNow":J
    move-object/from16 v0, p0

    #@15
    move/from16 v1, p1

    #@17
    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@1a
    move-result-object v5

    #@1b
    .line 844
    .local v5, "userService":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v0, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-wide v8

    #@21
    .local v8, "screenOnTime":J
    monitor-exit v3

    #@22
    .line 850
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@25
    move-result-object v2

    #@26
    const/4 v3, 0x0

    #@27
    move/from16 v0, p1

    #@29
    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    #@2c
    move-result-object v18

    #@2d
    .line 851
    .local v18, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@30
    move-result-object v11

    #@31
    .line 858
    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v19, Landroid/util/SparseIntArray;

    #@33
    invoke-direct/range {v19 .. v19}, Landroid/util/SparseIntArray;-><init>()V

    #@36
    .line 862
    .local v19, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@39
    move-result v2

    #@3a
    add-int/lit8 v13, v2, -0x1

    #@3c
    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_4

    #@3e
    .line 863
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v10

    #@42
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    #@44
    .line 866
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@46
    move-object/from16 v2, p0

    #@48
    move/from16 v4, p1

    #@4a
    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z

    #@4d
    move-result v14

    #@4e
    .line 869
    .local v14, "idle":Z
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    #@50
    move-object/from16 v0, v19

    #@52
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@55
    move-result v15

    #@56
    .line 870
    .local v15, "index":I
    if-gez v15, :cond_2

    #@58
    .line 871
    iget v3, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5a
    if-eqz v14, :cond_1

    #@5c
    const/high16 v2, 0x10000

    #@5e
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@60
    move-object/from16 v0, v19

    #@62
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@65
    .line 862
    :goto_2
    add-int/lit8 v13, v13, -0x1

    #@67
    goto :goto_0

    #@68
    .line 841
    .end local v5    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "timeNow":J
    .end local v8    # "screenOnTime":J
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v13    # "i":I
    .end local v14    # "idle":Z
    .end local v15    # "index":I
    .end local v18    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v19    # "uidStates":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v2

    #@69
    monitor-exit v3

    #@6a
    throw v2

    #@6b
    .line 852
    .restart local v5    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .restart local v6    # "timeNow":J
    .restart local v8    # "screenOnTime":J
    :catch_0
    move-exception v12

    #@6c
    .line 853
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@6d
    new-array v2, v2, [I

    #@6f
    return-object v2

    #@70
    .line 871
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v13    # "i":I
    .restart local v14    # "idle":Z
    .restart local v15    # "index":I
    .restart local v18    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v19    # "uidStates":Landroid/util/SparseIntArray;
    :cond_1
    const/4 v2, 0x0

    #@71
    goto :goto_1

    #@72
    .line 873
    :cond_2
    move-object/from16 v0, v19

    #@74
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@77
    move-result v20

    #@78
    .line 874
    .local v20, "value":I
    add-int/lit8 v3, v20, 0x1

    #@7a
    if-eqz v14, :cond_3

    #@7c
    const/high16 v2, 0x10000

    #@7e
    :goto_3
    add-int/2addr v2, v3

    #@7f
    move-object/from16 v0, v19

    #@81
    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    #@84
    goto :goto_2

    #@85
    :cond_3
    const/4 v2, 0x0

    #@86
    goto :goto_3

    #@87
    .line 878
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "idle":Z
    .end local v15    # "index":I
    .end local v20    # "value":I
    :cond_4
    const/16 v16, 0x0

    #@89
    .line 879
    .local v16, "numIdle":I
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    #@8c
    move-result v2

    #@8d
    add-int/lit8 v13, v2, -0x1

    #@8f
    :goto_4
    if-ltz v13, :cond_6

    #@91
    .line 880
    move-object/from16 v0, v19

    #@93
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@96
    move-result v20

    #@97
    .line 881
    .restart local v20    # "value":I
    move/from16 v0, v20

    #@99
    and-int/lit16 v2, v0, 0x7fff

    #@9b
    shr-int/lit8 v3, v20, 0x10

    #@9d
    if-ne v2, v3, :cond_5

    #@9f
    .line 882
    add-int/lit8 v16, v16, 0x1

    #@a1
    .line 879
    :cond_5
    add-int/lit8 v13, v13, -0x1

    #@a3
    goto :goto_4

    #@a4
    .line 886
    .end local v20    # "value":I
    :cond_6
    move/from16 v0, v16

    #@a6
    new-array v0, v0, [I

    #@a8
    move-object/from16 v17, v0

    #@aa
    .line 887
    .local v17, "res":[I
    const/16 v16, 0x0

    #@ac
    .line 888
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    #@af
    move-result v2

    #@b0
    add-int/lit8 v13, v2, -0x1

    #@b2
    :goto_5
    if-ltz v13, :cond_8

    #@b4
    .line 889
    move-object/from16 v0, v19

    #@b6
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@b9
    move-result v20

    #@ba
    .line 890
    .restart local v20    # "value":I
    move/from16 v0, v20

    #@bc
    and-int/lit16 v2, v0, 0x7fff

    #@be
    shr-int/lit8 v3, v20, 0x10

    #@c0
    if-ne v2, v3, :cond_7

    #@c2
    .line 891
    move-object/from16 v0, v19

    #@c4
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@c7
    move-result v2

    #@c8
    aput v2, v17, v16

    #@ca
    .line 892
    add-int/lit8 v16, v16, 0x1

    #@cc
    .line 888
    :cond_7
    add-int/lit8 v13, v13, -0x1

    #@ce
    goto :goto_5

    #@cf
    .line 896
    .end local v20    # "value":I
    :cond_8
    return-object v17
.end method

.method hasPassedIdleTimeoutLocked(JJJJ)Z
    .locals 5
    .param p1, "beginIdleTime"    # J
    .param p3, "lastUsedTime"    # J
    .param p5, "screenOnTime"    # J
    .param p7, "currentTime"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 751
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    #@3
    sub-long v2, p5, v2

    #@5
    cmp-long v1, p1, v2

    #@7
    if-gtz v1, :cond_0

    #@9
    .line 752
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    #@b
    sub-long v2, p7, v2

    #@d
    cmp-long v1, p3, v2

    #@f
    if-gtz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 751
    :cond_0
    return v0
.end method

.method informListeners(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isIdle"    # Z

    #@0
    .prologue
    .line 933
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
    .line 934
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZ)V

    #@15
    goto :goto_0

    #@16
    .line 932
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method informParoleStateChanged()V
    .locals 3

    #@0
    .prologue
    .line 939
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
    .line 940
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    #@14
    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    #@17
    goto :goto_0

    #@18
    .line 938
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method isAppIdleFiltered(Ljava/lang/String;IJ)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeNow"    # J

    #@0
    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 780
    const-wide/16 v4, -0x1

    #@5
    cmp-long v0, p3, v4

    #@7
    if-nez v0, :cond_0

    #@9
    .line 781
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@c
    move-result-wide p3

    #@d
    .line 783
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@10
    move-result-object v3

    #@11
    .line 784
    .local v3, "userService":Lcom/android/server/usage/UserUsageStatsService;
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-wide v6

    #@15
    .local v6, "screenOnTime":J
    monitor-exit v1

    #@16
    move-object v0, p0

    #@17
    move-object v1, p1

    #@18
    move v2, p2

    #@19
    move-wide v4, p3

    #@1a
    .line 786
    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z

    #@1d
    move-result v0

    #@1e
    return v0

    #@1f
    .line 779
    .end local v3    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "screenOnTime":J
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeNow"    # J

    #@0
    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 771
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 773
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IJ)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 202
    const/16 v1, 0x1f4

    #@2
    if-ne p1, v1, :cond_1

    #@4
    .line 204
    new-instance v0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;

    #@6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V

    #@b
    .line 205
    .local v0, "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->registerObserver()V

    #@e
    .line 206
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    #@11
    .line 208
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
    .line 210
    const-string/jumbo v1, "deviceidle"

    #@22
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@25
    move-result-object v1

    #@26
    .line 209
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@2c
    .line 212
    const-string/jumbo v1, "batterystats"

    #@2f
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@32
    move-result-object v1

    #@33
    .line 211
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@39
    .line 213
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@3c
    move-result-object v1

    #@3d
    .line 214
    const-string/jumbo v2, "display"

    #@40
    .line 213
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroid/hardware/display/DisplayManager;

    #@46
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@48
    .line 215
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
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@59
    move-result-wide v2

    #@5a
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    #@5c
    .line 218
    monitor-enter p0

    #@5d
    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readScreenOnTimeLocked()J

    #@60
    move-result-wide v2

    #@61
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    monitor-exit p0

    #@64
    .line 221
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@66
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@68
    const/4 v3, 0x0

    #@69
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@6c
    .line 222
    monitor-enter p0

    #@6d
    .line 223
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->updateDisplayLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@70
    monitor-exit p0

    #@71
    .line 201
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_0
    :goto_0
    return-void

    #@72
    .line 218
    .restart local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :catchall_0
    move-exception v1

    #@73
    monitor-exit p0

    #@74
    throw v1

    #@75
    .line 222
    :catchall_1
    move-exception v1

    #@76
    monitor-exit p0

    #@77
    throw v1

    #@78
    .line 225
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_1
    const/16 v1, 0x3e8

    #@7a
    if-ne p1, v1, :cond_0

    #@7c
    .line 226
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@7f
    move-result-object v1

    #@80
    const-class v2, Landroid/os/BatteryManager;

    #@82
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@85
    move-result-object v1

    #@86
    check-cast v1, Landroid/os/BatteryManager;

    #@88
    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    #@8b
    move-result v1

    #@8c
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    #@8f
    goto :goto_0
.end method

.method onDeviceIdleModeChanged()V
    .locals 10

    #@0
    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    #@2
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@5
    move-result v0

    #@6
    .line 490
    .local v0, "deviceIdle":Z
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 491
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@c
    move-result-wide v6

    #@d
    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@f
    sub-long v2, v6, v8

    #@11
    .line 492
    .local v2, "timeSinceLastParole":J
    if-nez v0, :cond_1

    #@13
    .line 493
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    #@15
    cmp-long v1, v2, v6

    #@17
    if-ltz v1, :cond_1

    #@19
    .line 495
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V

    #@1c
    .line 496
    const/4 v1, 0x1

    #@1d
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    :goto_0
    monitor-exit v4

    #@21
    .line 487
    return-void

    #@22
    .line 497
    :cond_1
    if-eqz v0, :cond_0

    #@24
    .line 499
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 490
    .end local v2    # "timeSinceLastParole":J
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v4

    #@2b
    throw v1
.end method

.method public onStart()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 162
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
    .line 163
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
    .line 165
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    #@21
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@2e
    .line 167
    new-instance v7, Ljava/io/File;

    #@30
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "system"

    #@37
    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3a
    .line 168
    .local v7, "systemDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@3c
    const-string/jumbo v1, "usagestats"

    #@3f
    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@42
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@44
    .line 169
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@49
    .line 170
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@4b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_0

    #@51
    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v2, "Usage stats directory does not exist: "

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 172
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    #@61
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    .line 175
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    #@73
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@76
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@79
    .line 176
    .local v3, "userActions":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    #@7c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7f
    .line 177
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@82
    move-result-object v0

    #@83
    new-instance v1, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    #@85
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;)V

    #@88
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@8a
    move-object v5, v4

    #@8b
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@8e
    .line 180
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@95
    move-result-object v0

    #@96
    .line 181
    const v1, 0x1120015

    #@99
    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@9c
    move-result v0

    #@9d
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@9f
    .line 182
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    #@a1
    if-eqz v0, :cond_1

    #@a3
    .line 183
    new-instance v6, Landroid/content/IntentFilter;

    #@a5
    const-string/jumbo v0, "android.os.action.CHARGING"

    #@a8
    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@ab
    .line 184
    .local v6, "deviceStates":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DISCHARGING"

    #@ae
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b1
    .line 185
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@b4
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b7
    .line 186
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@ba
    move-result-object v0

    #@bb
    new-instance v1, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    #@bd
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;)V

    #@c0
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@c3
    .line 189
    .end local v6    # "deviceStates":Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@c5
    monitor-enter v0

    #@c6
    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c9
    monitor-exit v0

    #@ca
    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@cd
    move-result-wide v0

    #@ce
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    #@d0
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d3
    move-result-wide v0

    #@d4
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    #@d6
    .line 196
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@d8
    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    #@da
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService;)V

    #@dd
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@e0
    .line 197
    const-string/jumbo v0, "usagestats"

    #@e3
    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    #@e5
    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService;)V

    #@e8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@eb
    .line 161
    return-void

    #@ec
    .line 189
    :catchall_0
    move-exception v1

    #@ed
    monitor-exit v0

    #@ee
    throw v1
.end method

.method public onStatsUpdated()V
    .locals 4

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    const-wide/32 v2, 0x124f80

    #@6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@9
    .line 279
    return-void
.end method

.method postCheckIdleStates(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 352
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
    .line 351
    return-void
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
    .line 704
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v8

    #@3
    .line 705
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
    .line 706
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 707
    const/4 v3, 0x0

    #@10
    monitor-exit v8

    #@11
    return-object v3

    #@12
    .line 711
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
    .line 712
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
    .line 704
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
    .line 720
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 721
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
    .line 722
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 723
    const/4 v2, 0x0

    #@10
    monitor-exit v7

    #@11
    return-object v2

    #@12
    .line 727
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@15
    move-result-object v6

    #@16
    .line 728
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
    .line 720
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
    .line 687
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v8

    #@3
    .line 688
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
    .line 689
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 690
    const/4 v3, 0x0

    #@10
    monitor-exit v8

    #@11
    return-object v3

    #@12
    .line 694
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
    .line 695
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
    .line 687
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
    .line 764
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 763
    return-void

    #@a
    .line 764
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 677
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
    .line 678
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@29
    .line 679
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v1

    #@2d
    .line 675
    return-void

    #@2e
    .line 676
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
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
    .line 609
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 611
    .local v1, "packages":[Ljava/lang/String;
    array-length v5, v1

    #@6
    :goto_0
    if-ge v4, v5, :cond_2

    #@8
    aget-object v0, v1, v4

    #@a
    .line 615
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@d
    move-result-object v6

    #@e
    .line 616
    const/4 v7, 0x0

    #@f
    .line 615
    invoke-interface {v6, v0, v7, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@12
    move-result-object v2

    #@13
    .line 617
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    #@15
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17
    if-nez v6, :cond_1

    #@19
    .line 611
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 618
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 621
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v6

    #@28
    if-nez v6, :cond_0

    #@2a
    .line 622
    const/4 v6, 0x0

    #@2b
    invoke-virtual {p0, v0, p3, v6}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_1

    #@2f
    .line 624
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    #@30
    .local v3, "re":Landroid/os/RemoteException;
    goto :goto_1

    #@31
    .line 607
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 20
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 579
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v19, v0

    #@6
    monitor-enter v19

    #@7
    .line 580
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@a
    move-result-wide v10

    #@b
    .line 581
    .local v10, "timeNow":J
    move-object/from16 v0, p0

    #@d
    invoke-direct {v0, v10, v11}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    #@10
    move-result-wide v8

    #@11
    .line 582
    .local v8, "screenOnTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    #@14
    .line 585
    move-object/from16 v0, p0

    #@16
    move/from16 v1, p2

    #@18
    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@1b
    move-result-object v18

    #@1c
    .line 586
    .local v18, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, p1

    #@1e
    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@20
    move-object/from16 v0, v18

    #@22
    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    #@25
    move-result-wide v4

    #@26
    .line 587
    .local v4, "beginIdleTime":J
    move-object/from16 v0, p1

    #@28
    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@2a
    move-object/from16 v0, v18

    #@2c
    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    #@2f
    move-result-wide v6

    #@30
    .local v6, "lastUsedTime":J
    move-object/from16 v3, p0

    #@32
    .line 588
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/usage/UsageStatsService;->hasPassedIdleTimeoutLocked(JJJJ)Z

    #@35
    move-result v2

    #@36
    .line 590
    .local v2, "previouslyIdle":Z
    move-object/from16 v0, v18

    #@38
    move-object/from16 v1, p1

    #@3a
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;J)V

    #@3d
    .line 592
    move-object/from16 v0, p1

    #@3f
    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@41
    const/4 v12, 0x1

    #@42
    if-eq v3, v12, :cond_0

    #@44
    .line 593
    move-object/from16 v0, p1

    #@46
    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@48
    const/4 v12, 0x2

    #@49
    if-ne v3, v12, :cond_2

    #@4b
    .line 596
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    #@4d
    .line 598
    move-object/from16 v0, p0

    #@4f
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@55
    .line 599
    move-object/from16 v0, p1

    #@57
    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@59
    .line 598
    const/4 v14, 0x3

    #@5a
    .line 599
    const/4 v15, 0x0

    #@5b
    .line 598
    move/from16 v0, p2

    #@5d
    invoke-virtual {v12, v14, v0, v15, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@60
    move-result-object v12

    #@61
    invoke-virtual {v3, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@64
    .line 600
    move-object/from16 v0, p1

    #@66
    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@68
    const/4 v12, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, p2

    #@6d
    invoke-direct {v0, v3, v1, v12}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V

    #@70
    .line 601
    move-object/from16 v0, p0

    #@72
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    #@74
    move-object/from16 v0, p1

    #@76
    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@78
    const/4 v15, 0x0

    #@79
    move/from16 v14, p2

    #@7b
    move-wide/from16 v16, v10

    #@7d
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    :cond_1
    monitor-exit v19

    #@81
    .line 578
    return-void

    #@82
    .line 594
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    #@84
    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@86
    const/4 v12, 0x6

    #@87
    if-eq v3, v12, :cond_0

    #@89
    .line 595
    move-object/from16 v0, p1

    #@8b
    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    const/4 v12, 0x7

    #@8e
    if-ne v3, v12, :cond_1

    #@90
    goto :goto_0

    #@91
    .line 579
    .end local v2    # "previouslyIdle":Z
    .end local v4    # "beginIdleTime":J
    .end local v6    # "lastUsedTime":J
    .end local v8    # "screenOnTime":J
    .end local v10    # "timeNow":J
    .end local v18    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    #@92
    monitor-exit v19

    #@93
    throw v3
.end method

.method setAppIdle(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 900
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 902
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
    .line 899
    return-void

    #@11
    .line 902
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
    .line 312
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 313
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    #@5
    if-eq v0, p1, :cond_1

    #@7
    .line 314
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    #@9
    .line 316
    if-eqz p1, :cond_0

    #@b
    .line 317
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    #@11
    .line 318
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V

    #@14
    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit v1

    #@18
    .line 311
    return-void

    #@19
    .line 312
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method shutdown()V
    .locals 3

    #@0
    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    .line 571
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 568
    return-void

    #@e
    .line 569
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method updateDisplayLocked()V
    .locals 8

    #@0
    .prologue
    .line 432
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@2
    const/4 v4, 0x0

    #@3
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    #@a
    move-result v3

    #@b
    .line 433
    const/4 v4, 0x2

    #@c
    .line 432
    if-ne v3, v4, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    .line 435
    .local v2, "screenOn":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    #@11
    if-ne v2, v3, :cond_1

    #@13
    return-void

    #@14
    .line 432
    .end local v2    # "screenOn":Z
    :cond_0
    const/4 v2, 0x0

    #@15
    .restart local v2    # "screenOn":Z
    goto :goto_0

    #@16
    .line 437
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    #@18
    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v0

    #@1c
    .line 439
    .local v0, "now":J
    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 440
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    #@22
    .line 431
    :goto_1
    return-void

    #@23
    .line 442
    :cond_2
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@25
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    #@27
    sub-long v6, v0, v6

    #@29
    add-long/2addr v4, v6

    #@2a
    iput-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@2c
    .line 443
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    #@2e
    invoke-direct {p0, v4, v5}, Lcom/android/server/usage/UsageStatsService;->writeScreenOnTimeLocked(J)V

    #@31
    goto :goto_1
.end method
