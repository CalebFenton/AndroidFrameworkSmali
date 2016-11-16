.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 409
    const/4 v4, 0x1

    #@1
    .line 411
    .local v4, "handled":Z
    const/4 v12, 0x1

    #@2
    aget-object v12, p3, v12

    #@4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v5

    #@8
    .line 412
    .local v5, "id":I
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@c
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@e
    invoke-static {v12}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    #@11
    move-result-object v12

    #@12
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    #@18
    .line 413
    .local v2, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    if-nez v2, :cond_0

    #@1a
    .line 414
    const-string/jumbo v12, "NsdService"

    #@1d
    new-instance v13, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v14, "Unique id with no client mapping: "

    #@25
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v13

    #@29
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v13

    #@2d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v13

    #@31
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 415
    const/4 v4, 0x0

    #@35
    .line 416
    return v4

    #@36
    .line 420
    :cond_0
    invoke-static {v2, v5}, Lcom/android/server/NsdService$ClientInfo;->-wrap0(Lcom/android/server/NsdService$ClientInfo;I)I

    #@39
    move-result v1

    #@3a
    .line 421
    .local v1, "clientId":I
    if-gez v1, :cond_1

    #@3c
    .line 425
    const-string/jumbo v12, "NsdService"

    #@3f
    new-instance v13, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v14, "Notification for a listener that is no longer active: "

    #@47
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v13

    #@4b
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v13

    #@4f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v13

    #@53
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 426
    const/4 v4, 0x0

    #@57
    .line 427
    return v4

    #@58
    .line 430
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@5b
    .line 541
    const/4 v4, 0x0

    #@5c
    .line 544
    :goto_0
    :pswitch_0
    return v4

    #@5d
    .line 434
    :pswitch_1
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    #@5f
    const/4 v12, 0x2

    #@60
    aget-object v12, p3, v12

    #@62
    const/4 v13, 0x3

    #@63
    aget-object v13, p3, v13

    #@65
    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    .line 435
    .local v10, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@6b
    move-result-object v12

    #@6c
    const v13, 0x60004

    #@6f
    const/4 v14, 0x0

    #@70
    invoke-virtual {v12, v13, v14, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@73
    goto :goto_0

    #@74
    .line 441
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_2
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    #@76
    const/4 v12, 0x2

    #@77
    aget-object v12, p3, v12

    #@79
    const/4 v13, 0x3

    #@7a
    aget-object v13, p3, v13

    #@7c
    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7f
    .line 442
    .restart local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@82
    move-result-object v12

    #@83
    const v13, 0x60005

    #@86
    const/4 v14, 0x0

    #@87
    invoke-virtual {v12, v13, v14, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@8a
    goto :goto_0

    #@8b
    .line 448
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_3
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@8e
    move-result-object v12

    #@8f
    const v13, 0x60003

    #@92
    .line 449
    const/4 v14, 0x0

    #@93
    .line 448
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@96
    goto :goto_0

    #@97
    .line 454
    :pswitch_4
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    #@99
    const/4 v12, 0x2

    #@9a
    aget-object v12, p3, v12

    #@9c
    const/4 v13, 0x0

    #@9d
    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a0
    .line 455
    .restart local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@a3
    move-result-object v12

    #@a4
    const v13, 0x6000b

    #@a7
    invoke-virtual {v12, v13, v5, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@aa
    goto :goto_0

    #@ab
    .line 461
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_5
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@ae
    move-result-object v12

    #@af
    const v13, 0x6000a

    #@b2
    .line 462
    const/4 v14, 0x0

    #@b3
    .line 461
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@b6
    goto :goto_0

    #@b7
    .line 473
    :pswitch_6
    const/4 v7, 0x0

    #@b8
    .line 474
    .local v7, "index":I
    :goto_1
    const/4 v12, 0x2

    #@b9
    aget-object v12, p3, v12

    #@bb
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@be
    move-result v12

    #@bf
    if-ge v7, v12, :cond_3

    #@c1
    const/4 v12, 0x2

    #@c2
    aget-object v12, p3, v12

    #@c4
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    #@c7
    move-result v12

    #@c8
    const/16 v13, 0x2e

    #@ca
    if-eq v12, v13, :cond_3

    #@cc
    .line 475
    const/4 v12, 0x2

    #@cd
    aget-object v12, p3, v12

    #@cf
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    #@d2
    move-result v12

    #@d3
    const/16 v13, 0x5c

    #@d5
    if-ne v12, v13, :cond_2

    #@d7
    .line 476
    add-int/lit8 v7, v7, 0x1

    #@d9
    .line 478
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@db
    goto :goto_1

    #@dc
    .line 480
    :cond_3
    const/4 v12, 0x2

    #@dd
    aget-object v12, p3, v12

    #@df
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@e2
    move-result v12

    #@e3
    if-lt v7, v12, :cond_4

    #@e5
    .line 481
    const-string/jumbo v12, "NsdService"

    #@e8
    new-instance v13, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v14, "Invalid service found "

    #@f0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v13

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v13

    #@fa
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v13

    #@fe
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@101
    goto/16 :goto_0

    #@103
    .line 484
    :cond_4
    const/4 v12, 0x2

    #@104
    aget-object v12, p3, v12

    #@106
    const/4 v13, 0x0

    #@107
    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10a
    move-result-object v8

    #@10b
    .line 485
    .local v8, "name":Ljava/lang/String;
    const/4 v12, 0x2

    #@10c
    aget-object v12, p3, v12

    #@10e
    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@111
    move-result-object v9

    #@112
    .line 486
    .local v9, "rest":Ljava/lang/String;
    const-string/jumbo v12, ".local."

    #@115
    const-string/jumbo v13, ""

    #@118
    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@11b
    move-result-object v11

    #@11c
    .line 488
    .local v11, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11e
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@120
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@122
    invoke-static {v12, v8}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    #@125
    move-result-object v8

    #@126
    .line 490
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@129
    move-result-object v12

    #@12a
    invoke-virtual {v12, v8}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    #@12d
    .line 491
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@130
    move-result-object v12

    #@131
    invoke-virtual {v12, v11}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    #@134
    .line 492
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@137
    move-result-object v12

    #@138
    const/4 v13, 0x4

    #@139
    aget-object v13, p3, v13

    #@13b
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13e
    move-result v13

    #@13f
    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    #@142
    .line 493
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@145
    move-result-object v12

    #@146
    const/4 v13, 0x6

    #@147
    aget-object v13, p3, v13

    #@149
    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setTxtRecords(Ljava/lang/String;)V

    #@14c
    .line 495
    move-object/from16 v0, p0

    #@14e
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@150
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@152
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    #@155
    .line 496
    move-object/from16 v0, p0

    #@157
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@15a
    .line 498
    move-object/from16 v0, p0

    #@15c
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@15e
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@160
    invoke-static {v12}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@163
    move-result v6

    #@164
    .line 499
    .local v6, "id2":I
    move-object/from16 v0, p0

    #@166
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@168
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@16a
    const/4 v13, 0x3

    #@16b
    aget-object v13, p3, v13

    #@16d
    invoke-static {v12, v6, v13}, Lcom/android/server/NsdService;->-wrap1(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    #@170
    move-result v12

    #@171
    if-eqz v12, :cond_5

    #@173
    .line 500
    const v12, 0x60012

    #@176
    move-object/from16 v0, p0

    #@178
    invoke-direct {v0, v1, v6, v2, v12}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@17b
    goto/16 :goto_0

    #@17d
    .line 502
    :cond_5
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@180
    move-result-object v12

    #@181
    const v13, 0x60013

    #@184
    .line 503
    const/4 v14, 0x0

    #@185
    .line 502
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@188
    .line 504
    const/4 v12, 0x0

    #@189
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@18c
    goto/16 :goto_0

    #@18e
    .line 510
    .end local v6    # "id2":I
    .end local v7    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "rest":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    #@190
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@192
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@194
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    #@197
    .line 511
    move-object/from16 v0, p0

    #@199
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@19c
    .line 512
    const/4 v12, 0x0

    #@19d
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1a0
    .line 513
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@1a3
    move-result-object v12

    #@1a4
    const v13, 0x60013

    #@1a7
    .line 514
    const/4 v14, 0x0

    #@1a8
    .line 513
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1ab
    goto/16 :goto_0

    #@1ad
    .line 518
    :pswitch_8
    move-object/from16 v0, p0

    #@1af
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1b1
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1b3
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    #@1b6
    .line 519
    move-object/from16 v0, p0

    #@1b8
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@1bb
    .line 520
    const/4 v12, 0x0

    #@1bc
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1bf
    .line 522
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@1c2
    move-result-object v12

    #@1c3
    const v13, 0x60013

    #@1c6
    .line 523
    const/4 v14, 0x0

    #@1c7
    .line 522
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1ca
    goto/16 :goto_0

    #@1cc
    .line 529
    :pswitch_9
    :try_start_0
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1cf
    move-result-object v12

    #@1d0
    const/4 v13, 0x4

    #@1d1
    aget-object v13, p3, v13

    #@1d3
    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1d6
    move-result-object v13

    #@1d7
    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    #@1da
    .line 530
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@1dd
    move-result-object v12

    #@1de
    .line 531
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1e1
    move-result-object v13

    #@1e2
    .line 530
    const v14, 0x60014

    #@1e5
    .line 531
    const/4 v15, 0x0

    #@1e6
    .line 530
    invoke-virtual {v12, v14, v15, v1, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e9
    .line 536
    :goto_2
    move-object/from16 v0, p0

    #@1eb
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1ed
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1ef
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    #@1f2
    .line 537
    move-object/from16 v0, p0

    #@1f4
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@1f7
    .line 538
    const/4 v12, 0x0

    #@1f8
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1fb
    goto/16 :goto_0

    #@1fd
    .line 532
    :catch_0
    move-exception v3

    #@1fe
    .line 533
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@201
    move-result-object v12

    #@202
    const v13, 0x60013

    #@205
    .line 534
    const/4 v14, 0x0

    #@206
    .line 533
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@209
    goto :goto_2

    #@20a
    .line 430
    :pswitch_data_0
    .packed-switch 0x25a
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    #@0
    .prologue
    .line 265
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@7
    .line 266
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@e
    .line 267
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@10
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@12
    invoke-static {v0}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    #@19
    .line 264
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .locals 2
    .param p1, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    #@0
    .prologue
    .line 251
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0xa

    #@a
    if-lt v0, v1, :cond_0

    #@c
    .line 253
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 255
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;
    .param p4, "what"    # I

    #@0
    .prologue
    .line 259
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@b
    .line 260
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@e
    move-result-object v0

    #@f
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@16
    .line 261
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@18
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1a
    invoke-static {v0}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@21
    .line 258
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->-wrap17(Lcom/android/server/NsdService;Z)V

    #@8
    .line 238
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@a
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@c
    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@13
    move-result v0

    #@14
    if-lez v0, :cond_0

    #@16
    .line 239
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@18
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1a
    invoke-static {v0}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;)Z

    #@1d
    .line 236
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@4
    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_0

    #@e
    .line 246
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@10
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@12
    invoke-static {v0}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;)Z

    #@15
    .line 244
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const v12, 0x6000a

    #@3
    const v11, 0x60007

    #@6
    const v10, 0x60003

    #@9
    const/4 v9, 0x4

    #@a
    const/4 v8, 0x0

    #@b
    .line 274
    const/4 v4, 0x1

    #@c
    .line 276
    .local v4, "result":Z
    iget v6, p1, Landroid/os/Message;->what:I

    #@e
    sparse-switch v6, :sswitch_data_0

    #@11
    .line 402
    const/4 v4, 0x0

    #@12
    .line 405
    :cond_0
    :goto_0
    return v4

    #@13
    .line 279
    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@15
    if-nez v6, :cond_1

    #@17
    .line 280
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@19
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1b
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_1

    #@25
    .line 281
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@27
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@29
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;)Z

    #@2c
    .line 283
    :cond_1
    const/4 v4, 0x0

    #@2d
    .line 284
    goto :goto_0

    #@2e
    .line 286
    :sswitch_1
    const/4 v4, 0x0

    #@2f
    .line 287
    goto :goto_0

    #@30
    .line 290
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@32
    iget-object v7, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@34
    invoke-static {v7}, Lcom/android/server/NsdService$NsdStateMachine;->-get0(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    #@37
    move-result-object v7

    #@38
    invoke-static {v6, v7}, Lcom/android/server/NsdService$NsdStateMachine;->-wrap0(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    #@3b
    goto :goto_0

    #@3c
    .line 294
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3e
    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    #@40
    .line 295
    .local v5, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@42
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@44
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@47
    move-result-object v6

    #@48
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@4a
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@50
    .line 297
    .local v0, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_2

    #@56
    .line 298
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@58
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@5a
    invoke-static {v6, p1, v10, v9}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@5d
    goto :goto_0

    #@5e
    .line 303
    :cond_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@60
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@62
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@65
    move-result v3

    #@66
    .line 304
    .local v3, "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@68
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@6a
    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-static {v6, v3, v7}, Lcom/android/server/NsdService;->-wrap0(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_3

    #@74
    .line 309
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@76
    iget v7, p1, Landroid/os/Message;->what:I

    #@78
    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@7b
    .line 310
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@7d
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@7f
    const v7, 0x60002

    #@82
    invoke-static {v6, p1, v7, v5}, Lcom/android/server/NsdService;->-wrap16(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    #@85
    goto :goto_0

    #@86
    .line 312
    :cond_3
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@88
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@8a
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    #@8d
    .line 313
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@8f
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@91
    invoke-static {v6, p1, v10, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@94
    goto/16 :goto_0

    #@96
    .line 319
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@98
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@9a
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@9d
    move-result-object v6

    #@9e
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@a0
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a3
    move-result-object v0

    #@a4
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@a6
    .line 322
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_0
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@a9
    move-result-object v6

    #@aa
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@ac
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v6

    #@b0
    check-cast v6, Ljava/lang/Integer;

    #@b2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b5
    move-result v3

    #@b6
    .line 328
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@b8
    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@bb
    .line 329
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@bd
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@bf
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    #@c2
    move-result v6

    #@c3
    if-eqz v6, :cond_4

    #@c5
    .line 330
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@c7
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@c9
    const v7, 0x60008

    #@cc
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->-wrap14(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 323
    .end local v3    # "id":I
    :catch_0
    move-exception v1

    #@d2
    .line 324
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@d4
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@d6
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 332
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@dd
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@df
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@e2
    goto/16 :goto_0

    #@e4
    .line 338
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@e6
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@e8
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@eb
    move-result-object v6

    #@ec
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@ee
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    move-result-object v0

    #@f2
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@f4
    .line 339
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    #@f7
    move-result v6

    #@f8
    if-eqz v6, :cond_5

    #@fa
    .line 340
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@fc
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@fe
    invoke-static {v6, p1, v12, v9}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@101
    goto/16 :goto_0

    #@103
    .line 345
    :cond_5
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@105
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@107
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@10a
    move-result v3

    #@10b
    .line 346
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@10d
    iget-object v7, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@10f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@111
    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    #@113
    invoke-static {v7, v3, v6}, Lcom/android/server/NsdService;->-wrap3(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    #@116
    move-result v6

    #@117
    if-eqz v6, :cond_6

    #@119
    .line 348
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@11b
    iget v7, p1, Landroid/os/Message;->what:I

    #@11d
    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@120
    goto/16 :goto_0

    #@122
    .line 351
    :cond_6
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@124
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@126
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    #@129
    .line 352
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@12b
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@12d
    invoke-static {v6, p1, v12, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@130
    goto/16 :goto_0

    #@132
    .line 358
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@134
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@136
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@139
    move-result-object v6

    #@13a
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@13c
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13f
    move-result-object v0

    #@140
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@142
    .line 360
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@145
    move-result-object v6

    #@146
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@148
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14b
    move-result-object v6

    #@14c
    check-cast v6, Ljava/lang/Integer;

    #@14e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    #@151
    move-result v3

    #@152
    .line 366
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@154
    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@157
    .line 367
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@159
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@15b
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    #@15e
    move-result v6

    #@15f
    if-eqz v6, :cond_7

    #@161
    .line 368
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@163
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@165
    const v7, 0x6000e

    #@168
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->-wrap14(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    #@16b
    goto/16 :goto_0

    #@16d
    .line 361
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    #@16e
    .line 362
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@170
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@172
    const v7, 0x6000d

    #@175
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@178
    goto/16 :goto_0

    #@17a
    .line 370
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_7
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@17c
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@17e
    const v7, 0x6000d

    #@181
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@184
    goto/16 :goto_0

    #@186
    .line 376
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@188
    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    #@18a
    .line 377
    .restart local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@18c
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@18e
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@191
    move-result-object v6

    #@192
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@194
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@197
    move-result-object v0

    #@198
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@19a
    .line 380
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@19d
    move-result-object v6

    #@19e
    if-eqz v6, :cond_8

    #@1a0
    .line 381
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1a2
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1a4
    const v7, 0x60013

    #@1a7
    .line 382
    const/4 v8, 0x3

    #@1a8
    .line 381
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@1ab
    goto/16 :goto_0

    #@1ad
    .line 386
    :cond_8
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1af
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1b1
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@1b4
    move-result v3

    #@1b5
    .line 387
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1b7
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1b9
    invoke-static {v6, v3, v5}, Lcom/android/server/NsdService;->-wrap4(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    #@1bc
    move-result v6

    #@1bd
    if-eqz v6, :cond_9

    #@1bf
    .line 388
    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    #@1c1
    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    #@1c4
    invoke-static {v0, v6}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1c7
    .line 389
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@1c9
    iget v7, p1, Landroid/os/Message;->what:I

    #@1cb
    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 391
    :cond_9
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1d2
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1d4
    const v7, 0x60013

    #@1d7
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@1da
    goto/16 :goto_0

    #@1dc
    .line 396
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1de
    check-cast v2, Lcom/android/server/NsdService$NativeEvent;

    #@1e0
    .line 397
    .local v2, "event":Lcom/android/server/NsdService$NativeEvent;
    iget v6, v2, Lcom/android/server/NsdService$NativeEvent;->code:I

    #@1e2
    iget-object v7, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    #@1e4
    iget-object v8, v2, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    #@1e6
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    #@1e9
    move-result v6

    #@1ea
    if-nez v6, :cond_0

    #@1ec
    .line 398
    const/4 v4, 0x0

    #@1ed
    goto/16 :goto_0

    #@1ef
    .line 276
    nop

    #@1f0
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x60001 -> :sswitch_3
        0x60006 -> :sswitch_4
        0x60009 -> :sswitch_5
        0x6000c -> :sswitch_6
        0x60012 -> :sswitch_7
        0x60019 -> :sswitch_2
        0x6001a -> :sswitch_8
    .end sparse-switch
.end method
