.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    .line 542
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 541
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 547
    iget v5, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v5, :pswitch_data_0

    #@7
    .line 545
    :goto_0
    return-void

    #@8
    .line 549
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@a
    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    #@d
    goto :goto_0

    #@e
    .line 552
    :pswitch_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    #@11
    .line 553
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@13
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    #@1a
    .line 555
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@1c
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    #@1f
    move-result-object v5

    #@20
    const/4 v6, 0x1

    #@21
    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    #@24
    .line 556
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@26
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    #@29
    move-result-object v5

    #@2a
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@2d
    move-result v6

    #@2e
    const/4 v7, 0x1

    #@2f
    const/4 v8, 0x0

    #@30
    invoke-interface {v5, v7, v8, v6}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@33
    .line 559
    :goto_1
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@35
    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@38
    move-result-object v5

    #@39
    iget-object v6, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@3b
    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@3e
    move-result-object v6

    #@3f
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@41
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@44
    .line 560
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    #@47
    goto :goto_0

    #@48
    .line 563
    :pswitch_2
    const-string/jumbo v5, "unknown"

    #@4b
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    #@4e
    .line 564
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@50
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    #@57
    .line 566
    :try_start_1
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@59
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    #@5c
    move-result-object v5

    #@5d
    const/4 v6, 0x0

    #@5e
    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    #@61
    .line 567
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@63
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    #@66
    move-result-object v5

    #@67
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@6a
    move-result v6

    #@6b
    const/4 v7, 0x0

    #@6c
    const/4 v8, 0x0

    #@6d
    invoke-interface {v5, v7, v8, v6}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@70
    .line 570
    :goto_2
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@72
    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@75
    move-result-object v5

    #@76
    iget-object v6, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@78
    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@7b
    move-result-object v6

    #@7c
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@7e
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@81
    .line 571
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    #@84
    goto :goto_0

    #@85
    .line 574
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@87
    check-cast v0, Ljava/lang/String;

    #@89
    .line 575
    .local v0, "activeReason":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@8b
    .line 576
    .local v1, "activeUid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@8d
    if-eqz v5, :cond_1

    #@8f
    const/4 v3, 0x1

    #@90
    .line 578
    .local v3, "needBroadcast":Z
    :goto_3
    if-eqz v0, :cond_2

    #@92
    move-object v5, v0

    #@93
    .line 577
    :goto_4
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    #@96
    .line 579
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@98
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    #@9f
    .line 581
    :try_start_2
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@a1
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    #@a4
    move-result-object v5

    #@a5
    const/4 v6, 0x0

    #@a6
    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    #@a9
    .line 582
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@ab
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    #@ae
    move-result-object v5

    #@af
    const/4 v6, 0x0

    #@b0
    invoke-interface {v5, v6, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@b3
    .line 585
    :goto_5
    if-eqz v3, :cond_0

    #@b5
    .line 586
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@b7
    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@ba
    move-result-object v5

    #@bb
    iget-object v6, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@bd
    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    #@c0
    move-result-object v6

    #@c1
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@c3
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@c6
    .line 588
    :cond_0
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 576
    .end local v3    # "needBroadcast":Z
    :cond_1
    const/4 v3, 0x0

    #@cc
    .restart local v3    # "needBroadcast":Z
    goto :goto_3

    #@cd
    .line 578
    :cond_2
    const-string/jumbo v5, "unknown"

    #@d0
    goto :goto_4

    #@d1
    .line 591
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v3    # "needBroadcast":Z
    :pswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@d3
    .line 592
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    #@d5
    invoke-virtual {v5, v4}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    #@d8
    goto/16 :goto_0

    #@da
    .line 583
    .end local v4    # "uid":I
    .restart local v0    # "activeReason":Ljava/lang/String;
    .restart local v1    # "activeUid":I
    .restart local v3    # "needBroadcast":Z
    :catch_0
    move-exception v2

    #@db
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_5

    #@dc
    .line 568
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "needBroadcast":Z
    :catch_1
    move-exception v2

    #@dd
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_2

    #@de
    .line 557
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    #@df
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@e1
    .line 547
    nop

    #@e2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
