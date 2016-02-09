.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 2370
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 2371
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@a
    .line 2372
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10
    .line 2373
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    #@13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16
    .line 2374
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1d
    .line 2370
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "android.intent.action.TIME_TICK"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2383
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    #@10
    .line 2378
    :cond_0
    :goto_0
    return-void

    #@11
    .line 2384
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "android.intent.action.DATE_CHANGED"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2389
    const-string/jumbo v2, "persist.sys.timezone"

    #@21
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@28
    move-result-object v1

    #@29
    .line 2390
    .local v1, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c
    move-result-wide v2

    #@2d
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    #@30
    move-result v0

    #@31
    .line 2391
    .local v0, "gmtOffset":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@33
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@35
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@37
    const v3, 0xea60

    #@3a
    div-int v3, v0, v3

    #@3c
    neg-int v3, v3

    #@3d
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/AlarmManagerService;->-wrap2(Lcom/android/server/AlarmManagerService;JI)I

    #@40
    .line 2392
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    #@43
    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 2411
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@7
    move-result-object v13

    #@8
    .line 2412
    .local v13, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@f
    .line 2413
    const/16 v0, 0xa

    #@11
    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    #@14
    .line 2414
    const/16 v0, 0xc

    #@16
    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    #@19
    .line 2415
    const/16 v0, 0xd

    #@1b
    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    #@1e
    .line 2416
    const/16 v0, 0xe

    #@20
    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    #@23
    .line 2417
    const/4 v0, 0x5

    #@24
    invoke-virtual {v13, v0, v1}, Ljava/util/Calendar;->add(II)V

    #@27
    .line 2419
    const/4 v10, 0x0

    #@28
    .line 2420
    .local v10, "workSource":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2a
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2d
    move-result-wide v2

    #@2e
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@30
    iget-object v8, v6, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    #@32
    .line 2421
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@35
    move-result v12

    #@36
    const/4 v11, 0x0

    #@37
    move-wide v6, v4

    #@38
    move v9, v1

    #@39
    .line 2420
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    #@3c
    .line 2410
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 22

    #@0
    .prologue
    .line 2397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v16

    #@4
    .line 2398
    .local v16, "currentTime":J
    const-wide/32 v2, 0xea60

    #@7
    div-long v2, v16, v2

    #@9
    const-wide/16 v4, 0x1

    #@b
    add-long/2addr v2, v4

    #@c
    const-wide/32 v4, 0xea60

    #@f
    mul-long v18, v4, v2

    #@11
    .line 2402
    .local v18, "nextTime":J
    sub-long v20, v18, v16

    #@13
    .line 2404
    .local v20, "tickEventDelay":J
    const/4 v12, 0x0

    #@14
    .line 2405
    .local v12, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b
    move-result-wide v4

    #@1c
    add-long v4, v4, v20

    #@1e
    const-wide/16 v6, 0x0

    #@20
    .line 2406
    const-wide/16 v8, 0x0

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@26
    iget-object v10, v3, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@28
    .line 2407
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@2b
    move-result v14

    #@2c
    .line 2405
    const/4 v3, 0x3

    #@2d
    .line 2406
    const/4 v11, 0x1

    #@2e
    const/4 v13, 0x0

    #@2f
    .line 2405
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    #@32
    .line 2396
    return-void
.end method
