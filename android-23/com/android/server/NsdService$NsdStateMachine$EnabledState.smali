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
    .line 236
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
    .line 411
    const/4 v4, 0x1

    #@1
    .line 413
    .local v4, "handled":Z
    const/4 v12, 0x1

    #@2
    aget-object v12, p3, v12

    #@4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v5

    #@8
    .line 414
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
    .line 415
    .local v2, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    if-nez v2, :cond_0

    #@1a
    .line 416
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
    .line 417
    const/4 v4, 0x0

    #@35
    .line 418
    return v4

    #@36
    .line 422
    :cond_0
    invoke-static {v2, v5}, Lcom/android/server/NsdService$ClientInfo;->-wrap0(Lcom/android/server/NsdService$ClientInfo;I)I

    #@39
    move-result v1

    #@3a
    .line 423
    .local v1, "clientId":I
    if-gez v1, :cond_1

    #@3c
    .line 427
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
    .line 428
    const/4 v4, 0x0

    #@57
    .line 429
    return v4

    #@58
    .line 432
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@5b
    .line 542
    const/4 v4, 0x0

    #@5c
    .line 545
    :goto_0
    :pswitch_0
    return v4

    #@5d
    .line 435
    :pswitch_1
    const-string/jumbo v12, "NsdService"

    #@60
    new-instance v13, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v14, "SERVICE_FOUND Raw: "

    #@68
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v13

    #@6c
    move-object/from16 v0, p2

    #@6e
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v13

    #@72
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v13

    #@76
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 436
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    #@7b
    const/4 v12, 0x2

    #@7c
    aget-object v12, p3, v12

    #@7e
    const/4 v13, 0x3

    #@7f
    aget-object v13, p3, v13

    #@81
    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    .line 437
    .local v10, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@87
    move-result-object v12

    #@88
    const v13, 0x60004

    #@8b
    const/4 v14, 0x0

    #@8c
    invoke-virtual {v12, v13, v14, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@8f
    goto :goto_0

    #@90
    .line 442
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_2
    const-string/jumbo v12, "NsdService"

    #@93
    new-instance v13, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v14, "SERVICE_LOST Raw: "

    #@9b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v13

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v13

    #@a5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v13

    #@a9
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 443
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    #@ae
    const/4 v12, 0x2

    #@af
    aget-object v12, p3, v12

    #@b1
    const/4 v13, 0x3

    #@b2
    aget-object v13, p3, v13

    #@b4
    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b7
    .line 444
    .restart local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@ba
    move-result-object v12

    #@bb
    const v13, 0x60005

    #@be
    const/4 v14, 0x0

    #@bf
    invoke-virtual {v12, v13, v14, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@c2
    goto :goto_0

    #@c3
    .line 449
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_3
    const-string/jumbo v12, "NsdService"

    #@c6
    new-instance v13, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v14, "SERVICE_DISC_FAILED Raw: "

    #@ce
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v13

    #@d2
    move-object/from16 v0, p2

    #@d4
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v13

    #@d8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v13

    #@dc
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 450
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@e2
    move-result-object v12

    #@e3
    const v13, 0x60003

    #@e6
    .line 451
    const/4 v14, 0x0

    #@e7
    .line 450
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 455
    :pswitch_4
    const-string/jumbo v12, "NsdService"

    #@ef
    new-instance v13, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v14, "SERVICE_REGISTERED Raw: "

    #@f7
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v13

    #@fb
    move-object/from16 v0, p2

    #@fd
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v13

    #@101
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v13

    #@105
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    .line 456
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    #@10a
    const/4 v12, 0x2

    #@10b
    aget-object v12, p3, v12

    #@10d
    const/4 v13, 0x0

    #@10e
    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@111
    .line 457
    .restart local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@114
    move-result-object v12

    #@115
    const v13, 0x6000b

    #@118
    invoke-virtual {v12, v13, v5, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@11b
    goto/16 :goto_0

    #@11d
    .line 462
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_5
    const-string/jumbo v12, "NsdService"

    #@120
    new-instance v13, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    const-string/jumbo v14, "SERVICE_REGISTER_FAILED Raw: "

    #@128
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v13

    #@12c
    move-object/from16 v0, p2

    #@12e
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v13

    #@132
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v13

    #@136
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@139
    .line 463
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@13c
    move-result-object v12

    #@13d
    const v13, 0x6000a

    #@140
    .line 464
    const/4 v14, 0x0

    #@141
    .line 463
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@144
    goto/16 :goto_0

    #@146
    .line 474
    :pswitch_6
    const-string/jumbo v12, "NsdService"

    #@149
    new-instance v13, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    const-string/jumbo v14, "SERVICE_RESOLVED Raw: "

    #@151
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v13

    #@155
    move-object/from16 v0, p2

    #@157
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v13

    #@15b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v13

    #@15f
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@162
    .line 475
    const/4 v7, 0x0

    #@163
    .line 476
    .local v7, "index":I
    :goto_1
    const/4 v12, 0x2

    #@164
    aget-object v12, p3, v12

    #@166
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@169
    move-result v12

    #@16a
    if-ge v7, v12, :cond_3

    #@16c
    const/4 v12, 0x2

    #@16d
    aget-object v12, p3, v12

    #@16f
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    #@172
    move-result v12

    #@173
    const/16 v13, 0x2e

    #@175
    if-eq v12, v13, :cond_3

    #@177
    .line 477
    const/4 v12, 0x2

    #@178
    aget-object v12, p3, v12

    #@17a
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    #@17d
    move-result v12

    #@17e
    const/16 v13, 0x5c

    #@180
    if-ne v12, v13, :cond_2

    #@182
    .line 478
    add-int/lit8 v7, v7, 0x1

    #@184
    .line 480
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@186
    goto :goto_1

    #@187
    .line 482
    :cond_3
    const/4 v12, 0x2

    #@188
    aget-object v12, p3, v12

    #@18a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@18d
    move-result v12

    #@18e
    if-lt v7, v12, :cond_4

    #@190
    .line 483
    const-string/jumbo v12, "NsdService"

    #@193
    new-instance v13, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v14, "Invalid service found "

    #@19b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v13

    #@19f
    move-object/from16 v0, p2

    #@1a1
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v13

    #@1a5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v13

    #@1a9
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 486
    :cond_4
    const/4 v12, 0x2

    #@1af
    aget-object v12, p3, v12

    #@1b1
    const/4 v13, 0x0

    #@1b2
    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b5
    move-result-object v8

    #@1b6
    .line 487
    .local v8, "name":Ljava/lang/String;
    const/4 v12, 0x2

    #@1b7
    aget-object v12, p3, v12

    #@1b9
    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1bc
    move-result-object v9

    #@1bd
    .line 488
    .local v9, "rest":Ljava/lang/String;
    const-string/jumbo v12, ".local."

    #@1c0
    const-string/jumbo v13, ""

    #@1c3
    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1c6
    move-result-object v11

    #@1c7
    .line 490
    .local v11, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c9
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1cb
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1cd
    invoke-static {v12, v8}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    #@1d0
    move-result-object v8

    #@1d1
    .line 492
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1d4
    move-result-object v12

    #@1d5
    invoke-virtual {v12, v8}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    #@1d8
    .line 493
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1db
    move-result-object v12

    #@1dc
    invoke-virtual {v12, v11}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    #@1df
    .line 494
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@1e2
    move-result-object v12

    #@1e3
    const/4 v13, 0x4

    #@1e4
    aget-object v13, p3, v13

    #@1e6
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1e9
    move-result v13

    #@1ea
    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    #@1ed
    .line 496
    move-object/from16 v0, p0

    #@1ef
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1f1
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1f3
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    #@1f6
    .line 497
    move-object/from16 v0, p0

    #@1f8
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@1fb
    .line 499
    move-object/from16 v0, p0

    #@1fd
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1ff
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@201
    invoke-static {v12}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@204
    move-result v6

    #@205
    .line 500
    .local v6, "id2":I
    move-object/from16 v0, p0

    #@207
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@209
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@20b
    const/4 v13, 0x3

    #@20c
    aget-object v13, p3, v13

    #@20e
    invoke-static {v12, v6, v13}, Lcom/android/server/NsdService;->-wrap1(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    #@211
    move-result v12

    #@212
    if-eqz v12, :cond_5

    #@214
    .line 501
    const v12, 0x60012

    #@217
    move-object/from16 v0, p0

    #@219
    invoke-direct {v0, v1, v6, v2, v12}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@21c
    goto/16 :goto_0

    #@21e
    .line 503
    :cond_5
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@221
    move-result-object v12

    #@222
    const v13, 0x60013

    #@225
    .line 504
    const/4 v14, 0x0

    #@226
    .line 503
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@229
    .line 505
    const/4 v12, 0x0

    #@22a
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@22d
    goto/16 :goto_0

    #@22f
    .line 510
    .end local v6    # "id2":I
    .end local v7    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "rest":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v12, "NsdService"

    #@232
    new-instance v13, Ljava/lang/StringBuilder;

    #@234
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@237
    const-string/jumbo v14, "SERVICE_RESOLVE_FAILED Raw: "

    #@23a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v13

    #@23e
    move-object/from16 v0, p2

    #@240
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v13

    #@244
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@247
    move-result-object v13

    #@248
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24b
    .line 511
    move-object/from16 v0, p0

    #@24d
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@24f
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@251
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    #@254
    .line 512
    move-object/from16 v0, p0

    #@256
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@259
    .line 513
    const/4 v12, 0x0

    #@25a
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@25d
    .line 514
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@260
    move-result-object v12

    #@261
    const v13, 0x60013

    #@264
    .line 515
    const/4 v14, 0x0

    #@265
    .line 514
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@268
    goto/16 :goto_0

    #@26a
    .line 519
    :pswitch_8
    move-object/from16 v0, p0

    #@26c
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@26e
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@270
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    #@273
    .line 520
    move-object/from16 v0, p0

    #@275
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@278
    .line 521
    const/4 v12, 0x0

    #@279
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@27c
    .line 522
    const-string/jumbo v12, "NsdService"

    #@27f
    new-instance v13, Ljava/lang/StringBuilder;

    #@281
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@284
    const-string/jumbo v14, "SERVICE_RESOLVE_FAILED Raw: "

    #@287
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v13

    #@28b
    move-object/from16 v0, p2

    #@28d
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v13

    #@291
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@294
    move-result-object v13

    #@295
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@298
    .line 523
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@29b
    move-result-object v12

    #@29c
    const v13, 0x60013

    #@29f
    .line 524
    const/4 v14, 0x0

    #@2a0
    .line 523
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@2a3
    goto/16 :goto_0

    #@2a5
    .line 528
    :pswitch_9
    const-string/jumbo v12, "NsdService"

    #@2a8
    new-instance v13, Ljava/lang/StringBuilder;

    #@2aa
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2ad
    const-string/jumbo v14, "SERVICE_GET_ADDR_SUCCESS Raw: "

    #@2b0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v13

    #@2b4
    move-object/from16 v0, p2

    #@2b6
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v13

    #@2ba
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bd
    move-result-object v13

    #@2be
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c1
    .line 530
    :try_start_0
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@2c4
    move-result-object v12

    #@2c5
    const/4 v13, 0x4

    #@2c6
    aget-object v13, p3, v13

    #@2c8
    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@2cb
    move-result-object v13

    #@2cc
    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    #@2cf
    .line 531
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@2d2
    move-result-object v12

    #@2d3
    .line 532
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@2d6
    move-result-object v13

    #@2d7
    .line 531
    const v14, 0x60014

    #@2da
    .line 532
    const/4 v15, 0x0

    #@2db
    .line 531
    invoke-virtual {v12, v14, v15, v1, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@2de
    .line 537
    :goto_2
    move-object/from16 v0, p0

    #@2e0
    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2e2
    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@2e4
    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    #@2e7
    .line 538
    move-object/from16 v0, p0

    #@2e9
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@2ec
    .line 539
    const/4 v12, 0x0

    #@2ed
    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@2f0
    goto/16 :goto_0

    #@2f2
    .line 533
    :catch_0
    move-exception v3

    #@2f3
    .line 534
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@2f6
    move-result-object v12

    #@2f7
    const v13, 0x60013

    #@2fa
    .line 535
    const/4 v14, 0x0

    #@2fb
    .line 534
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@2fe
    goto :goto_2

    #@2ff
    .line 432
    nop

    #@300
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
    .line 267
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@7
    .line 268
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@e
    .line 269
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
    .line 266
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .locals 3
    .param p1, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    #@0
    .prologue
    .line 253
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
    .line 254
    const-string/jumbo v0, "NsdService"

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Exceeded max outstanding requests "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 255
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 257
    :cond_0
    const/4 v0, 0x0

    #@29
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
    .line 261
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
    .line 262
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
    .line 263
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
    .line 260
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->-wrap17(Lcom/android/server/NsdService;Z)V

    #@8
    .line 240
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
    .line 241
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@18
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1a
    invoke-static {v0}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;)Z

    #@1d
    .line 238
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 247
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
    .line 248
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@10
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@12
    invoke-static {v0}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;)Z

    #@15
    .line 246
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
    .line 276
    const/4 v4, 0x1

    #@c
    .line 278
    .local v4, "result":Z
    iget v6, p1, Landroid/os/Message;->what:I

    #@e
    sparse-switch v6, :sswitch_data_0

    #@11
    .line 404
    const/4 v4, 0x0

    #@12
    .line 407
    :cond_0
    :goto_0
    return v4

    #@13
    .line 281
    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@15
    if-nez v6, :cond_1

    #@17
    .line 282
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
    .line 283
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@27
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@29
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;)Z

    #@2c
    .line 285
    :cond_1
    const/4 v4, 0x0

    #@2d
    .line 286
    goto :goto_0

    #@2e
    .line 288
    :sswitch_1
    const/4 v4, 0x0

    #@2f
    .line 289
    goto :goto_0

    #@30
    .line 292
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
    .line 295
    :sswitch_3
    const-string/jumbo v6, "NsdService"

    #@3f
    const-string/jumbo v7, "Discover services"

    #@42
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 296
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47
    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    #@49
    .line 297
    .local v5, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@4b
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@4d
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@50
    move-result-object v6

    #@51
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@53
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@59
    .line 299
    .local v0, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    #@5c
    move-result v6

    #@5d
    if-eqz v6, :cond_2

    #@5f
    .line 300
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@61
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@63
    invoke-static {v6, p1, v10, v9}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@66
    goto :goto_0

    #@67
    .line 305
    :cond_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@69
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@6b
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@6e
    move-result v3

    #@6f
    .line 306
    .local v3, "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@71
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@73
    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    invoke-static {v6, v3, v7}, Lcom/android/server/NsdService;->-wrap0(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    #@7a
    move-result v6

    #@7b
    if-eqz v6, :cond_3

    #@7d
    .line 308
    const-string/jumbo v6, "NsdService"

    #@80
    new-instance v7, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v8, "Discover "

    #@88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@8e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    const-string/jumbo v8, " "

    #@95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v7

    #@9d
    .line 309
    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@a0
    move-result-object v8

    #@a1
    .line 308
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v7

    #@a5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v7

    #@a9
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 311
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@ae
    iget v7, p1, Landroid/os/Message;->what:I

    #@b0
    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@b3
    .line 312
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@b5
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@b7
    const v7, 0x60002

    #@ba
    invoke-static {v6, p1, v7, v5}, Lcom/android/server/NsdService;->-wrap16(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    #@bd
    goto/16 :goto_0

    #@bf
    .line 314
    :cond_3
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@c1
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@c3
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    #@c6
    .line 315
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@c8
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@ca
    invoke-static {v6, p1, v10, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 320
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_4
    const-string/jumbo v6, "NsdService"

    #@d2
    const-string/jumbo v7, "Stop service discovery"

    #@d5
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    .line 321
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@da
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@dc
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@df
    move-result-object v6

    #@e0
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@e2
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e5
    move-result-object v0

    #@e6
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@e8
    .line 324
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_0
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@eb
    move-result-object v6

    #@ec
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@ee
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f1
    move-result-object v6

    #@f2
    check-cast v6, Ljava/lang/Integer;

    #@f4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f7
    move-result v3

    #@f8
    .line 330
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@fa
    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@fd
    .line 331
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@ff
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@101
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    #@104
    move-result v6

    #@105
    if-eqz v6, :cond_4

    #@107
    .line 332
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@109
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@10b
    const v7, 0x60008

    #@10e
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->-wrap14(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    #@111
    goto/16 :goto_0

    #@113
    .line 325
    .end local v3    # "id":I
    :catch_0
    move-exception v1

    #@114
    .line 326
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@116
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@118
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@11b
    goto/16 :goto_0

    #@11d
    .line 334
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@11f
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@121
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@124
    goto/16 :goto_0

    #@126
    .line 339
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_5
    const-string/jumbo v6, "NsdService"

    #@129
    const-string/jumbo v7, "Register service"

    #@12c
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12f
    .line 340
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@131
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@133
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@136
    move-result-object v6

    #@137
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@139
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13c
    move-result-object v0

    #@13d
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@13f
    .line 341
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    #@142
    move-result v6

    #@143
    if-eqz v6, :cond_5

    #@145
    .line 342
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@147
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@149
    invoke-static {v6, p1, v12, v9}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@14c
    goto/16 :goto_0

    #@14e
    .line 347
    :cond_5
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@150
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@152
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@155
    move-result v3

    #@156
    .line 348
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@158
    iget-object v7, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@15a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15c
    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    #@15e
    invoke-static {v7, v3, v6}, Lcom/android/server/NsdService;->-wrap3(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    #@161
    move-result v6

    #@162
    if-eqz v6, :cond_6

    #@164
    .line 349
    const-string/jumbo v6, "NsdService"

    #@167
    new-instance v7, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    const-string/jumbo v8, "Register "

    #@16f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v7

    #@173
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@178
    move-result-object v7

    #@179
    const-string/jumbo v8, " "

    #@17c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v7

    #@180
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@183
    move-result-object v7

    #@184
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@187
    move-result-object v7

    #@188
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18b
    .line 350
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@18d
    iget v7, p1, Landroid/os/Message;->what:I

    #@18f
    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@192
    goto/16 :goto_0

    #@194
    .line 353
    :cond_6
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@196
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@198
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    #@19b
    .line 354
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@19d
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@19f
    invoke-static {v6, p1, v12, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@1a2
    goto/16 :goto_0

    #@1a4
    .line 359
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_6
    const-string/jumbo v6, "NsdService"

    #@1a7
    const-string/jumbo v7, "unregister service"

    #@1aa
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ad
    .line 360
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1af
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1b1
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@1b4
    move-result-object v6

    #@1b5
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1b7
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ba
    move-result-object v0

    #@1bb
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@1bd
    .line 362
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    #@1c0
    move-result-object v6

    #@1c1
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@1c3
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c6
    move-result-object v6

    #@1c7
    check-cast v6, Ljava/lang/Integer;

    #@1c9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    #@1cc
    move-result v3

    #@1cd
    .line 368
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@1cf
    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    #@1d2
    .line 369
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1d4
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1d6
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    #@1d9
    move-result v6

    #@1da
    if-eqz v6, :cond_7

    #@1dc
    .line 370
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1de
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1e0
    const v7, 0x6000e

    #@1e3
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->-wrap14(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    #@1e6
    goto/16 :goto_0

    #@1e8
    .line 363
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    #@1e9
    .line 364
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1eb
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1ed
    const v7, 0x6000d

    #@1f0
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 372
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_7
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1f7
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1f9
    const v7, 0x6000d

    #@1fc
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@1ff
    goto/16 :goto_0

    #@201
    .line 377
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_7
    const-string/jumbo v6, "NsdService"

    #@204
    const-string/jumbo v7, "Resolve service"

    #@207
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20a
    .line 378
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20c
    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    #@20e
    .line 379
    .restart local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@210
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@212
    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@215
    move-result-object v6

    #@216
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@218
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21b
    move-result-object v0

    #@21c
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@21e
    .line 382
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@221
    move-result-object v6

    #@222
    if-eqz v6, :cond_8

    #@224
    .line 383
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@226
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@228
    const v7, 0x60013

    #@22b
    .line 384
    const/4 v8, 0x3

    #@22c
    .line 383
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@22f
    goto/16 :goto_0

    #@231
    .line 388
    :cond_8
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@233
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@235
    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    #@238
    move-result v3

    #@239
    .line 389
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@23b
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@23d
    invoke-static {v6, v3, v5}, Lcom/android/server/NsdService;->-wrap4(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    #@240
    move-result v6

    #@241
    if-eqz v6, :cond_9

    #@243
    .line 390
    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    #@245
    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    #@248
    invoke-static {v0, v6}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    #@24b
    .line 391
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@24d
    iget v7, p1, Landroid/os/Message;->what:I

    #@24f
    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    #@252
    goto/16 :goto_0

    #@254
    .line 393
    :cond_9
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@256
    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@258
    const v7, 0x60013

    #@25b
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@25e
    goto/16 :goto_0

    #@260
    .line 398
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@262
    check-cast v2, Lcom/android/server/NsdService$NativeEvent;

    #@264
    .line 399
    .local v2, "event":Lcom/android/server/NsdService$NativeEvent;
    iget v6, v2, Lcom/android/server/NsdService$NativeEvent;->code:I

    #@266
    iget-object v7, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    #@268
    iget-object v8, v2, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    #@26a
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    #@26d
    move-result v6

    #@26e
    if-nez v6, :cond_0

    #@270
    .line 400
    const/4 v4, 0x0

    #@271
    goto/16 :goto_0

    #@273
    .line 278
    nop

    #@274
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
