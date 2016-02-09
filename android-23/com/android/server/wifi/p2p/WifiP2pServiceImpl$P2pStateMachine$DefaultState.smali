.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@0
    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v7, 0x2

    #@4
    .line 567
    iget v6, p1, Landroid/os/Message;->what:I

    #@6
    sparse-switch v6, :sswitch_data_0

    #@9
    .line 754
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "Unhandled message "

    #@13
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@22
    .line 755
    return v5

    #@23
    .line 569
    :sswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@25
    if-nez v5, :cond_1

    #@27
    .line 571
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@29
    iget-object v5, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    #@2f
    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@32
    .line 757
    :cond_0
    :goto_0
    :sswitch_1
    return v4

    #@33
    .line 573
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@35
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v7, "Full connection failure, error = "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@4e
    .line 574
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@50
    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@52
    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@55
    goto :goto_0

    #@56
    .line 579
    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@58
    if-ne v5, v7, :cond_2

    #@5a
    .line 580
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5c
    const-string/jumbo v6, "Send failed, client connection lost"

    #@5f
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@62
    .line 584
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@64
    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@66
    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@69
    goto :goto_0

    #@6a
    .line 582
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@6c
    new-instance v6, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v7, "Client connection lost with reason: "

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@85
    goto :goto_1

    #@86
    .line 588
    :sswitch_3
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@88
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@8b
    .line 589
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8d
    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@8f
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    #@92
    move-result-object v3

    #@93
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@95
    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    #@98
    move-result-object v5

    #@99
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@9b
    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@9e
    goto :goto_0

    #@9f
    .line 592
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@a1
    iget-object v6, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@a3
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@a5
    if-ne v3, v4, :cond_3

    #@a7
    move v3, v4

    #@a8
    :goto_2
    invoke-static {v6, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@ab
    .line 595
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ad
    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@af
    invoke-static {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@b2
    .line 596
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b4
    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@b6
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@b9
    move-result v3

    #@ba
    if-eqz v3, :cond_0

    #@bc
    .line 598
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@be
    check-cast v2, Lcom/android/internal/util/StateMachine;

    #@c0
    .line 599
    .local v2, "m":Lcom/android/internal/util/StateMachine;
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@c2
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c5
    goto/16 :goto_0

    #@c7
    .line 600
    .end local v2    # "m":Lcom/android/internal/util/StateMachine;
    :catch_0
    move-exception v1

    #@c8
    .line 601
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ca
    new-instance v5, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v6, "unable to send BLOCK_DISCOVERY response: "

    #@d2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v5

    #@d6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v5

    #@de
    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move v3, v5

    #@e4
    .line 592
    goto :goto_2

    #@e5
    .line 606
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@e7
    const v5, 0x22002

    #@ea
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@ed
    goto/16 :goto_0

    #@ef
    .line 610
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@f1
    const v5, 0x22005

    #@f4
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@f7
    goto/16 :goto_0

    #@f9
    .line 614
    :sswitch_7
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@fb
    const v5, 0x2202f

    #@fe
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@101
    goto/16 :goto_0

    #@103
    .line 618
    :sswitch_8
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@105
    const v5, 0x22008

    #@108
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 622
    :sswitch_9
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@10f
    const v5, 0x2200b

    #@112
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@115
    goto/16 :goto_0

    #@117
    .line 626
    :sswitch_a
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@119
    const v5, 0x2200e

    #@11c
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@11f
    goto/16 :goto_0

    #@121
    .line 630
    :sswitch_b
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@123
    const v5, 0x22011

    #@126
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@129
    goto/16 :goto_0

    #@12b
    .line 634
    :sswitch_c
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@12d
    const v5, 0x2201d

    #@130
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@133
    goto/16 :goto_0

    #@135
    .line 638
    :sswitch_d
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@137
    const v5, 0x22020

    #@13a
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@13d
    goto/16 :goto_0

    #@13f
    .line 642
    :sswitch_e
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@141
    const v5, 0x22023

    #@144
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@147
    goto/16 :goto_0

    #@149
    .line 646
    :sswitch_f
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@14b
    const v5, 0x22026

    #@14e
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@151
    goto/16 :goto_0

    #@153
    .line 650
    :sswitch_10
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@155
    .line 651
    const v5, 0x22029

    #@158
    .line 650
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@15b
    goto/16 :goto_0

    #@15d
    .line 655
    :sswitch_11
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@15f
    .line 656
    const v5, 0x2202c

    #@162
    .line 655
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@165
    goto/16 :goto_0

    #@167
    .line 660
    :sswitch_12
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@169
    const v5, 0x22034

    #@16c
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@16f
    goto/16 :goto_0

    #@171
    .line 664
    :sswitch_13
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@173
    const v5, 0x22036

    #@176
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@179
    goto/16 :goto_0

    #@17b
    .line 668
    :sswitch_14
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@17d
    const v5, 0x2203c

    #@180
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@183
    goto/16 :goto_0

    #@185
    .line 672
    :sswitch_15
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@187
    .line 673
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@189
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@18b
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@18e
    move-result-object v6

    #@18f
    invoke-direct {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    #@192
    .line 672
    const v6, 0x22014

    #@195
    invoke-static {v3, p1, v6, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@198
    goto/16 :goto_0

    #@19a
    .line 676
    :sswitch_16
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@19c
    .line 677
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pInfo;

    #@19e
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1a0
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    #@1a3
    move-result-object v6

    #@1a4
    invoke-direct {v5, v6}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    #@1a7
    .line 676
    const v6, 0x22016

    #@1aa
    invoke-static {v3, p1, v6, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@1ad
    goto/16 :goto_0

    #@1af
    .line 680
    :sswitch_17
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1b1
    .line 681
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1b3
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1b6
    move-result-object v6

    #@1b7
    if-eqz v6, :cond_4

    #@1b9
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1bb
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1bd
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1c0
    move-result-object v6

    #@1c1
    invoke-direct {v3, v6}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    #@1c4
    .line 680
    :cond_4
    const v6, 0x22018

    #@1c7
    invoke-static {v5, p1, v6, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@1ca
    goto/16 :goto_0

    #@1cc
    .line 684
    :sswitch_18
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ce
    .line 685
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@1d0
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1d2
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@1d5
    move-result-object v7

    #@1d6
    invoke-direct {v6, v7, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    #@1d9
    .line 684
    const v3, 0x2203a

    #@1dc
    invoke-static {v5, p1, v3, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@1df
    goto/16 :goto_0

    #@1e1
    .line 688
    :sswitch_19
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1e3
    const v5, 0x2203f

    #@1e6
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@1e9
    goto/16 :goto_0

    #@1eb
    .line 693
    :sswitch_1a
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ed
    const v6, 0x2204d

    #@1f0
    invoke-static {v5, p1, v6, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 697
    :sswitch_1b
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1f7
    const v5, 0x22051

    #@1fa
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 740
    :sswitch_1c
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@201
    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@203
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    #@206
    move-result-object v3

    #@207
    const v5, 0x20085

    #@20a
    invoke-virtual {v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@20d
    goto/16 :goto_0

    #@20f
    .line 744
    :sswitch_1d
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@211
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@213
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@215
    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@218
    .line 745
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@21a
    new-instance v5, Ljava/lang/StringBuilder;

    #@21c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21f
    const-string/jumbo v6, "Unexpected group creation, remove "

    #@222
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v5

    #@226
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@228
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@22b
    move-result-object v6

    #@22c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v5

    #@230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@233
    move-result-object v5

    #@234
    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@237
    .line 746
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@239
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@23c
    move-result-object v3

    #@23d
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@23f
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@242
    move-result-object v5

    #@243
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@246
    move-result-object v5

    #@247
    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@24a
    goto/16 :goto_0

    #@24c
    .line 567
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_3
        0x11004 -> :sswitch_2
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_1c
        0x22001 -> :sswitch_5
        0x22004 -> :sswitch_6
        0x22007 -> :sswitch_8
        0x2200a -> :sswitch_9
        0x2200d -> :sswitch_a
        0x22010 -> :sswitch_b
        0x22013 -> :sswitch_15
        0x22015 -> :sswitch_16
        0x22017 -> :sswitch_17
        0x2201c -> :sswitch_c
        0x2201f -> :sswitch_d
        0x22022 -> :sswitch_e
        0x22025 -> :sswitch_f
        0x22028 -> :sswitch_10
        0x2202b -> :sswitch_11
        0x2202e -> :sswitch_7
        0x22033 -> :sswitch_12
        0x22036 -> :sswitch_13
        0x22039 -> :sswitch_18
        0x2203b -> :sswitch_14
        0x2203e -> :sswitch_19
        0x22041 -> :sswitch_1
        0x22044 -> :sswitch_1
        0x22047 -> :sswitch_1
        0x2204b -> :sswitch_1a
        0x2204c -> :sswitch_1a
        0x2204e -> :sswitch_1b
        0x2204f -> :sswitch_1b
        0x23001 -> :sswitch_1
        0x23002 -> :sswitch_1
        0x23003 -> :sswitch_1
        0x23004 -> :sswitch_1
        0x23005 -> :sswitch_1
        0x23006 -> :sswitch_1
        0x2300d -> :sswitch_1
        0x2300e -> :sswitch_1
        0x2300f -> :sswitch_4
        0x23010 -> :sswitch_1
        0x24001 -> :sswitch_1
        0x24002 -> :sswitch_1
        0x24003 -> :sswitch_1
        0x24004 -> :sswitch_1
        0x24005 -> :sswitch_1
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_1
        0x24008 -> :sswitch_1
        0x24009 -> :sswitch_1
        0x2400a -> :sswitch_1
        0x2400b -> :sswitch_1
        0x24015 -> :sswitch_1
        0x24016 -> :sswitch_1
        0x2401c -> :sswitch_1
        0x2401d -> :sswitch_1d
        0x2401e -> :sswitch_1
        0x24020 -> :sswitch_1
        0x24025 -> :sswitch_1
        0x24026 -> :sswitch_1
        0x24027 -> :sswitch_1
        0x30004 -> :sswitch_1
        0x30005 -> :sswitch_1
        0x30006 -> :sswitch_1
    .end sparse-switch
.end method
