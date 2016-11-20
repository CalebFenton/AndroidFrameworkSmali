.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 3836
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    .line 3837
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 3836
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3841
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v1

    #@6
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@9
    .line 3842
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@b
    if-eqz p1, :cond_0

    #@d
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@f
    :cond_0
    const/4 v3, 0x1

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 3841
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@18
    .line 3840
    return-void

    #@19
    .line 3841
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1e
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3848
    iget v10, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v10, :pswitch_data_0

    #@5
    .line 3847
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3850
    :pswitch_0
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@8
    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    monitor-enter v11

    #@b
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@e
    .line 3851
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v10

    #@16
    add-int/lit8 v6, v10, -0x1

    #@18
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    #@1a
    .line 3852
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@21
    move-result-object v8

    #@22
    check-cast v8, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 3853
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 3851
    add-int/lit8 v6, v6, -0x1

    #@29
    goto :goto_1

    #@2a
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    monitor-exit v11

    #@2b
    .line 3850
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2e
    goto :goto_0

    #@2f
    .end local v6    # "i":I
    :catchall_0
    move-exception v10

    #@30
    monitor-exit v11

    #@31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@34
    throw v10

    #@35
    .line 3858
    :pswitch_1
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@37
    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@39
    monitor-enter v11

    #@3a
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@3d
    .line 3859
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@3f
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v10

    #@45
    add-int/lit8 v6, v10, -0x1

    #@47
    .restart local v6    # "i":I
    :goto_2
    if-ltz v6, :cond_2

    #@49
    .line 3860
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@4b
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@50
    move-result-object v8

    #@51
    check-cast v8, Lcom/android/server/am/ActivityRecord;

    #@53
    .line 3861
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->schedulePictureInPictureModeChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@56
    .line 3859
    add-int/lit8 v6, v6, -0x1

    #@58
    goto :goto_2

    #@59
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    monitor-exit v11

    #@5a
    .line 3858
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5d
    goto :goto_0

    #@5e
    .end local v6    # "i":I
    :catchall_1
    move-exception v10

    #@5f
    monitor-exit v11

    #@60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@63
    throw v10

    #@64
    .line 3868
    :pswitch_2
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@66
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@68
    iget-boolean v10, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@6a
    if-eqz v10, :cond_3

    #@6c
    .line 3869
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@6e
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@70
    const/4 v11, 0x0

    #@71
    iput-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@73
    .line 3870
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@75
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@77
    const/16 v11, 0x64

    #@79
    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    #@7c
    move-result-object v7

    #@7d
    .line 3871
    .local v7, "nmsg":Landroid/os/Message;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7f
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@81
    .line 3872
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@83
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@85
    const-wide/16 v12, 0x2710

    #@87
    invoke-virtual {v10, v7, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@8a
    .line 3873
    return-void

    #@8b
    .line 3877
    .end local v7    # "nmsg":Landroid/os/Message;
    :cond_3
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8d
    check-cast v10, Lcom/android/server/am/ActivityRecord;

    #@8f
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    #@92
    goto/16 :goto_0

    #@94
    .line 3881
    :pswitch_3
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@96
    check-cast v10, Lcom/android/server/am/ActivityRecord;

    #@98
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 3884
    :pswitch_4
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@9f
    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a1
    monitor-enter v11

    #@a2
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a5
    .line 3885
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@a7
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@aa
    monitor-exit v11

    #@ab
    .line 3884
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@ae
    goto/16 :goto_0

    #@b0
    :catchall_2
    move-exception v10

    #@b1
    monitor-exit v11

    #@b2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b5
    throw v10

    #@b6
    .line 3889
    :pswitch_5
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@b8
    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ba
    monitor-enter v11

    #@bb
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@be
    .line 3890
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@c0
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c2
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@c5
    move-result v10

    #@c6
    if-eqz v10, :cond_4

    #@c8
    .line 3891
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisor;->-get0()Ljava/lang/String;

    #@cb
    move-result-object v10

    #@cc
    const-string/jumbo v12, "Sleep timeout!  Sleeping now."

    #@cf
    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 3892
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@d4
    const/4 v12, 0x1

    #@d5
    iput-boolean v12, v10, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@d7
    .line 3893
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@d9
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@dc
    :cond_4
    monitor-exit v11

    #@dd
    .line 3889
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@e0
    goto/16 :goto_0

    #@e2
    :catchall_3
    move-exception v10

    #@e3
    monitor-exit v11

    #@e4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@e7
    throw v10

    #@e8
    .line 3898
    :pswitch_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@ea
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ec
    iget-boolean v10, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@ee
    if-eqz v10, :cond_5

    #@f0
    .line 3899
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@f2
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f4
    const/4 v11, 0x0

    #@f5
    iput-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@f7
    .line 3900
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@f9
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@fb
    const-wide/16 v12, 0x2710

    #@fd
    const/16 v11, 0x68

    #@ff
    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    #@102
    .line 3901
    return-void

    #@103
    .line 3903
    :cond_5
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@105
    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@107
    monitor-enter v11

    #@108
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@10b
    .line 3904
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@10d
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@10f
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@112
    move-result v10

    #@113
    if-eqz v10, :cond_6

    #@115
    .line 3905
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisor;->-get0()Ljava/lang/String;

    #@118
    move-result-object v10

    #@119
    const-string/jumbo v12, "Launch timeout has expired, giving up wake lock!"

    #@11c
    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11f
    .line 3910
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@121
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@123
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@126
    :cond_6
    monitor-exit v11

    #@127
    .line 3903
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@12a
    goto/16 :goto_0

    #@12c
    :catchall_4
    move-exception v10

    #@12d
    monitor-exit v11

    #@12e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@131
    throw v10

    #@132
    .line 3915
    :pswitch_7
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@134
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@136
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@139
    goto/16 :goto_0

    #@13b
    .line 3918
    :pswitch_8
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@13d
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@13f
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap3(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@142
    goto/16 :goto_0

    #@144
    .line 3921
    :pswitch_9
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@146
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@148
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap4(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@14b
    goto/16 :goto_0

    #@14d
    .line 3924
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14f
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@151
    .line 3925
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    #@153
    .line 3926
    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    #@155
    .line 3928
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    #@158
    move-result-object v11

    #@159
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@15b
    const/4 v12, 0x1

    #@15c
    if-ne v10, v12, :cond_7

    #@15e
    const/4 v10, 0x1

    #@15f
    :goto_3
    invoke-interface {v0, v11, v10}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@162
    goto/16 :goto_0

    #@164
    .line 3929
    :catch_0
    move-exception v2

    #@165
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@167
    .line 3928
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v10, 0x0

    #@168
    goto :goto_3

    #@169
    .line 3936
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_b
    :try_start_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@16b
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@16e
    move-result-object v10

    #@16f
    if-nez v10, :cond_8

    #@171
    .line 3937
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@173
    new-instance v11, Lcom/android/server/am/LockTaskNotify;

    #@175
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@177
    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@179
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@17b
    invoke-direct {v11, v12}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    #@17e
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    #@181
    .line 3939
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@183
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@186
    move-result-object v10

    #@187
    const/4 v11, 0x1

    #@188
    invoke-virtual {v10, v11}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    #@18b
    .line 3940
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@18d
    iget v11, p1, Landroid/os/Message;->arg2:I

    #@18f
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    #@192
    .line 3941
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@194
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@197
    move-result-object v10

    #@198
    if-eqz v10, :cond_a

    #@19a
    .line 3942
    const/4 v5, 0x0

    #@19b
    .line 3943
    .local v5, "flags":I
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@19d
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    #@1a0
    move-result v10

    #@1a1
    const/4 v11, 0x1

    #@1a2
    if-ne v10, v11, :cond_b

    #@1a4
    .line 3944
    const/high16 v5, 0x3bf0000

    #@1a6
    .line 3952
    :cond_9
    :goto_4
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a8
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@1ab
    move-result-object v10

    #@1ac
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1ae
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@1b1
    move-result-object v11

    #@1b2
    .line 3953
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1b4
    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b6
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1b8
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1bb
    move-result-object v12

    #@1bc
    .line 3952
    invoke-interface {v10, v5, v11, v12}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@1bf
    .line 3955
    .end local v5    # "flags":I
    :cond_a
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c1
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1c3
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c5
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@1c8
    move-result-object v11

    #@1c9
    const-string/jumbo v12, "Lock-to-App"

    #@1cc
    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    #@1cf
    .line 3956
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d1
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@1d4
    move-result-object v10

    #@1d5
    if-eqz v10, :cond_0

    #@1d7
    .line 3957
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d9
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@1dc
    move-result-object v11

    #@1dd
    .line 3958
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1df
    check-cast v10, Ljava/lang/String;

    #@1e1
    iget v12, p1, Landroid/os/Message;->arg1:I

    #@1e3
    .line 3957
    const/4 v13, 0x1

    #@1e4
    invoke-interface {v11, v13, v10, v12}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    #@1e7
    goto/16 :goto_0

    #@1e9
    .line 3960
    :catch_1
    move-exception v4

    #@1ea
    .line 3961
    .local v4, "ex":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/RuntimeException;

    #@1ec
    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1ef
    throw v10

    #@1f0
    .line 3946
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v5    # "flags":I
    :cond_b
    :try_start_7
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f2
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    #@1f5
    move-result v10

    #@1f6
    const/4 v11, 0x2

    #@1f7
    if-ne v10, v11, :cond_9

    #@1f9
    .line 3947
    const/high16 v5, 0x29f0000

    #@1fb
    goto :goto_4

    #@1fc
    .line 3967
    .end local v5    # "flags":I
    :pswitch_c
    :try_start_8
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1fe
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@201
    move-result-object v10

    #@202
    if-eqz v10, :cond_c

    #@204
    .line 3968
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@206
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@209
    move-result-object v10

    #@20a
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@20c
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@20f
    move-result-object v11

    #@210
    .line 3969
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@212
    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@214
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@216
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@219
    move-result-object v12

    #@21a
    .line 3968
    const/4 v13, 0x0

    #@21b
    invoke-interface {v10, v13, v11, v12}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@21e
    .line 3971
    :cond_c
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@220
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@222
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@224
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@227
    move-result-object v11

    #@228
    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    #@22b
    .line 3972
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@22d
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@230
    move-result-object v10

    #@231
    if-eqz v10, :cond_d

    #@233
    .line 3973
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@235
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@238
    move-result-object v10

    #@239
    .line 3974
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@23b
    .line 3973
    const/4 v12, 0x0

    #@23c
    const/4 v13, 0x0

    #@23d
    invoke-interface {v10, v12, v13, v11}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    #@240
    .line 3976
    :cond_d
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@242
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@245
    move-result-object v10

    #@246
    if-nez v10, :cond_e

    #@248
    .line 3977
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@24a
    new-instance v11, Lcom/android/server/am/LockTaskNotify;

    #@24c
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@24e
    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@250
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@252
    invoke-direct {v11, v12}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    #@255
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    #@258
    .line 3979
    :cond_e
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@25a
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@25d
    move-result-object v10

    #@25e
    const/4 v11, 0x0

    #@25f
    invoke-virtual {v10, v11}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@262
    .line 3982
    :try_start_9
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@264
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@266
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@268
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@26b
    move-result-object v10

    #@26c
    .line 3983
    const-string/jumbo v11, "lock_to_app_exit_locked"

    #@26f
    .line 3981
    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    #@272
    move-result v10

    #@273
    if-eqz v10, :cond_10

    #@275
    const/4 v9, 0x1

    #@276
    .line 3984
    .local v9, "shouldLockKeyguard":Z
    :goto_5
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@278
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    #@27b
    move-result v10

    #@27c
    const/4 v11, 0x2

    #@27d
    if-ne v10, v11, :cond_f

    #@27f
    if-eqz v9, :cond_f

    #@281
    .line 3985
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@283
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@285
    const/4 v11, 0x0

    #@286
    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    #@289
    .line 3986
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@28b
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@28d
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    #@290
    .line 3987
    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    #@292
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@294
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@296
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@298
    invoke-direct {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@29b
    .line 3988
    const/4 v11, -0x1

    #@29c
    .line 3987
    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    #@29f
    .line 3996
    .end local v9    # "shouldLockKeyguard":Z
    :cond_f
    :goto_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2a1
    const/4 v11, 0x0

    #@2a2
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    #@2a5
    goto/16 :goto_0

    #@2a7
    .line 3981
    :cond_10
    const/4 v9, 0x0

    #@2a8
    .restart local v9    # "shouldLockKeyguard":Z
    goto :goto_5

    #@2a9
    .line 3993
    .end local v9    # "shouldLockKeyguard":Z
    :catch_2
    move-exception v4

    #@2aa
    .line 3994
    .restart local v4    # "ex":Landroid/os/RemoteException;
    :try_start_a
    new-instance v10, Ljava/lang/RuntimeException;

    #@2ac
    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2af
    throw v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@2b0
    .line 3995
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catchall_5
    move-exception v10

    #@2b1
    .line 3996
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2b3
    const/4 v12, 0x0

    #@2b4
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    #@2b7
    .line 3995
    throw v10

    #@2b8
    .line 4000
    :pswitch_d
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2ba
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@2bd
    move-result-object v10

    #@2be
    if-nez v10, :cond_11

    #@2c0
    .line 4001
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2c2
    new-instance v11, Lcom/android/server/am/LockTaskNotify;

    #@2c4
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2c6
    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c8
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@2ca
    invoke-direct {v11, v12}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    #@2cd
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    #@2d0
    .line 4003
    :cond_11
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2d2
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@2d5
    move-result-object v10

    #@2d6
    const/4 v11, 0x2

    #@2d7
    invoke-virtual {v10, v11}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    #@2da
    goto/16 :goto_0

    #@2dc
    .line 4006
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2de
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@2e0
    .line 4007
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    #@2e2
    .line 4008
    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    #@2e4
    .line 4010
    :try_start_b
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    #@2e7
    move-result-object v10

    #@2e8
    invoke-interface {v0, v10}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    #@2eb
    goto/16 :goto_0

    #@2ed
    .line 4011
    :catch_3
    move-exception v2

    #@2ee
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@2f0
    .line 4016
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_f
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2f2
    iget-object v11, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2f4
    monitor-enter v11

    #@2f5
    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@2f8
    .line 4017
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2fa
    check-cast v10, Landroid/os/IBinder;

    #@2fc
    invoke-static {v10}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@2ff
    move-result-object v8

    #@300
    .line 4018
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_12

    #@302
    .line 4019
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@304
    invoke-virtual {v10, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    #@307
    :cond_12
    monitor-exit v11

    #@308
    .line 4016
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@30b
    goto/16 :goto_0

    #@30d
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v10

    #@30e
    monitor-exit v11

    #@30f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@312
    throw v10

    #@313
    .line 3990
    :catch_4
    move-exception v3

    #@314
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_6

    #@315
    .line 3848
    nop

    #@316
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
