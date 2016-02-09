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
    .line 1287
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
    .line 1377
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@5
    .line 1378
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$LocalService;->isAppIdleParoleOn()Z

    #@8
    move-result v0

    #@9
    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    #@c
    .line 1376
    return-void
.end method

.method public getIdleUidsForUser(I)[I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->getIdleUidsForUser(I)[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isAppIdle(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IJ)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isAppIdleParoleOn()Z
    .locals 1

    #@0
    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    iget-boolean v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    #@4
    return v0
.end method

.method public prepareShutdown()V
    .locals 1

    #@0
    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    #@5
    .line 1368
    return-void
.end method

.method public removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    #@0
    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@5
    .line 1383
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
    .line 1326
    if-nez p1, :cond_0

    #@3
    .line 1327
    const-string/jumbo v1, "UsageStatsService"

    #@6
    const-string/jumbo v2, "Configuration event reported with a null config"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1328
    return-void

    #@d
    .line 1331
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@f
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@12
    .line 1332
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string/jumbo v1, "android"

    #@15
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@17
    .line 1335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@1d
    .line 1337
    const/4 v1, 0x5

    #@1e
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@20
    .line 1338
    new-instance v1, Landroid/content/res/Configuration;

    #@22
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@25
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@27
    .line 1339
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
    .line 1325
    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1344
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 1345
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 1346
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 1347
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@e
    .line 1348
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
    .line 1343
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
    .line 1291
    if-nez p1, :cond_0

    #@3
    .line 1292
    const-string/jumbo v1, "UsageStatsService"

    #@6
    const-string/jumbo v2, "Event reported without a component name"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1293
    return-void

    #@d
    .line 1296
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@f
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@12
    .line 1297
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@18
    .line 1298
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@1e
    .line 1301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21
    move-result-wide v2

    #@22
    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@24
    .line 1303
    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@26
    .line 1304
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
    .line 1290
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
    .line 1309
    if-nez p1, :cond_0

    #@3
    .line 1310
    const-string/jumbo v1, "UsageStatsService"

    #@6
    const-string/jumbo v2, "Event reported without a package name"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1311
    return-void

    #@d
    .line 1314
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@f
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@12
    .line 1315
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@14
    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@1a
    .line 1320
    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@1c
    .line 1321
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
    .line 1308
    return-void
.end method
