.class final Lcom/android/server/am/ActivityStack$ActivityStackHandler;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityStackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStack;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@2
    .line 272
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 277
    iget v3, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v3, :pswitch_data_0

    #@6
    .line 276
    :goto_0
    return-void

    #@7
    .line 279
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@b
    .line 282
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v2, "ActivityManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Activity pause timeout for "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 283
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@27
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29
    monitor-enter v3

    #@2a
    .line 284
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 285
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@30
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@32
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34
    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "pausing "

    #@3e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v2, v4, v6, v7, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    #@4d
    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@4f
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@51
    const/4 v5, 0x1

    #@52
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    monitor-exit v3

    #@56
    goto :goto_0

    #@57
    .line 283
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    #@58
    monitor-exit v3

    #@59
    throw v2

    #@5a
    .line 291
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5c
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@5e
    .line 292
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@60
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@62
    monitor-enter v3

    #@63
    .line 293
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_1

    #@69
    .line 294
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@6b
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6d
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6f
    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@71
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v8, "launching "

    #@79
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v2, v4, v6, v7, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@88
    goto :goto_1

    #@89
    .line 292
    :catchall_1
    move-exception v2

    #@8a
    monitor-exit v3

    #@8b
    throw v2

    #@8c
    .line 299
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8e
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@90
    .line 302
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v3, "ActivityManager"

    #@93
    new-instance v4, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v5, "Activity destroy timeout for "

    #@9b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v4

    #@a3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v4

    #@a7
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 303
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@ac
    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ae
    monitor-enter v3

    #@af
    .line 304
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@b1
    if-eqz v1, :cond_2

    #@b3
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@b5
    :cond_2
    const-string/jumbo v5, "destroyTimeout"

    #@b8
    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@bb
    goto :goto_1

    #@bc
    .line 303
    :catchall_2
    move-exception v2

    #@bd
    monitor-exit v3

    #@be
    throw v2

    #@bf
    .line 308
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c1
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@c3
    .line 311
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v2, "ActivityManager"

    #@c6
    new-instance v3, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v4, "Activity stop timeout for "

    #@ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v3

    #@d2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v3

    #@d6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v3

    #@da
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    .line 312
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@df
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e1
    monitor-enter v3

    #@e2
    .line 313
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    #@e5
    move-result v2

    #@e6
    if-eqz v2, :cond_1

    #@e8
    .line 314
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@ea
    const/4 v4, 0x0

    #@eb
    const/4 v5, 0x0

    #@ec
    const/4 v6, 0x0

    #@ed
    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@f0
    goto/16 :goto_1

    #@f2
    .line 312
    :catchall_3
    move-exception v2

    #@f3
    monitor-exit v3

    #@f4
    throw v2

    #@f5
    .line 319
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f7
    check-cast v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    #@f9
    .line 320
    .local v0, "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@fb
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@fd
    monitor-enter v3

    #@fe
    .line 321
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@100
    iget-object v4, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    #@102
    iget-object v5, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    #@104
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@107
    goto/16 :goto_1

    #@109
    .line 320
    :catchall_4
    move-exception v2

    #@10a
    monitor-exit v3

    #@10b
    throw v2

    #@10c
    .line 325
    .end local v0    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@10e
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@110
    monitor-enter v3

    #@111
    .line 326
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@113
    const/4 v4, 0x0

    #@114
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    #@117
    goto/16 :goto_1

    #@119
    .line 325
    :catchall_5
    move-exception v2

    #@11a
    monitor-exit v3

    #@11b
    throw v2

    #@11c
    .line 330
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@11e
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@120
    monitor-enter v3

    #@121
    .line 331
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@123
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@126
    move-result-object v1

    #@127
    .line 332
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v2, "ActivityManager"

    #@12a
    new-instance v4, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v5, "Timeout waiting for cancelVisibleBehind player="

    #@132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v4

    #@136
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v4

    #@13a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v4

    #@13e
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@141
    .line 333
    if-eqz v1, :cond_1

    #@143
    .line 334
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@145
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@147
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@149
    const/4 v5, 0x0

    #@14a
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    #@14d
    goto/16 :goto_1

    #@14f
    .line 330
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v2

    #@150
    monitor-exit v3

    #@151
    throw v2

    #@152
    .line 277
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
