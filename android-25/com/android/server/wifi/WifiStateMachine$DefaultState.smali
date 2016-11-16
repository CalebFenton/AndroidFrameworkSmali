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
    .line 4028
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
    const/16 v10, -0x14

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v9, 0x2

    #@4
    const/4 v7, 0x0

    #@5
    const/4 v6, 0x1

    #@6
    .line 4031
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    invoke-static {v8, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@b
    .line 4033
    iget v8, p1, Landroid/os/Message;->what:I

    #@d
    sparse-switch v8, :sswitch_data_0

    #@10
    .line 4281
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "Error! unhandled message"

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@29
    .line 4284
    :cond_0
    :goto_0
    return v6

    #@2a
    .line 4035
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@2e
    .line 4036
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@33
    move-result-object v5

    #@34
    if-ne v0, v5, :cond_2

    #@36
    .line 4037
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@38
    if-nez v5, :cond_1

    #@3a
    .line 4038
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@3f
    move-result-object v5

    #@40
    const v7, 0x11001

    #@43
    invoke-virtual {v5, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@46
    goto :goto_0

    #@47
    .line 4040
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    new-instance v7, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v8, "WifiP2pService connection failure, error="

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 4043
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    const-string/jumbo v7, "got HALF_CONNECTED for unknown channel"

    #@68
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6b
    goto :goto_0

    #@6c
    .line 4048
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6e
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@70
    .line 4049
    .restart local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@75
    move-result-object v5

    #@76
    if-ne v0, v5, :cond_0

    #@78
    .line 4050
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a
    new-instance v7, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v8, "WifiP2pService channel lost, message.arg1 ="

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@93
    goto :goto_0

    #@94
    .line 4058
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@96
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@98
    if-eqz v5, :cond_3

    #@9a
    move v5, v6

    #@9b
    :goto_1
    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@9e
    goto :goto_0

    #@9f
    :cond_3
    move v5, v7

    #@a0
    goto :goto_1

    #@a1
    .line 4067
    :sswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a3
    iget v7, p1, Landroid/os/Message;->what:I

    #@a5
    const/4 v8, -0x1

    #@a6
    invoke-static {v5, p1, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@a9
    goto :goto_0

    #@aa
    .line 4070
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ac
    iget v8, p1, Landroid/os/Message;->what:I

    #@ae
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@b1
    goto/16 :goto_0

    #@b3
    .line 4073
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b5
    iget v8, p1, Landroid/os/Message;->what:I

    #@b7
    check-cast v5, Ljava/util/List;

    #@b9
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@bc
    goto/16 :goto_0

    #@be
    .line 4076
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    iget v8, p1, Landroid/os/Message;->what:I

    #@c2
    check-cast v5, Ljava/util/List;

    #@c4
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 4079
    :sswitch_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cb
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@cd
    if-ne v8, v6, :cond_4

    #@cf
    move v7, v6

    #@d0
    :cond_4
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@d3
    goto/16 :goto_0

    #@d5
    .line 4082
    :sswitch_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@d7
    if-ne v5, v6, :cond_5

    #@d9
    .line 4083
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@db
    invoke-static {v5, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 4085
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2
    invoke-static {v5, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@e5
    goto/16 :goto_0

    #@e7
    .line 4089
    :sswitch_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e9
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    #@ec
    goto/16 :goto_0

    #@ee
    .line 4092
    :sswitch_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@f2
    if-eqz v8, :cond_6

    #@f4
    move v7, v6

    #@f5
    :cond_6
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 4096
    :sswitch_b
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@ff
    move-result v7

    #@100
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@103
    goto/16 :goto_0

    #@105
    .line 4147
    :sswitch_c
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@107
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@10a
    move-result v7

    #@10b
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@10e
    goto/16 :goto_0

    #@110
    .line 4150
    :sswitch_d
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@112
    if-ne v5, v6, :cond_8

    #@114
    .line 4151
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@116
    if-ne v5, v6, :cond_7

    #@118
    .line 4152
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11a
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@11d
    move-result-object v5

    #@11e
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@121
    .line 4154
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@123
    const/4 v7, 0x4

    #@124
    invoke-static {v5, v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@127
    goto/16 :goto_0

    #@129
    .line 4156
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    const/4 v8, 0x4

    #@12c
    invoke-static {v5, v8, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 4160
    :sswitch_e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@133
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@136
    .line 4161
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@138
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@13b
    goto/16 :goto_0

    #@13d
    .line 4164
    :sswitch_f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13f
    const v7, 0x25002

    #@142
    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@145
    goto/16 :goto_0

    #@147
    .line 4168
    :sswitch_10
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@149
    const v7, 0x25005

    #@14c
    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@14f
    goto/16 :goto_0

    #@151
    .line 4172
    :sswitch_11
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@153
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@156
    move-result v7

    #@157
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@15a
    .line 4173
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15c
    const v7, 0x25008

    #@15f
    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@162
    goto/16 :goto_0

    #@164
    .line 4177
    :sswitch_12
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@166
    const v7, 0x2500c

    #@169
    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@16c
    goto/16 :goto_0

    #@16e
    .line 4181
    :sswitch_13
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@170
    const v7, 0x2500f

    #@173
    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@176
    goto/16 :goto_0

    #@178
    .line 4185
    :sswitch_14
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17a
    const v7, 0x25012

    #@17d
    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@180
    goto/16 :goto_0

    #@182
    .line 4189
    :sswitch_15
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@184
    const v7, 0x25016

    #@187
    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@18a
    goto/16 :goto_0

    #@18c
    .line 4193
    :sswitch_16
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18e
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@191
    move-result-object v5

    #@192
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    #@195
    move-result v3

    #@196
    .line 4194
    .local v3, "featureSet":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@198
    iget v7, p1, Landroid/os/Message;->what:I

    #@19a
    invoke-static {v5, p1, v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@19d
    goto/16 :goto_0

    #@19f
    .line 4197
    .end local v3    # "featureSet":I
    :sswitch_17
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a1
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@1a4
    move-result-object v5

    #@1a5
    if-eqz v5, :cond_0

    #@1a7
    .line 4198
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a9
    check-cast v2, [B

    #@1ab
    .line 4199
    .local v2, "buffer":[B
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@1ad
    .line 4200
    .local v1, "alertReason":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1af
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@1b2
    move-result-object v5

    #@1b3
    invoke-virtual {v5, v1, v2}, Lcom/android/server/wifi/BaseWifiLogger;->captureAlertData(I[B)V

    #@1b6
    .line 4201
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b8
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@1bb
    move-result-object v5

    #@1bc
    invoke-virtual {v5, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementAlertReasonCount(I)V

    #@1bf
    goto/16 :goto_0

    #@1c1
    .line 4206
    .end local v1    # "alertReason":I
    .end local v2    # "buffer":[B
    :sswitch_18
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c3
    iget v8, p1, Landroid/os/Message;->what:I

    #@1c5
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@1c8
    goto/16 :goto_0

    #@1ca
    .line 4209
    :sswitch_19
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cc
    check-cast v4, Landroid/net/NetworkInfo;

    #@1ce
    .line 4210
    .local v4, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d0
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1d3
    move-result-object v5

    #@1d4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    #@1d7
    move-result v7

    #@1d8
    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1db
    goto/16 :goto_0

    #@1dd
    .line 4213
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :sswitch_1a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1df
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@1e1
    if-ne v8, v6, :cond_9

    #@1e3
    move v7, v6

    #@1e4
    :cond_9
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@1e7
    .line 4214
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e9
    const v7, 0x2300d

    #@1ec
    invoke-static {v5, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 4218
    :sswitch_1b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f5
    check-cast v5, Landroid/net/LinkProperties;

    #@1f7
    invoke-static {v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V

    #@1fa
    goto/16 :goto_0

    #@1fc
    .line 4221
    :sswitch_1c
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fe
    iget v7, p1, Landroid/os/Message;->what:I

    #@200
    invoke-static {v5, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@203
    goto/16 :goto_0

    #@205
    .line 4226
    :sswitch_1d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@207
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@20a
    move-result v7

    #@20b
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@20e
    goto/16 :goto_0

    #@210
    .line 4229
    :sswitch_1e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@212
    iget v7, p1, Landroid/os/Message;->what:I

    #@214
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@216
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@219
    move-result-object v8

    #@21a
    invoke-static {v5, p1, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@21d
    goto/16 :goto_0

    #@21f
    .line 4232
    :sswitch_1f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@221
    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@224
    goto/16 :goto_0

    #@226
    .line 4235
    :sswitch_20
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@228
    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@22b
    goto/16 :goto_0

    #@22d
    .line 4238
    :sswitch_21
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@232
    move-result-object v5

    #@233
    if-eqz v5, :cond_0

    #@235
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@237
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@23a
    move-result-object v5

    #@23b
    .line 4239
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@23d
    .line 4238
    invoke-virtual {v5, v7, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@240
    goto/16 :goto_0

    #@242
    .line 4243
    :sswitch_22
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@244
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@247
    move-result-object v5

    #@248
    if-eqz v5, :cond_0

    #@24a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24c
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@24f
    move-result-object v5

    #@250
    .line 4244
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@252
    .line 4243
    invoke-virtual {v5, v7, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@255
    goto/16 :goto_0

    #@257
    .line 4248
    :sswitch_23
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@259
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@25c
    move-result v7

    #@25d
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@260
    goto/16 :goto_0

    #@262
    .line 4251
    :sswitch_24
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@264
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@267
    move-result v7

    #@268
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@26b
    goto/16 :goto_0

    #@26d
    .line 4254
    :sswitch_25
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@272
    move-result-object v5

    #@273
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@275
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiConfigManager;->handleUserSwitch(I)V

    #@278
    goto/16 :goto_0

    #@27a
    .line 4263
    :sswitch_26
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27c
    iget v7, p1, Landroid/os/Message;->what:I

    #@27e
    invoke-static {v5, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@281
    goto/16 :goto_0

    #@283
    .line 4267
    :sswitch_27
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@285
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@288
    move-result v7

    #@289
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@28c
    .line 4268
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28e
    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@291
    goto/16 :goto_0

    #@293
    .line 4271
    :sswitch_28
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@295
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@298
    move-result-object v7

    #@299
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29b
    check-cast v5, [B

    #@29d
    invoke-virtual {v7, v5}, Lcom/android/server/wifi/WifiNative;->installPacketFilter([B)Z

    #@2a0
    goto/16 :goto_0

    #@2a2
    .line 4274
    :sswitch_29
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a4
    check-cast v5, Ljava/lang/Boolean;

    #@2a6
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@2a9
    move-result v5

    #@2aa
    if-eqz v5, :cond_a

    #@2ac
    .line 4275
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2ae
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2b1
    move-result-object v5

    #@2b2
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    #@2b5
    goto/16 :goto_0

    #@2b7
    .line 4277
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b9
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2bc
    move-result-object v5

    #@2bd
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    #@2c0
    goto/16 :goto_0

    #@2c2
    .line 4033
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
