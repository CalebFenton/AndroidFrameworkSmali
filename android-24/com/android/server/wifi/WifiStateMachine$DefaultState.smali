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
    .line 3959
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/16 v9, -0x14

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v8, 0x2

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    .line 3962
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    invoke-static {v7, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@b
    .line 3964
    iget v7, p1, Landroid/os/Message;->what:I

    #@d
    sparse-switch v7, :sswitch_data_0

    #@10
    .line 4208
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "Error! unhandled message"

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@29
    .line 4211
    :cond_0
    :goto_0
    return v5

    #@2a
    .line 3966
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@2e
    .line 3967
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@33
    move-result-object v4

    #@34
    if-ne v0, v4, :cond_2

    #@36
    .line 3968
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@38
    if-nez v4, :cond_1

    #@3a
    .line 3969
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@3f
    move-result-object v4

    #@40
    const v6, 0x11001

    #@43
    invoke-virtual {v4, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@46
    goto :goto_0

    #@47
    .line 3971
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    new-instance v6, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v7, "WifiP2pService connection failure, error="

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 3974
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    const-string/jumbo v6, "got HALF_CONNECTED for unknown channel"

    #@68
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6b
    goto :goto_0

    #@6c
    .line 3979
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6e
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@70
    .line 3980
    .restart local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@75
    move-result-object v4

    #@76
    if-ne v0, v4, :cond_0

    #@78
    .line 3981
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a
    new-instance v6, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v7, "WifiP2pService channel lost, message.arg1 ="

    #@82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@93
    goto :goto_0

    #@94
    .line 3989
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@96
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@98
    if-eqz v4, :cond_3

    #@9a
    move v4, v5

    #@9b
    :goto_1
    invoke-static {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@9e
    goto :goto_0

    #@9f
    :cond_3
    move v4, v6

    #@a0
    goto :goto_1

    #@a1
    .line 3998
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a3
    iget v6, p1, Landroid/os/Message;->what:I

    #@a5
    const/4 v7, -0x1

    #@a6
    invoke-static {v4, p1, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@a9
    goto :goto_0

    #@aa
    .line 4001
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ac
    iget v7, p1, Landroid/os/Message;->what:I

    #@ae
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@b1
    goto/16 :goto_0

    #@b3
    .line 4004
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b5
    iget v7, p1, Landroid/os/Message;->what:I

    #@b7
    check-cast v4, Ljava/util/List;

    #@b9
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@bc
    goto/16 :goto_0

    #@be
    .line 4007
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    iget v7, p1, Landroid/os/Message;->what:I

    #@c2
    check-cast v4, Ljava/util/List;

    #@c4
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 4010
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cb
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@cd
    if-ne v7, v5, :cond_4

    #@cf
    move v6, v5

    #@d0
    :cond_4
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@d3
    goto/16 :goto_0

    #@d5
    .line 4013
    :sswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@d7
    if-ne v4, v5, :cond_5

    #@d9
    .line 4014
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@db
    invoke-static {v4, v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 4016
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2
    invoke-static {v4, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@e5
    goto/16 :goto_0

    #@e7
    .line 4020
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e9
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    #@ec
    goto/16 :goto_0

    #@ee
    .line 4023
    :sswitch_a
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@f2
    if-eqz v7, :cond_6

    #@f4
    move v6, v5

    #@f5
    :cond_6
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 4027
    :sswitch_b
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@ff
    move-result v6

    #@100
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@103
    goto/16 :goto_0

    #@105
    .line 4078
    :sswitch_c
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@107
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@10a
    move-result v6

    #@10b
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@10e
    goto/16 :goto_0

    #@110
    .line 4081
    :sswitch_d
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@112
    if-ne v4, v5, :cond_7

    #@114
    .line 4082
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@116
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@119
    move-result-object v4

    #@11a
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@11d
    .line 4083
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11f
    const/4 v6, 0x4

    #@120
    invoke-static {v4, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@123
    goto/16 :goto_0

    #@125
    .line 4085
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@127
    const/4 v7, 0x4

    #@128
    invoke-static {v4, v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 4089
    :sswitch_e
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12f
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@132
    .line 4090
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@134
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@137
    goto/16 :goto_0

    #@139
    .line 4093
    :sswitch_f
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13b
    const v6, 0x25002

    #@13e
    invoke-static {v4, p1, v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@141
    goto/16 :goto_0

    #@143
    .line 4097
    :sswitch_10
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@145
    const v6, 0x25005

    #@148
    invoke-static {v4, p1, v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@14b
    goto/16 :goto_0

    #@14d
    .line 4101
    :sswitch_11
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14f
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@152
    move-result v6

    #@153
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@156
    .line 4102
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@158
    const v6, 0x25008

    #@15b
    invoke-static {v4, p1, v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@15e
    goto/16 :goto_0

    #@160
    .line 4106
    :sswitch_12
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@162
    const v6, 0x2500c

    #@165
    invoke-static {v4, p1, v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@168
    goto/16 :goto_0

    #@16a
    .line 4110
    :sswitch_13
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16c
    const v6, 0x2500f

    #@16f
    invoke-static {v4, p1, v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@172
    goto/16 :goto_0

    #@174
    .line 4114
    :sswitch_14
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@176
    const v6, 0x25012

    #@179
    invoke-static {v4, p1, v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@17c
    goto/16 :goto_0

    #@17e
    .line 4118
    :sswitch_15
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@180
    const v6, 0x25016

    #@183
    invoke-static {v4, p1, v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@186
    goto/16 :goto_0

    #@188
    .line 4122
    :sswitch_16
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@18d
    move-result-object v4

    #@18e
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    #@191
    move-result v2

    #@192
    .line 4123
    .local v2, "featureSet":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@194
    iget v6, p1, Landroid/os/Message;->what:I

    #@196
    invoke-static {v4, p1, v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@199
    goto/16 :goto_0

    #@19b
    .line 4126
    .end local v2    # "featureSet":I
    :sswitch_17
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19d
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@1a0
    move-result-object v4

    #@1a1
    if-eqz v4, :cond_0

    #@1a3
    .line 4127
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a5
    check-cast v1, [B

    #@1a7
    .line 4128
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a9
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@1ac
    move-result-object v4

    #@1ad
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@1af
    invoke-virtual {v4, v6, v1}, Lcom/android/server/wifi/BaseWifiLogger;->captureAlertData(I[B)V

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 4133
    .end local v1    # "buffer":[B
    :sswitch_18
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b6
    iget v7, p1, Landroid/os/Message;->what:I

    #@1b8
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 4136
    :sswitch_19
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1bf
    check-cast v3, Landroid/net/NetworkInfo;

    #@1c1
    .line 4137
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c3
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c6
    move-result-object v4

    #@1c7
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    #@1ca
    move-result v6

    #@1cb
    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 4140
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :sswitch_1a
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d2
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@1d4
    if-ne v7, v5, :cond_8

    #@1d6
    move v6, v5

    #@1d7
    :cond_8
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@1da
    .line 4141
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1dc
    const v6, 0x2300d

    #@1df
    invoke-static {v4, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1e2
    goto/16 :goto_0

    #@1e4
    .line 4145
    :sswitch_1b
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e8
    check-cast v4, Landroid/net/LinkProperties;

    #@1ea
    invoke-static {v6, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V

    #@1ed
    goto/16 :goto_0

    #@1ef
    .line 4148
    :sswitch_1c
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f1
    iget v6, p1, Landroid/os/Message;->what:I

    #@1f3
    invoke-static {v4, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1f6
    goto/16 :goto_0

    #@1f8
    .line 4153
    :sswitch_1d
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fa
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@1fd
    move-result v6

    #@1fe
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@201
    goto/16 :goto_0

    #@203
    .line 4156
    :sswitch_1e
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@205
    iget v6, p1, Landroid/os/Message;->what:I

    #@207
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@209
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@20c
    move-result-object v7

    #@20d
    invoke-static {v4, p1, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@210
    goto/16 :goto_0

    #@212
    .line 4159
    :sswitch_1f
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@214
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@217
    goto/16 :goto_0

    #@219
    .line 4162
    :sswitch_20
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21b
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@21e
    goto/16 :goto_0

    #@220
    .line 4165
    :sswitch_21
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@222
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@225
    move-result-object v4

    #@226
    if-eqz v4, :cond_0

    #@228
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@22d
    move-result-object v4

    #@22e
    .line 4166
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@230
    .line 4165
    invoke-virtual {v4, v6, v9}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@233
    goto/16 :goto_0

    #@235
    .line 4170
    :sswitch_22
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@237
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@23a
    move-result-object v4

    #@23b
    if-eqz v4, :cond_0

    #@23d
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23f
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@242
    move-result-object v4

    #@243
    .line 4171
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@245
    .line 4170
    invoke-virtual {v4, v6, v9}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@248
    goto/16 :goto_0

    #@24a
    .line 4175
    :sswitch_23
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@24f
    move-result v6

    #@250
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@253
    goto/16 :goto_0

    #@255
    .line 4178
    :sswitch_24
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@257
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@25a
    move-result v6

    #@25b
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@25e
    goto/16 :goto_0

    #@260
    .line 4181
    :sswitch_25
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@262
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@265
    move-result-object v4

    #@266
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@268
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiConfigManager;->handleUserSwitch(I)V

    #@26b
    goto/16 :goto_0

    #@26d
    .line 4190
    :sswitch_26
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26f
    iget v6, p1, Landroid/os/Message;->what:I

    #@271
    invoke-static {v4, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@274
    goto/16 :goto_0

    #@276
    .line 4194
    :sswitch_27
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@278
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@27b
    move-result v6

    #@27c
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@27f
    .line 4195
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@281
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@284
    goto/16 :goto_0

    #@286
    .line 4198
    :sswitch_28
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@288
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@28b
    move-result-object v6

    #@28c
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28e
    check-cast v4, [B

    #@290
    invoke-virtual {v6, v4}, Lcom/android/server/wifi/WifiNative;->installPacketFilter([B)Z

    #@293
    goto/16 :goto_0

    #@295
    .line 4201
    :sswitch_29
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@297
    check-cast v4, Ljava/lang/Boolean;

    #@299
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@29c
    move-result v4

    #@29d
    if-eqz v4, :cond_9

    #@29f
    .line 4202
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a1
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2a4
    move-result-object v4

    #@2a5
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    #@2a8
    goto/16 :goto_0

    #@2aa
    .line 4204
    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2ac
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2af
    move-result-object v4

    #@2b0
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    #@2b3
    goto/16 :goto_0

    #@2b5
    .line 3964
    nop

    #@2b6
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x2000b -> :sswitch_c
        0x2000c -> :sswitch_c
        0x2000d -> :sswitch_c
        0x2000e -> :sswitch_c
        0x20011 -> :sswitch_c
        0x20013 -> :sswitch_c
        0x20015 -> :sswitch_c
        0x20016 -> :sswitch_c
        0x20017 -> :sswitch_c
        0x20018 -> :sswitch_c
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
        0x2003d -> :sswitch_16
        0x2003e -> :sswitch_6
        0x2003f -> :sswitch_18
        0x20047 -> :sswitch_b
        0x20048 -> :sswitch_c
        0x20049 -> :sswitch_c
        0x2004a -> :sswitch_c
        0x2004b -> :sswitch_c
        0x2004c -> :sswitch_1e
        0x2004d -> :sswitch_8
        0x20052 -> :sswitch_7
        0x20053 -> :sswitch_c
        0x20056 -> :sswitch_d
        0x20058 -> :sswitch_c
        0x20059 -> :sswitch_c
        0x2005a -> :sswitch_c
        0x2005d -> :sswitch_c
        0x2005e -> :sswitch_c
        0x2005f -> :sswitch_a
        0x20060 -> :sswitch_c
        0x20061 -> :sswitch_1f
        0x20062 -> :sswitch_c
        0x20063 -> :sswitch_1c
        0x20064 -> :sswitch_17
        0x20065 -> :sswitch_27
        0x20066 -> :sswitch_26
        0x20067 -> :sswitch_26
        0x20068 -> :sswitch_26
        0x20069 -> :sswitch_26
        0x20085 -> :sswitch_c
        0x20086 -> :sswitch_9
        0x2008a -> :sswitch_1d
        0x2008b -> :sswitch_1d
        0x2008c -> :sswitch_1b
        0x2008d -> :sswitch_c
        0x2008e -> :sswitch_c
        0x2008f -> :sswitch_c
        0x20090 -> :sswitch_c
        0x20091 -> :sswitch_c
        0x20092 -> :sswitch_c
        0x20093 -> :sswitch_c
        0x20095 -> :sswitch_1d
        0x20098 -> :sswitch_20
        0x2009e -> :sswitch_c
        0x200a0 -> :sswitch_21
        0x200a1 -> :sswitch_22
        0x200a2 -> :sswitch_23
        0x200a3 -> :sswitch_24
        0x200a5 -> :sswitch_25
        0x200ca -> :sswitch_28
        0x200cb -> :sswitch_29
        0x2300b -> :sswitch_19
        0x2300c -> :sswitch_1a
        0x24001 -> :sswitch_c
        0x24002 -> :sswitch_c
        0x24003 -> :sswitch_c
        0x24004 -> :sswitch_c
        0x24005 -> :sswitch_c
        0x24006 -> :sswitch_c
        0x24007 -> :sswitch_c
        0x2400a -> :sswitch_c
        0x2400c -> :sswitch_e
        0x2400f -> :sswitch_c
        0x24010 -> :sswitch_c
        0x24011 -> :sswitch_c
        0x2402b -> :sswitch_c
        0x25001 -> :sswitch_f
        0x25004 -> :sswitch_10
        0x25007 -> :sswitch_11
        0x2500a -> :sswitch_12
        0x2500e -> :sswitch_13
        0x25011 -> :sswitch_14
        0x25014 -> :sswitch_15
        0x30003 -> :sswitch_c
        0x30004 -> :sswitch_c
        0x30006 -> :sswitch_c
    .end sparse-switch
.end method
