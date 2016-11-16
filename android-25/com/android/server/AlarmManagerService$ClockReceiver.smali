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
    .line 2659
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 2660
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@a
    .line 2661
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10
    .line 2662
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    #@13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16
    .line 2663
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1d
    .line 2659
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2668
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
    .line 2672
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    #@10
    .line 2667
    :cond_0
    :goto_0
    return-void

    #@11
    .line 2673
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
    .line 2678
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
    .line 2679
    .local v1, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c
    move-result-wide v2

    #@2d
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    #@30
    move-result v0

    #@31
    .line 2680
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
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/AlarmManagerService;->-wrap3(Lcom/android/server/AlarmManagerService;JI)I

    #@40
    .line 2681
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    #@43
    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 19

    #@0
    .prologue
    .line 2700
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v18

    #@4
    .line 2701
    .local v18, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    move-object/from16 v0, v18

    #@a
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@d
    .line 2702
    const/16 v2, 0xb

    #@f
    const/4 v3, 0x0

    #@10
    move-object/from16 v0, v18

    #@12
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    #@15
    .line 2703
    const/16 v2, 0xc

    #@17
    const/4 v3, 0x0

    #@18
    move-object/from16 v0, v18

    #@1a
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    #@1d
    .line 2704
    const/16 v2, 0xd

    #@1f
    const/4 v3, 0x0

    #@20
    move-object/from16 v0, v18

    #@22
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    #@25
    .line 2705
    const/16 v2, 0xe

    #@27
    const/4 v3, 0x0

    #@28
    move-object/from16 v0, v18

    #@2a
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    #@2d
    .line 2706
    const/4 v2, 0x5

    #@2e
    const/4 v3, 0x1

    #@2f
    move-object/from16 v0, v18

    #@31
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    #@34
    .line 2708
    const/4 v14, 0x0

    #@35
    .line 2709
    .local v14, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@39
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3c
    move-result-wide v4

    #@3d
    const-wide/16 v6, 0x0

    #@3f
    const-wide/16 v8, 0x0

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@45
    iget-object v10, v3, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    #@47
    .line 2711
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@4a
    move-result v16

    #@4b
    const-string/jumbo v17, "android"

    #@4e
    .line 2709
    const/4 v3, 0x1

    #@4f
    const/4 v11, 0x0

    #@50
    const/4 v12, 0x0

    #@51
    .line 2710
    const/4 v13, 0x1

    #@52
    const/4 v15, 0x0

    #@53
    .line 2709
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    #@56
    .line 2699
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 24

    #@0
    .prologue
    .line 2686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v18

    #@4
    .line 2687
    .local v18, "currentTime":J
    const-wide/32 v2, 0xea60

    #@7
    div-long v2, v18, v2

    #@9
    const-wide/16 v4, 0x1

    #@b
    add-long/2addr v2, v4

    #@c
    const-wide/32 v4, 0xea60

    #@f
    mul-long v20, v4, v2

    #@11
    .line 2691
    .local v20, "nextTime":J
    sub-long v22, v20, v18

    #@13
    .line 2693
    .local v22, "tickEventDelay":J
    const/4 v14, 0x0

    #@14
    .line 2694
    .local v14, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b
    move-result-wide v4

    #@1c
    add-long v4, v4, v22

    #@1e
    const-wide/16 v6, 0x0

    #@20
    .line 2695
    const-wide/16 v8, 0x0

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@26
    iget-object v10, v3, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@28
    .line 2696
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@2b
    move-result v16

    #@2c
    const-string/jumbo v17, "android"

    #@2f
    .line 2694
    const/4 v3, 0x3

    #@30
    .line 2695
    const/4 v11, 0x0

    #@31
    const/4 v12, 0x0

    #@32
    const/4 v13, 0x1

    #@33
    .line 2696
    const/4 v15, 0x0

    #@34
    .line 2694
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    #@37
    .line 2685
    return-void
.end method
