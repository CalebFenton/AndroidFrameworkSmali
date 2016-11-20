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
    .line 359
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@2
    .line 360
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 359
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
    .line 365
    iget v3, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v3, :pswitch_data_0

    #@6
    .line 364
    :goto_0
    return-void

    #@7
    .line 367
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@b
    .line 370
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/ActivityStack;->-get0()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Activity pause timeout for "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 371
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@28
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2a
    monitor-enter v3

    #@2b
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@2e
    .line 372
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 373
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@34
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@36
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@38
    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "pausing "

    #@42
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v2, v4, v6, v7, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    #@51
    .line 375
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@53
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@55
    const/4 v5, 0x1

    #@56
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit v3

    #@5a
    .line 371
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5d
    goto :goto_0

    #@5e
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit v3

    #@60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@63
    throw v2

    #@64
    .line 379
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@66
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@68
    .line 380
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@6a
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6c
    monitor-enter v3

    #@6d
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@70
    .line 381
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    #@73
    move-result v2

    #@74
    if-eqz v2, :cond_1

    #@76
    .line 382
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@78
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7a
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7c
    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@7e
    new-instance v5, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v8, "launching "

    #@86
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v2, v4, v6, v7, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@95
    :cond_1
    monitor-exit v3

    #@96
    .line 380
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@99
    goto/16 :goto_0

    #@9b
    :catchall_1
    move-exception v2

    #@9c
    monitor-exit v3

    #@9d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a0
    throw v2

    #@a1
    .line 387
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a3
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@a5
    .line 390
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/ActivityStack;->-get0()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    new-instance v4, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v5, "Activity destroy timeout for "

    #@b1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v4

    #@bd
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 391
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@c2
    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c4
    monitor-enter v3

    #@c5
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@c8
    .line 392
    iget-object v4, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@ca
    if-eqz v1, :cond_2

    #@cc
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@ce
    :cond_2
    const-string/jumbo v5, "destroyTimeout"

    #@d1
    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@d4
    monitor-exit v3

    #@d5
    .line 391
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@d8
    goto/16 :goto_0

    #@da
    :catchall_2
    move-exception v2

    #@db
    monitor-exit v3

    #@dc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@df
    throw v2

    #@e0
    .line 396
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e2
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@e4
    .line 399
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/ActivityStack;->-get0()Ljava/lang/String;

    #@e7
    move-result-object v2

    #@e8
    new-instance v3, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v4, "Activity stop timeout for "

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
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 400
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@101
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@103
    monitor-enter v3

    #@104
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@107
    .line 401
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    #@10a
    move-result v2

    #@10b
    if-eqz v2, :cond_3

    #@10d
    .line 402
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@10f
    const/4 v4, 0x0

    #@110
    const/4 v5, 0x0

    #@111
    const/4 v6, 0x0

    #@112
    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@115
    :cond_3
    monitor-exit v3

    #@116
    .line 400
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@119
    goto/16 :goto_0

    #@11b
    :catchall_3
    move-exception v2

    #@11c
    monitor-exit v3

    #@11d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@120
    throw v2

    #@121
    .line 407
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@123
    check-cast v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    #@125
    .line 408
    .local v0, "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@127
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@129
    monitor-enter v3

    #@12a
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@12d
    .line 409
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@12f
    iget-object v4, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    #@131
    iget-object v5, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    #@133
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@136
    monitor-exit v3

    #@137
    .line 408
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@13a
    goto/16 :goto_0

    #@13c
    :catchall_4
    move-exception v2

    #@13d
    monitor-exit v3

    #@13e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@141
    throw v2

    #@142
    .line 413
    .end local v0    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@144
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@146
    monitor-enter v3

    #@147
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@14a
    .line 414
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@14c
    const/4 v4, 0x0

    #@14d
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    #@150
    monitor-exit v3

    #@151
    .line 413
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@154
    goto/16 :goto_0

    #@156
    :catchall_5
    move-exception v2

    #@157
    monitor-exit v3

    #@158
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@15b
    throw v2

    #@15c
    .line 418
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@15e
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@160
    monitor-enter v3

    #@161
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@164
    .line 419
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@166
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@169
    move-result-object v1

    #@16a
    .line 420
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/ActivityStack;->-get0()Ljava/lang/String;

    #@16d
    move-result-object v2

    #@16e
    new-instance v4, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v5, "Timeout waiting for cancelVisibleBehind player="

    #@176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v4

    #@17a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v4

    #@17e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v4

    #@182
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@185
    .line 421
    if-eqz v1, :cond_4

    #@187
    .line 422
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    #@189
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18b
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@18d
    const/4 v5, 0x0

    #@18e
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    #@191
    :cond_4
    monitor-exit v3

    #@192
    .line 418
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@195
    goto/16 :goto_0

    #@197
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v2

    #@198
    monitor-exit v3

    #@199
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@19c
    throw v2

    #@19d
    .line 365
    nop

    #@19e
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
