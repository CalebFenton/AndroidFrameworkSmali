.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 5399
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v10, 0x4

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, 0x1

    #@5
    .line 5402
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v8

    #@b
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@e
    move-result-object v8

    #@f
    invoke-static {v7, p1, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@12
    .line 5404
    iget v7, p1, Landroid/os/Message;->what:I

    #@14
    sparse-switch v7, :sswitch_data_0

    #@17
    .line 5621
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "Error! unhandled message"

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@30
    .line 5624
    :cond_0
    :goto_0
    return v5

    #@31
    .line 5406
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@35
    .line 5407
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@37
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@3a
    move-result-object v4

    #@3b
    if-ne v0, v4, :cond_2

    #@3d
    .line 5408
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@3f
    if-nez v4, :cond_1

    #@41
    .line 5409
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@46
    move-result-object v4

    #@47
    const v6, 0x11001

    #@4a
    invoke-virtual {v4, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@4d
    goto :goto_0

    #@4e
    .line 5411
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "WifiP2pService connection failure, error="

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@69
    goto :goto_0

    #@6a
    .line 5414
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    const-string/jumbo v6, "got HALF_CONNECTED for unknown channel"

    #@6f
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@72
    goto :goto_0

    #@73
    .line 5419
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@75
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@77
    .line 5420
    .restart local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@79
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@7c
    move-result-object v4

    #@7d
    if-ne v0, v4, :cond_0

    #@7f
    .line 5421
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@81
    new-instance v6, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v7, "WifiP2pService channel lost, message.arg1 ="

    #@89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v6

    #@8d
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@8f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@9a
    goto :goto_0

    #@9b
    .line 5429
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9d
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@9f
    if-eqz v4, :cond_3

    #@a1
    move v4, v5

    #@a2
    :goto_1
    invoke-static {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set8(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@a5
    goto :goto_0

    #@a6
    :cond_3
    move v4, v6

    #@a7
    goto :goto_1

    #@a8
    .line 5438
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aa
    iget v6, p1, Landroid/os/Message;->what:I

    #@ac
    const/4 v7, -0x1

    #@ad
    invoke-static {v4, p1, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@b0
    goto :goto_0

    #@b1
    .line 5441
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3
    iget v7, p1, Landroid/os/Message;->what:I

    #@b5
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@b8
    goto/16 :goto_0

    #@ba
    .line 5444
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bc
    iget v7, p1, Landroid/os/Message;->what:I

    #@be
    check-cast v4, Ljava/util/List;

    #@c0
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@c3
    goto/16 :goto_0

    #@c5
    .line 5447
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c7
    iget v7, p1, Landroid/os/Message;->what:I

    #@c9
    check-cast v4, Ljava/util/List;

    #@cb
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@ce
    goto/16 :goto_0

    #@d0
    .line 5450
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d2
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@d4
    if-ne v7, v5, :cond_4

    #@d6
    move v6, v5

    #@d7
    :cond_4
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set18(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@da
    goto/16 :goto_0

    #@dc
    .line 5453
    :sswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@de
    if-ne v4, v5, :cond_5

    #@e0
    .line 5454
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2
    invoke-static {v4, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@e5
    goto/16 :goto_0

    #@e7
    .line 5456
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e9
    invoke-static {v4, v9, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@ec
    goto/16 :goto_0

    #@ee
    .line 5460
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 5463
    :sswitch_a
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f7
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@f9
    if-eqz v7, :cond_6

    #@fb
    move v6, v5

    #@fc
    :cond_6
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@ff
    goto/16 :goto_0

    #@101
    .line 5467
    :sswitch_b
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@103
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@106
    move-result v6

    #@107
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@10a
    goto/16 :goto_0

    #@10c
    .line 5531
    :sswitch_c
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@111
    move-result v6

    #@112
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@115
    goto/16 :goto_0

    #@117
    .line 5534
    :sswitch_d
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@119
    invoke-static {v6, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set12(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;

    #@11c
    goto/16 :goto_0

    #@11e
    .line 5537
    :sswitch_e
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@120
    if-ne v4, v5, :cond_7

    #@122
    .line 5538
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@124
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@127
    move-result-object v4

    #@128
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@12b
    .line 5539
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12d
    invoke-static {v4, v10, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@130
    goto/16 :goto_0

    #@132
    .line 5541
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@134
    invoke-static {v4, v10, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@137
    goto/16 :goto_0

    #@139
    .line 5545
    :sswitch_f
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13b
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@13e
    .line 5546
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@140
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@143
    goto/16 :goto_0

    #@145
    .line 5549
    :sswitch_10
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@147
    const v6, 0x25002

    #@14a
    invoke-static {v4, p1, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@14d
    goto/16 :goto_0

    #@14f
    .line 5553
    :sswitch_11
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@151
    const v6, 0x25005

    #@154
    invoke-static {v4, p1, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@157
    goto/16 :goto_0

    #@159
    .line 5557
    :sswitch_12
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@15e
    move-result v6

    #@15f
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@162
    .line 5558
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@164
    const v6, 0x25008

    #@167
    invoke-static {v4, p1, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@16a
    goto/16 :goto_0

    #@16c
    .line 5562
    :sswitch_13
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16e
    const v6, 0x2500c

    #@171
    invoke-static {v4, p1, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@174
    goto/16 :goto_0

    #@176
    .line 5566
    :sswitch_14
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@178
    const v6, 0x2500f

    #@17b
    invoke-static {v4, p1, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@17e
    goto/16 :goto_0

    #@180
    .line 5570
    :sswitch_15
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@182
    const v6, 0x25012

    #@185
    invoke-static {v4, p1, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@188
    goto/16 :goto_0

    #@18a
    .line 5574
    :sswitch_16
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18c
    const v6, 0x25016

    #@18f
    invoke-static {v4, p1, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@192
    goto/16 :goto_0

    #@194
    .line 5578
    :sswitch_17
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    #@197
    move-result v2

    #@198
    .line 5579
    .local v2, "featureSet":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19a
    iget v6, p1, Landroid/os/Message;->what:I

    #@19c
    invoke-static {v4, p1, v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@19f
    goto/16 :goto_0

    #@1a1
    .line 5582
    .end local v2    # "featureSet":I
    :sswitch_18
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a3
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@1a6
    move-result-object v4

    #@1a7
    if-eqz v4, :cond_0

    #@1a9
    .line 5583
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ab
    check-cast v1, [B

    #@1ad
    .line 5584
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1af
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@1b2
    move-result-object v4

    #@1b3
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@1b5
    invoke-virtual {v4, v6, v1}, Lcom/android/server/wifi/WifiLogger;->captureAlertData(I[B)V

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 5589
    .end local v1    # "buffer":[B
    :sswitch_19
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bc
    iget v7, p1, Landroid/os/Message;->what:I

    #@1be
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@1c1
    goto/16 :goto_0

    #@1c3
    .line 5592
    :sswitch_1a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c5
    check-cast v3, Landroid/net/NetworkInfo;

    #@1c7
    .line 5593
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c9
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1cc
    move-result-object v4

    #@1cd
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    #@1d0
    move-result v6

    #@1d1
    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1d4
    goto/16 :goto_0

    #@1d6
    .line 5596
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :sswitch_1b
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d8
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@1da
    if-ne v7, v5, :cond_8

    #@1dc
    move v6, v5

    #@1dd
    :cond_8
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set43(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@1e0
    .line 5597
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e2
    const v6, 0x2300d

    #@1e5
    invoke-static {v4, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 5601
    :sswitch_1c
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ec
    const v6, 0x2008c

    #@1ef
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@1f2
    goto/16 :goto_0

    #@1f4
    .line 5604
    :sswitch_1d
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f6
    iget v6, p1, Landroid/os/Message;->what:I

    #@1f8
    invoke-static {v4, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1fb
    goto/16 :goto_0

    #@1fd
    .line 5609
    :sswitch_1e
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ff
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@202
    move-result v6

    #@203
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@206
    goto/16 :goto_0

    #@208
    .line 5612
    :sswitch_1f
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20a
    iget v6, p1, Landroid/os/Message;->what:I

    #@20c
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20e
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@211
    move-result-object v7

    #@212
    invoke-static {v4, p1, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@215
    goto/16 :goto_0

    #@217
    .line 5615
    :sswitch_20
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@219
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@21c
    goto/16 :goto_0

    #@21e
    .line 5618
    :sswitch_21
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@220
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@223
    goto/16 :goto_0

    #@225
    .line 5404
    nop

    #@226
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x2000b -> :sswitch_c
        0x2000c -> :sswitch_c
        0x2000d -> :sswitch_c
        0x2000e -> :sswitch_c
        0x20011 -> :sswitch_c
        0x20012 -> :sswitch_c
        0x20013 -> :sswitch_c
        0x20015 -> :sswitch_c
        0x20016 -> :sswitch_c
        0x20017 -> :sswitch_c
        0x20018 -> :sswitch_c
        0x20019 -> :sswitch_c
        0x2001a -> :sswitch_c
        0x2001b -> :sswitch_c
        0x2001c -> :sswitch_c
        0x2001d -> :sswitch_c
        0x2001e -> :sswitch_c
        0x2001f -> :sswitch_2
        0x20033 -> :sswitch_3
        0x20034 -> :sswitch_3
        0x20035 -> :sswitch_3
        0x20036 -> :sswitch_3
        0x20037 -> :sswitch_c
        0x20038 -> :sswitch_c
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_3
        0x2003b -> :sswitch_5
        0x2003c -> :sswitch_4
        0x2003d -> :sswitch_17
        0x2003e -> :sswitch_6
        0x2003f -> :sswitch_19
        0x20047 -> :sswitch_b
        0x20048 -> :sswitch_c
        0x20049 -> :sswitch_c
        0x2004a -> :sswitch_c
        0x2004b -> :sswitch_c
        0x2004c -> :sswitch_1f
        0x2004d -> :sswitch_8
        0x20050 -> :sswitch_c
        0x20052 -> :sswitch_7
        0x20053 -> :sswitch_c
        0x20056 -> :sswitch_e
        0x20058 -> :sswitch_c
        0x20059 -> :sswitch_c
        0x2005a -> :sswitch_c
        0x2005d -> :sswitch_c
        0x2005e -> :sswitch_c
        0x2005f -> :sswitch_a
        0x20060 -> :sswitch_c
        0x20061 -> :sswitch_20
        0x20062 -> :sswitch_c
        0x20063 -> :sswitch_1d
        0x20064 -> :sswitch_18
        0x20085 -> :sswitch_c
        0x20086 -> :sswitch_9
        0x2008a -> :sswitch_1e
        0x2008b -> :sswitch_1e
        0x2008c -> :sswitch_1c
        0x2008d -> :sswitch_c
        0x2008e -> :sswitch_c
        0x2008f -> :sswitch_c
        0x20090 -> :sswitch_c
        0x20091 -> :sswitch_c
        0x20092 -> :sswitch_c
        0x20093 -> :sswitch_c
        0x20095 -> :sswitch_1e
        0x20098 -> :sswitch_21
        0x2009a -> :sswitch_c
        0x2009b -> :sswitch_c
        0x2009e -> :sswitch_c
        0x2009f -> :sswitch_c
        0x21015 -> :sswitch_c
        0x21016 -> :sswitch_c
        0x2300b -> :sswitch_1a
        0x2300c -> :sswitch_1b
        0x24001 -> :sswitch_c
        0x24002 -> :sswitch_c
        0x24003 -> :sswitch_c
        0x24004 -> :sswitch_c
        0x24005 -> :sswitch_c
        0x24006 -> :sswitch_c
        0x24007 -> :sswitch_c
        0x2400a -> :sswitch_c
        0x2400c -> :sswitch_f
        0x2400f -> :sswitch_c
        0x24010 -> :sswitch_c
        0x24011 -> :sswitch_c
        0x2402b -> :sswitch_c
        0x25001 -> :sswitch_10
        0x25004 -> :sswitch_11
        0x25007 -> :sswitch_12
        0x2500a -> :sswitch_13
        0x2500e -> :sswitch_14
        0x25011 -> :sswitch_15
        0x25014 -> :sswitch_16
        0x30004 -> :sswitch_c
        0x30005 -> :sswitch_c
        0x30006 -> :sswitch_d
    .end sparse-switch
.end method
