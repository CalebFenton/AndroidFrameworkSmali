.class Lcom/android/server/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final DATE_CHANGE_EVENT:I = 0x3

.field public static final MINUTE_CHANGE_EVENT:I = 0x2

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 2337
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2341
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v9, 0x1

    #@3
    if-ne v0, v9, :cond_1

    #@5
    .line 2342
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 2343
    .local v1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    #@c
    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v9

    #@f
    .line 2344
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 2345
    .local v4, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@16
    move-result-wide v2

    #@17
    .line 2346
    .local v2, "nowELAPSED":J
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    #@19
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    #@1c
    .line 2347
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    #@1e
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-wrap5(Lcom/android/server/AlarmManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v9

    #@22
    .line 2351
    const/4 v8, 0x0

    #@23
    .local v8, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v0

    #@27
    if-ge v8, v0, :cond_2

    #@29
    .line 2352
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    #@2f
    .line 2354
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@31
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    .line 2351
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@36
    goto :goto_0

    #@37
    .line 2343
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    #@38
    monitor-exit v9

    #@39
    throw v0

    #@3a
    .line 2355
    .restart local v2    # "nowELAPSED":J
    .restart local v4    # "nowRTC":J
    .restart local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "i":I
    :catch_0
    move-exception v7

    #@3b
    .line 2356
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v10, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@3d
    const-wide/16 v12, 0x0

    #@3f
    cmp-long v0, v10, v12

    #@41
    if-lez v0, :cond_0

    #@43
    .line 2359
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    #@45
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@47
    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    #@4a
    goto :goto_1

    #@4b
    .line 2363
    .end local v1    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v8    # "i":I
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    #@4d
    const/4 v9, 0x4

    #@4e
    if-ne v0, v9, :cond_2

    #@50
    .line 2364
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    #@52
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-wrap4(Lcom/android/server/AlarmManagerService;)V

    #@55
    .line 2340
    :cond_2
    return-void
.end method
