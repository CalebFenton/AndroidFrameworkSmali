.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@0
    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 389
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, -0x3

    #@2
    .line 398
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@4
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@6
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@8
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@a
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@10
    .line 400
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget v7, p1, Landroid/os/Message;->what:I

    #@12
    sparse-switch v7, :sswitch_data_0

    #@15
    .line 508
    const/4 v7, 0x0

    #@16
    return v7

    #@17
    .line 402
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@19
    iget-object v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@1b
    invoke-static {v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-get0(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@1e
    move-result-object v8

    #@1f
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-wrap2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    #@22
    .line 511
    :cond_0
    :goto_0
    return v11

    #@23
    .line 405
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@25
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@27
    const-string/jumbo v8, "not implemented"

    #@2a
    const/4 v9, -0x1

    #@2b
    invoke-virtual {v7, p1, v9, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@2e
    goto :goto_0

    #@2f
    .line 408
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@31
    iget-object v8, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@33
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@35
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v7, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@39
    invoke-virtual {v8, v0, v9, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->addScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_1

    #@3f
    .line 409
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@41
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@43
    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@46
    goto :goto_0

    #@47
    .line 411
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@49
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@4b
    const-string/jumbo v8, "bad request"

    #@4e
    invoke-virtual {v7, p1, v10, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@51
    goto :goto_0

    #@52
    .line 415
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@54
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@56
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@58
    invoke-virtual {v7, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    #@5b
    goto :goto_0

    #@5c
    .line 418
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@5e
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@60
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportScanResults()Z

    #@63
    .line 419
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@65
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@67
    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@6a
    goto :goto_0

    #@6b
    .line 422
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@6d
    iget-object v8, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@6f
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@71
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@73
    check-cast v7, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@75
    invoke-virtual {v8, v0, v9, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->addSingleScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@78
    move-result v7

    #@79
    if-eqz v7, :cond_2

    #@7b
    .line 423
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@7d
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@7f
    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@82
    goto :goto_0

    #@83
    .line 425
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@85
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@87
    const-string/jumbo v8, "bad request"

    #@8a
    invoke-virtual {v7, p1, v10, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@8d
    goto :goto_0

    #@8e
    .line 429
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@90
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@92
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@94
    invoke-virtual {v7, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    #@97
    goto :goto_0

    #@98
    .line 432
    :sswitch_7
    const-string/jumbo v7, "Removing single shot scan"

    #@9b
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@9e
    .line 433
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@a0
    iget-object v8, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@a2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a4
    check-cast v7, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@a6
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@a8
    invoke-virtual {v8, v7, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 436
    :sswitch_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@af
    iget-object v8, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@b1
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@b3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b5
    check-cast v7, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@b7
    invoke-virtual {v8, v0, v9, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->setHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V

    #@ba
    .line 437
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@bc
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@be
    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@c1
    goto/16 :goto_0

    #@c3
    .line 440
    :sswitch_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@c5
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@c7
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@c9
    invoke-virtual {v7, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 443
    :sswitch_a
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@d0
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@d2
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@d4
    invoke-virtual {v7, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->trackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    #@d7
    .line 444
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@d9
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@db
    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 447
    :sswitch_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@e2
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@e4
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@e6
    invoke-virtual {v7, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    #@e9
    goto/16 :goto_0

    #@eb
    .line 450
    :sswitch_c
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@ed
    iget-object v8, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@ef
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f1
    check-cast v7, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@f3
    invoke-virtual {v8, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 453
    :sswitch_d
    invoke-static {v11}, Lcom/android/server/wifi/WifiNative;->getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    #@fb
    move-result-object v6

    #@fc
    .line 454
    .local v6, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@fe
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@100
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@102
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@105
    move-result-object v3

    #@106
    .line 455
    .local v3, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@109
    move-result-object v2

    #@10a
    .local v2, "ci2$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10d
    move-result v7

    #@10e
    if-eqz v7, :cond_0

    #@110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@113
    move-result-object v1

    #@114
    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@116
    .line 456
    .local v1, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@119
    goto :goto_1

    #@11a
    .line 461
    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "ci2$iterator":Ljava/util/Iterator;
    .end local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v6    # "results":[Landroid/net/wifi/WifiScanner$ScanData;
    :sswitch_e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11c
    check-cast v4, Landroid/net/wifi/ScanResult;

    #@11e
    .line 463
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@120
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@122
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@124
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@127
    move-result-object v3

    #@128
    .line 464
    .restart local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12b
    move-result-object v2

    #@12c
    .restart local v2    # "ci2$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12f
    move-result v7

    #@130
    if-eqz v7, :cond_0

    #@132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@135
    move-result-object v1

    #@136
    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@138
    .line 465
    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportFullScanResult(Landroid/net/wifi/ScanResult;)V

    #@13b
    goto :goto_2

    #@13c
    .line 471
    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "ci2$iterator":Ljava/util/Iterator;
    .end local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13e
    check-cast v5, [Landroid/net/wifi/ScanResult;

    #@140
    .line 473
    .local v5, "results":[Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@142
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@144
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@146
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@149
    move-result-object v3

    #@14a
    .line 474
    .restart local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14d
    move-result-object v2

    #@14e
    .restart local v2    # "ci2$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@151
    move-result v7

    #@152
    if-eqz v7, :cond_0

    #@154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@157
    move-result-object v1

    #@158
    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@15a
    .line 475
    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    const v7, 0x27009

    #@15d
    invoke-virtual {v1, v7, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V

    #@160
    goto :goto_3

    #@161
    .line 480
    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "ci2$iterator":Ljava/util/Iterator;
    .end local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_10
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@163
    check-cast v5, [Landroid/net/wifi/ScanResult;

    #@165
    .line 482
    .restart local v5    # "results":[Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@167
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@169
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@16b
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@16e
    move-result-object v3

    #@16f
    .line 483
    .restart local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@172
    move-result-object v2

    #@173
    .restart local v2    # "ci2$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@176
    move-result v7

    #@177
    if-eqz v7, :cond_0

    #@179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17c
    move-result-object v1

    #@17d
    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@17f
    .line 484
    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    const v7, 0x2700a

    #@182
    invoke-virtual {v1, v7, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V

    #@185
    goto :goto_4

    #@186
    .line 489
    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "ci2$iterator":Ljava/util/Iterator;
    .end local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_11
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@188
    check-cast v5, [Landroid/net/wifi/ScanResult;

    #@18a
    .line 490
    .restart local v5    # "results":[Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@18c
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@18e
    invoke-virtual {v7, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    #@191
    goto/16 :goto_0

    #@193
    .line 494
    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_12
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@195
    check-cast v5, [Landroid/net/wifi/ScanResult;

    #@197
    .line 495
    .restart local v5    # "results":[Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@199
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@19b
    invoke-virtual {v7, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    #@19e
    goto/16 :goto_0

    #@1a0
    .line 499
    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_13
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a2
    check-cast v6, [Landroid/net/wifi/WifiScanner$ScanData;

    #@1a4
    .line 500
    .restart local v6    # "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@1a6
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@1a8
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@1aa
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1ad
    move-result-object v3

    #@1ae
    .line 501
    .restart local v3    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b1
    move-result-object v2

    #@1b2
    .restart local v2    # "ci2$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b5
    move-result v7

    #@1b6
    if-eqz v7, :cond_3

    #@1b8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1bb
    move-result-object v1

    #@1bc
    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@1be
    .line 502
    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@1c1
    goto :goto_5

    #@1c2
    .line 504
    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@1c4
    iget-object v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@1c6
    invoke-static {v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-get1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    #@1c9
    move-result-object v8

    #@1ca
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-wrap2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    #@1cd
    goto/16 :goto_0

    #@1cf
    .line 400
    nop

    #@1d0
    :sswitch_data_0
    .sparse-switch
        0x27000 -> :sswitch_1
        0x27002 -> :sswitch_2
        0x27003 -> :sswitch_3
        0x27004 -> :sswitch_4
        0x27006 -> :sswitch_8
        0x27007 -> :sswitch_9
        0x2700b -> :sswitch_a
        0x2700c -> :sswitch_b
        0x2700d -> :sswitch_c
        0x27015 -> :sswitch_5
        0x27016 -> :sswitch_6
        0x27100 -> :sswitch_d
        0x27101 -> :sswitch_e
        0x27102 -> :sswitch_f
        0x27103 -> :sswitch_10
        0x27104 -> :sswitch_11
        0x27105 -> :sswitch_12
        0x27107 -> :sswitch_0
        0x27108 -> :sswitch_13
        0x2710a -> :sswitch_7
    .end sparse-switch
.end method
