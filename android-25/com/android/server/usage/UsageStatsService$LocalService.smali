.class final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@0
    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@5
    .line 1499
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$LocalService;->isAppIdleParoleOn()Z

    #@8
    move-result v0

    #@9
    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    #@c
    .line 1497
    return-void
.end method

.method public applyRestoredPayload(ILjava/lang/String;[B)V
    .locals 4
    .param p1, "user"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "payload"    # [B

    #@0
    .prologue
    .line 1522
    if-nez p1, :cond_0

    #@2
    .line 1524
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@4
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@6
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-wrap3(Lcom/android/server/usage/UsageStatsService;)J

    #@9
    move-result-wide v2

    #@a
    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->-wrap2(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@d
    move-result-object v0

    #@e
    .line 1525
    .local v0, "userStats":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->applyRestoredPayload(Ljava/lang/String;[B)V

    #@11
    .line 1521
    .end local v0    # "userStats":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    return-void
.end method

.method public getBackupPayload(ILjava/lang/String;)[B
    .locals 4
    .param p1, "user"    # I
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1511
    if-nez p1, :cond_0

    #@2
    .line 1513
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@4
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@6
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-wrap3(Lcom/android/server/usage/UsageStatsService;)J

    #@9
    move-result-wide v2

    #@a
    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->-wrap2(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    #@d
    move-result-object v0

    #@e
    .line 1514
    .local v0, "userStats":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->getBackupPayload(Ljava/lang/String;)[B

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 1516
    .end local v0    # "userStats":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method public getIdleUidsForUser(I)[I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->getIdleUidsForUser(I)[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uidForAppId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    .line 1475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v4

    #@6
    move-object v1, p1

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    .line 1474
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->-wrap0(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;IIJ)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public isAppIdleParoleOn()Z
    .locals 1

    #@0
    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->isParoledOrCharging()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public prepareShutdown()V
    .locals 1

    #@0
    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    #@5
    .line 1489
    return-void
.end method

.method public removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@0
    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@5
    .line 1504
    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1428
    if-nez p1, :cond_0

    #@3
    .line 1429
    const-string/jumbo v1, "UsageStatsService"

    #@6
    const-string/jumbo v2, "Configuration event reported with a null config"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1430
    return-void

    #@d
    .line 1433
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@f
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@12
    .line 1434
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string/jumbo v1, "android"

    #@15
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@17
    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@1d
    .line 1439
    const/4 v1, 0x5

    #@1e
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@20
    .line 1440
    new-instance v1, Landroid/content/res/Configuration;

    #@22
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@25
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@27
    .line 1441
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@29
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@2b
    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@32
    .line 1427
    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1464
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 1465
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 1466
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 1467
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@e
    .line 1468
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@10
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@12
    const/16 v2, 0x8

    #@14
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1b
    .line 1463
    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "eventType"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1393
    if-nez p1, :cond_0

    #@3
    .line 1394
    const-string/jumbo v1, "UsageStatsService"

    #@6
    const-string/jumbo v2, "Event reported without a component name"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1395
    return-void

    #@d
    .line 1398
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@f
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@12
    .line 1399
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@18
    .line 1400
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@1e
    .line 1403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21
    move-result-wide v2

    #@22
    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@24
    .line 1405
    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@26
    .line 1406
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@28
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@2a
    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@31
    .line 1392
    return-void
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "eventType"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1411
    if-nez p1, :cond_0

    #@3
    .line 1412
    const-string/jumbo v1, "UsageStatsService"

    #@6
    const-string/jumbo v2, "Event reported without a package name"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1413
    return-void

    #@d
    .line 1416
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@f
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@12
    .line 1417
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@14
    .line 1420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@1a
    .line 1422
    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@1c
    .line 1423
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@1e
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@20
    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@27
    .line 1410
    return-void
.end method

.method public reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1446
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1447
    :cond_0
    const-string/jumbo v1, "UsageStatsService"

    #@8
    const-string/jumbo v2, "Event reported without a package name or a shortcut ID"

    #@b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1448
    return-void

    #@f
    .line 1451
    :cond_1
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@11
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@14
    .line 1452
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@1a
    .line 1453
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    #@20
    .line 1456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@23
    move-result-wide v2

    #@24
    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@26
    .line 1458
    const/16 v1, 0x8

    #@28
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@2a
    .line 1459
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2c
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@2e
    invoke-virtual {v1, v4, p3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@35
    .line 1445
    return-void
.end method
