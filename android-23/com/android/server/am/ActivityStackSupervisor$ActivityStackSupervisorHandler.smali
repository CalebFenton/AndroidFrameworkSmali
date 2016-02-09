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
    .line 4006
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    .line 4007
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 4006
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
    .line 4011
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v1

    #@6
    .line 4012
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@8
    if-eqz p1, :cond_0

    #@a
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@c
    :cond_0
    const/4 v3, 0x1

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 4010
    return-void

    #@13
    .line 4011
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4018
    iget v9, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v9, :pswitch_data_0

    #@5
    .line 4017
    :cond_0
    :goto_0
    return-void

    #@6
    .line 4022
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@8
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@c
    if-eqz v9, :cond_1

    #@e
    .line 4023
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    const/4 v10, 0x0

    #@13
    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@15
    .line 4024
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@17
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@19
    const/16 v10, 0x64

    #@1b
    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    #@1e
    move-result-object v6

    #@1f
    .line 4025
    .local v6, "nmsg":Landroid/os/Message;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    .line 4026
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@25
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@27
    const-wide/16 v10, 0x2710

    #@29
    invoke-virtual {v9, v6, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2c
    .line 4027
    return-void

    #@2d
    .line 4031
    .end local v6    # "nmsg":Landroid/os/Message;
    :cond_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f
    check-cast v9, Lcom/android/server/am/ActivityRecord;

    #@31
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    #@34
    goto :goto_0

    #@35
    .line 4035
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v9, Lcom/android/server/am/ActivityRecord;

    #@39
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    #@3c
    goto :goto_0

    #@3d
    .line 4038
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@3f
    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@41
    monitor-enter v10

    #@42
    .line 4039
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@44
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    :cond_2
    :goto_1
    monitor-exit v10

    #@48
    goto :goto_0

    #@49
    .line 4038
    :catchall_0
    move-exception v9

    #@4a
    monitor-exit v10

    #@4b
    throw v9

    #@4c
    .line 4043
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@4e
    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@50
    monitor-enter v10

    #@51
    .line 4044
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@53
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@55
    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@58
    move-result v9

    #@59
    if-eqz v9, :cond_2

    #@5b
    .line 4045
    const-string/jumbo v9, "ActivityManager"

    #@5e
    const-string/jumbo v11, "Sleep timeout!  Sleeping now."

    #@61
    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 4046
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@66
    const/4 v11, 0x1

    #@67
    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@69
    .line 4047
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@6b
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6e
    goto :goto_1

    #@6f
    .line 4043
    :catchall_1
    move-exception v9

    #@70
    monitor-exit v10

    #@71
    throw v9

    #@72
    .line 4052
    :pswitch_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@74
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@76
    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@78
    if-eqz v9, :cond_3

    #@7a
    .line 4053
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@7c
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7e
    const/4 v10, 0x0

    #@7f
    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    #@81
    .line 4054
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@83
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@85
    const-wide/16 v10, 0x2710

    #@87
    const/16 v12, 0x68

    #@89
    invoke-virtual {v9, v12, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    #@8c
    .line 4055
    return-void

    #@8d
    .line 4057
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@8f
    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@91
    monitor-enter v10

    #@92
    .line 4058
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@94
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@96
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@99
    move-result v9

    #@9a
    if-eqz v9, :cond_2

    #@9c
    .line 4059
    const-string/jumbo v9, "ActivityManager"

    #@9f
    const-string/jumbo v11, "Launch timeout has expired, giving up wake lock!"

    #@a2
    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 4064
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@a7
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@a9
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@ac
    goto :goto_1

    #@ad
    .line 4057
    :catchall_2
    move-exception v9

    #@ae
    monitor-exit v10

    #@af
    throw v9

    #@b0
    .line 4069
    :pswitch_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@b2
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@b4
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 4072
    :pswitch_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@bb
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@bd
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap3(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 4075
    :pswitch_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@c4
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@c6
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap4(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 4078
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cd
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@cf
    .line 4079
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    #@d1
    .line 4080
    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    #@d3
    .line 4082
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    #@d6
    move-result-object v10

    #@d7
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@d9
    const/4 v11, 0x1

    #@da
    if-ne v9, v11, :cond_4

    #@dc
    const/4 v9, 0x1

    #@dd
    :goto_2
    invoke-interface {v0, v10, v9}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@e0
    goto/16 :goto_0

    #@e2
    .line 4083
    :catch_0
    move-exception v2

    #@e3
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@e5
    .line 4082
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v9, 0x0

    #@e6
    goto :goto_2

    #@e7
    .line 4090
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_9
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@e9
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@ec
    move-result-object v9

    #@ed
    if-nez v9, :cond_5

    #@ef
    .line 4091
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@f1
    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    #@f3
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@f5
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f7
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@f9
    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    #@fc
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    #@ff
    .line 4093
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@101
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@104
    move-result-object v9

    #@105
    const/4 v10, 0x1

    #@106
    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    #@109
    .line 4094
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@10b
    iget v10, p1, Landroid/os/Message;->arg2:I

    #@10d
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    #@110
    .line 4095
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@112
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@115
    move-result-object v9

    #@116
    if-eqz v9, :cond_7

    #@118
    .line 4096
    const/4 v5, 0x0

    #@119
    .line 4097
    .local v5, "flags":I
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@11b
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    #@11e
    move-result v9

    #@11f
    const/4 v10, 0x1

    #@120
    if-ne v9, v10, :cond_8

    #@122
    .line 4098
    const/high16 v5, 0x3bf0000

    #@124
    .line 4106
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@126
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@129
    move-result-object v9

    #@12a
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@12c
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@12f
    move-result-object v10

    #@130
    .line 4107
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@132
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@134
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@136
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@139
    move-result-object v11

    #@13a
    .line 4106
    invoke-interface {v9, v5, v10, v11}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@13d
    .line 4109
    .end local v5    # "flags":I
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@13f
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@141
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@143
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@146
    move-result-object v10

    #@147
    const-string/jumbo v11, "Lock-to-App"

    #@14a
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    #@14d
    .line 4110
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@14f
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@152
    move-result-object v9

    #@153
    if-eqz v9, :cond_0

    #@155
    .line 4111
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@157
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@15a
    move-result-object v10

    #@15b
    .line 4112
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15d
    check-cast v9, Ljava/lang/String;

    #@15f
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@161
    .line 4111
    const/4 v12, 0x1

    #@162
    invoke-interface {v10, v12, v9, v11}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@165
    goto/16 :goto_0

    #@167
    .line 4114
    :catch_1
    move-exception v4

    #@168
    .line 4115
    .local v4, "ex":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/RuntimeException;

    #@16a
    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@16d
    throw v9

    #@16e
    .line 4100
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v5    # "flags":I
    :cond_8
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@170
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@173
    move-result v9

    #@174
    const/4 v10, 0x2

    #@175
    if-ne v9, v10, :cond_6

    #@177
    .line 4101
    const/high16 v5, 0x29f0000

    #@179
    goto :goto_3

    #@17a
    .line 4121
    .end local v5    # "flags":I
    :pswitch_a
    :try_start_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@17c
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@17f
    move-result-object v9

    #@180
    if-eqz v9, :cond_9

    #@182
    .line 4122
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@184
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    #@187
    move-result-object v9

    #@188
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@18a
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@18d
    move-result-object v10

    #@18e
    .line 4123
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@190
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@192
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@194
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@197
    move-result-object v11

    #@198
    .line 4122
    const/4 v12, 0x0

    #@199
    invoke-interface {v9, v12, v10, v11}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@19c
    .line 4125
    :cond_9
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@19e
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1a0
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a2
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    #@1a5
    move-result-object v10

    #@1a6
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    #@1a9
    .line 4126
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1ab
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@1ae
    move-result-object v9

    #@1af
    if-eqz v9, :cond_a

    #@1b1
    .line 4127
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1b3
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    #@1b6
    move-result-object v9

    #@1b7
    .line 4128
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@1b9
    .line 4127
    const/4 v11, 0x0

    #@1ba
    const/4 v12, 0x0

    #@1bb
    invoke-interface {v9, v11, v12, v10}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    #@1be
    .line 4130
    :cond_a
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c0
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@1c3
    move-result-object v9

    #@1c4
    if-nez v9, :cond_b

    #@1c6
    .line 4131
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c8
    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    #@1ca
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1cc
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1ce
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1d0
    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    #@1d3
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    #@1d6
    .line 4133
    :cond_b
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d8
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@1db
    move-result-object v9

    #@1dc
    const/4 v10, 0x0

    #@1dd
    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@1e0
    .line 4136
    :try_start_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e2
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1e4
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1e6
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e9
    move-result-object v9

    #@1ea
    .line 4137
    const-string/jumbo v10, "lock_to_app_exit_locked"

    #@1ed
    .line 4135
    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    #@1f0
    move-result v9

    #@1f1
    if-eqz v9, :cond_d

    #@1f3
    const/4 v8, 0x1

    #@1f4
    .line 4138
    .local v8, "shouldLockKeyguard":Z
    :goto_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f6
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    #@1f9
    move-result v9

    #@1fa
    const/4 v10, 0x2

    #@1fb
    if-ne v9, v10, :cond_c

    #@1fd
    if-eqz v8, :cond_c

    #@1ff
    .line 4139
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@201
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@203
    const/4 v10, 0x0

    #@204
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    #@207
    .line 4140
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@209
    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@20b
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    #@20e
    .line 4141
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    #@210
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@212
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@214
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@216
    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@219
    .line 4142
    const/4 v10, -0x1

    #@21a
    .line 4141
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@21d
    .line 4150
    .end local v8    # "shouldLockKeyguard":Z
    :cond_c
    :goto_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@21f
    const/4 v10, 0x0

    #@220
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    #@223
    goto/16 :goto_0

    #@225
    .line 4135
    :cond_d
    const/4 v8, 0x0

    #@226
    .restart local v8    # "shouldLockKeyguard":Z
    goto :goto_4

    #@227
    .line 4147
    .end local v8    # "shouldLockKeyguard":Z
    :catch_2
    move-exception v4

    #@228
    .line 4148
    .restart local v4    # "ex":Landroid/os/RemoteException;
    :try_start_8
    new-instance v9, Ljava/lang/RuntimeException;

    #@22a
    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@22d
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@22e
    .line 4149
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catchall_3
    move-exception v9

    #@22f
    .line 4150
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@231
    const/4 v11, 0x0

    #@232
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    #@235
    .line 4149
    throw v9

    #@236
    .line 4154
    :pswitch_b
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@238
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@23b
    move-result-object v9

    #@23c
    if-nez v9, :cond_e

    #@23e
    .line 4155
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@240
    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    #@242
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@244
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@246
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@248
    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    #@24b
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    #@24e
    .line 4157
    :cond_e
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@250
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    #@253
    move-result-object v9

    #@254
    const/4 v10, 0x2

    #@255
    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    #@258
    goto/16 :goto_0

    #@25a
    .line 4160
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25c
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@25e
    .line 4161
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    #@260
    .line 4162
    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    #@262
    .line 4164
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    #@265
    move-result-object v9

    #@266
    invoke-interface {v0, v9}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    #@269
    goto/16 :goto_0

    #@26b
    .line 4165
    :catch_3
    move-exception v2

    #@26c
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@26e
    .line 4170
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_d
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@270
    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@272
    monitor-enter v10

    #@273
    .line 4171
    :try_start_a
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@275
    check-cast v9, Landroid/os/IBinder;

    #@277
    invoke-static {v9}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@27a
    move-result-object v7

    #@27b
    .line 4172
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_2

    #@27d
    .line 4173
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@27f
    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@282
    goto/16 :goto_1

    #@284
    .line 4170
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v9

    #@285
    monitor-exit v10

    #@286
    throw v9

    #@287
    .line 4144
    :catch_4
    move-exception v3

    #@288
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_5

    #@289
    .line 4018
    nop

    #@28a
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method
