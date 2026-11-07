.class Landroid/net/NetworkAgent$NetworkAgentHandler;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkAgentHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/NetworkAgent;


# direct methods
.method constructor blacklist <init>(Landroid/net/NetworkAgent;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 639
    iput-object p1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    .line 640
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 641
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 645
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1b0

    :pswitch_7
    goto/16 :goto_1ae

    .line 780
    :pswitch_9
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkAgent;->onDscpPolicyStatusUpdated(II)V

    goto/16 :goto_1ae

    .line 776
    :pswitch_14
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->onNetworkDestroyed()V

    .line 777
    goto/16 :goto_1ae

    .line 772
    :pswitch_1b
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->onNetworkCreated()V

    .line 773
    goto/16 :goto_1ae

    .line 767
    :pswitch_22
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->onQosCallbackUnregistered(I)V

    .line 769
    goto/16 :goto_1ae

    .line 761
    :pswitch_2b
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/QosFilter;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkAgent;->onQosCallbackRegistered(ILandroid/net/QosFilter;)V

    .line 764
    goto/16 :goto_1ae

    .line 676
    :pswitch_38
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    const-string v2, "NetworkAgent channel lost"

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->onNetworkUnwanted()V

    .line 679
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0}, Landroid/net/NetworkAgent;->-$$Nest$fgetmRegisterLock(Landroid/net/NetworkAgent;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 680
    :try_start_4b
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/net/NetworkAgent;->-$$Nest$fputmState(Landroid/net/NetworkAgent;I)V

    .line 681
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v2, v1}, Landroid/net/NetworkAgent;->-$$Nest$fputmConnected(Landroid/net/NetworkAgent;Z)V

    .line 682
    monitor-exit v0

    .line 683
    goto/16 :goto_1ae

    .line 682
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_59

    throw v1

    .line 647
    :pswitch_5c
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0}, Landroid/net/NetworkAgent;->-$$Nest$fgetmQueueRemoved(Landroid/net/NetworkAgent;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 652
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0, v2}, Landroid/net/NetworkAgent;->-$$Nest$fputmConnected(Landroid/net/NetworkAgent;Z)V

    goto/16 :goto_1ae

    .line 655
    :cond_6b
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0}, Landroid/net/NetworkAgent;->-$$Nest$fgetmRegisterLock(Landroid/net/NetworkAgent;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 656
    :try_start_72
    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v1}, Landroid/net/NetworkAgent;->-$$Nest$fgetmConnected(Landroid/net/NetworkAgent;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 657
    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    const-string v3, "Received new connection while already connected!"

    invoke-virtual {v1, v3}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_b8

    .line 660
    :cond_82
    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v1}, Landroid/net/NetworkAgent;->-$$Nest$fgetmPreConnectedQueue(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkAgent$RegistryAction;
    :try_end_98
    .catchall {:try_start_72 .. :try_end_98} :catchall_c0

    .line 662
    .local v3, "a":Landroid/net/NetworkAgent$RegistryAction;
    :try_start_98
    iget-object v4, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v4}, Landroid/net/NetworkAgent;->-$$Nest$fgetmRegistry(Landroid/net/NetworkAgent;)Landroid/net/INetworkAgentRegistry;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/net/NetworkAgent$RegistryAction;->execute(Landroid/net/INetworkAgentRegistry;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a1} :catch_a2
    .catchall {:try_start_98 .. :try_end_a1} :catchall_c0

    .line 666
    goto :goto_ae

    .line 663
    :catch_a2
    move-exception v4

    .line 664
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_a3
    iget-object v5, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v5}, Landroid/net/NetworkAgent;->-$$Nest$fgetLOG_TAG(Landroid/net/NetworkAgent;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Communication error with registry"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    .end local v3    # "a":Landroid/net/NetworkAgent$RegistryAction;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_ae
    goto :goto_8c

    .line 668
    :cond_af
    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v1}, Landroid/net/NetworkAgent;->-$$Nest$fgetmPreConnectedQueue(Landroid/net/NetworkAgent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 670
    :goto_b8
    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v1, v2}, Landroid/net/NetworkAgent;->-$$Nest$fputmConnected(Landroid/net/NetworkAgent;Z)V

    .line 671
    monitor-exit v0

    .line 673
    goto/16 :goto_1ae

    .line 671
    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_a3 .. :try_end_c2} :catchall_c0

    throw v1

    .line 757
    :pswitch_c3
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->onRemoveKeepalivePacketFilter(I)V

    .line 758
    goto/16 :goto_1ae

    .line 752
    :pswitch_cc
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/KeepalivePacketData;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkAgent;->onAddKeepalivePacketFilter(ILandroid/net/KeepalivePacketData;)V

    .line 754
    goto/16 :goto_1ae

    .line 748
    :pswitch_d9
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->onAutomaticReconnectDisabled()V

    .line 749
    goto/16 :goto_1ae

    .line 744
    :pswitch_e0
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->onSignalStrengthThresholdsUpdated([I)V

    .line 745
    goto/16 :goto_1ae

    .line 739
    :pswitch_eb
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->onStopSocketKeepalive(I)V

    .line 740
    goto/16 :goto_1ae

    .line 733
    :pswitch_f4
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    .line 734
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/KeepalivePacketData;

    .line 733
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkAgent;->onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    .line 736
    goto/16 :goto_1ae

    .line 690
    :pswitch_108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 694
    .local v3, "currentTimeMs":J
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0}, Landroid/net/NetworkAgent;->-$$Nest$fgetmLastBwRefreshTime(Landroid/net/NetworkAgent;)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-ltz v0, :cond_131

    .line 695
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0, v1}, Landroid/net/NetworkAgent;->-$$Nest$fputmBandwidthUpdateScheduled(Landroid/net/NetworkAgent;Z)V

    .line 696
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0}, Landroid/net/NetworkAgent;->-$$Nest$fgetmBandwidthUpdatePending(Landroid/net/NetworkAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1ae

    .line 697
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->onBandwidthUpdateRequested()V

    goto/16 :goto_1ae

    .line 701
    :cond_131
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0}, Landroid/net/NetworkAgent;->-$$Nest$fgetmBandwidthUpdateScheduled(Landroid/net/NetworkAgent;)Z

    move-result v0

    if-nez v0, :cond_1ae

    .line 702
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v0}, Landroid/net/NetworkAgent;->-$$Nest$fgetmLastBwRefreshTime(Landroid/net/NetworkAgent;)J

    move-result-wide v0

    add-long/2addr v0, v7

    sub-long/2addr v0, v3

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 704
    .local v0, "waitTime":J
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    const/16 v5, 0xd2

    invoke-virtual {p0, v5, v0, v1}, Landroid/net/NetworkAgent$NetworkAgentHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v5

    invoke-static {v2, v5}, Landroid/net/NetworkAgent;->-$$Nest$fputmBandwidthUpdateScheduled(Landroid/net/NetworkAgent;Z)V

    .line 706
    .end local v0    # "waitTime":J
    goto :goto_1ae

    .line 729
    .end local v3    # "currentTimeMs":J
    :pswitch_150
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_157

    move v1, v2

    :cond_157
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->onSaveAcceptUnvalidated(Z)V

    .line 730
    goto :goto_1ae

    .line 711
    :pswitch_15b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "redirect URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "redirectUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 719
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_18c

    .line 720
    :try_start_168
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16c} :catch_16e

    move-object v1, v2

    goto :goto_18c

    .line 722
    :catch_16e
    move-exception v2

    .line 723
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    invoke-static {v3}, Landroid/net/NetworkAgent;->-$$Nest$fgetLOG_TAG(Landroid/net/NetworkAgent;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surprising URI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18d

    .line 724
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_18c
    :goto_18c
    nop

    .line 725
    :goto_18d
    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/net/NetworkAgent;->onValidationStatus(ILandroid/net/Uri;)V

    .line 726
    goto :goto_1ae

    .line 686
    .end local v0    # "redirectUrl":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_195
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentHandler;->this$0:Landroid/net/NetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 687
    nop

    .line 786
    :cond_1ae
    :goto_1ae
    return-void

    nop

    :pswitch_data_1b0
    .packed-switch 0xc8
        :pswitch_195
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_15b
        :pswitch_7
        :pswitch_150
        :pswitch_108
        :pswitch_f4
        :pswitch_eb
        :pswitch_7
        :pswitch_e0
        :pswitch_d9
        :pswitch_cc
        :pswitch_c3
        :pswitch_5c
        :pswitch_38
        :pswitch_2b
        :pswitch_22
        :pswitch_1b
        :pswitch_14
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
