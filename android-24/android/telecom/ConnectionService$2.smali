.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 275
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 278
    move-object/from16 v0, p1

    #@2
    iget v1, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 277
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 280
    :pswitch_1
    move-object/from16 v0, p0

    #@a
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@c
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@f
    move-result-object v2

    #@10
    move-object/from16 v0, p1

    #@12
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@16
    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@19
    .line 281
    move-object/from16 v0, p0

    #@1b
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1d
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-wrap12(Landroid/telecom/ConnectionService;)V

    #@20
    goto :goto_0

    #@21
    .line 284
    :pswitch_2
    move-object/from16 v0, p0

    #@23
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@25
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@28
    move-result-object v2

    #@29
    move-object/from16 v0, p1

    #@2b
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@2f
    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@32
    goto :goto_0

    #@33
    .line 287
    :pswitch_3
    move-object/from16 v0, p1

    #@35
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@39
    .line 290
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@3b
    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    #@3d
    .line 291
    .local v3, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@3f
    check-cast v4, Ljava/lang/String;

    #@41
    .line 292
    .local v4, "id":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@43
    check-cast v5, Landroid/telecom/ConnectionRequest;

    #@45
    .line 293
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@47
    const/4 v2, 0x1

    #@48
    if-ne v1, v2, :cond_0

    #@4a
    const/4 v6, 0x1

    #@4b
    .line 294
    .local v6, "isIncoming":Z
    :goto_1
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@4d
    const/4 v2, 0x1

    #@4e
    if-ne v1, v2, :cond_1

    #@50
    const/4 v7, 0x1

    #@51
    .line 295
    .local v7, "isUnknown":Z
    :goto_2
    move-object/from16 v0, p0

    #@53
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@55
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_2

    #@5b
    .line 296
    const-string/jumbo v1, "Enqueueing pre-init request %s"

    #@5e
    const/4 v2, 0x1

    #@5f
    new-array v2, v2, [Ljava/lang/Object;

    #@61
    const/16 v17, 0x0

    #@63
    aput-object v4, v2, v17

    #@65
    move-object/from16 v0, p0

    #@67
    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6a
    .line 297
    move-object/from16 v0, p0

    #@6c
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@6e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    #@71
    move-result-object v17

    #@72
    new-instance v1, Landroid/telecom/ConnectionService$2$1;

    #@74
    move-object/from16 v2, p0

    #@76
    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    #@79
    move-object/from16 v0, v17

    #@7b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7e
    .line 317
    :goto_3
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@81
    goto :goto_0

    #@82
    .line 293
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :cond_0
    const/4 v6, 0x0

    #@83
    .restart local v6    # "isIncoming":Z
    goto :goto_1

    #@84
    .line 294
    :cond_1
    const/4 v7, 0x0

    #@85
    .restart local v7    # "isUnknown":Z
    goto :goto_2

    #@86
    .line 309
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@88
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@8a
    invoke-static/range {v2 .. v7}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    goto :goto_3

    #@8e
    .line 316
    .end local v3    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :catchall_0
    move-exception v1

    #@8f
    .line 317
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@92
    .line 316
    throw v1

    #@93
    .line 322
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    move-object/from16 v0, p0

    #@95
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@97
    move-object/from16 v0, p1

    #@99
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9b
    check-cast v1, Ljava/lang/String;

    #@9d
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 325
    :pswitch_5
    move-object/from16 v0, p0

    #@a4
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@a6
    move-object/from16 v0, p1

    #@a8
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@aa
    check-cast v1, Ljava/lang/String;

    #@ac
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@af
    goto/16 :goto_0

    #@b1
    .line 328
    :pswitch_6
    move-object/from16 v0, p1

    #@b3
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b5
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@b7
    .line 330
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b9
    check-cast v10, Ljava/lang/String;

    #@bb
    .line 331
    .local v10, "callId":Ljava/lang/String;
    iget v0, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@bd
    move/from16 v16, v0

    #@bf
    .line 332
    .local v16, "videoState":I
    move-object/from16 v0, p0

    #@c1
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@c3
    move/from16 v0, v16

    #@c5
    invoke-static {v1, v10, v0}, Landroid/telecom/ConnectionService;->-wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c8
    .line 334
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@cb
    goto/16 :goto_0

    #@cd
    .line 333
    .end local v10    # "callId":Ljava/lang/String;
    .end local v16    # "videoState":I
    :catchall_1
    move-exception v1

    #@ce
    .line 334
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@d1
    .line 333
    throw v1

    #@d2
    .line 339
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    move-object/from16 v0, p0

    #@d4
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@d6
    move-object/from16 v0, p1

    #@d8
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@da
    check-cast v1, Ljava/lang/String;

    #@dc
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@df
    goto/16 :goto_0

    #@e1
    .line 342
    :pswitch_8
    move-object/from16 v0, p1

    #@e3
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e5
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@e7
    .line 344
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@eb
    move-object/from16 v17, v0

    #@ed
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@ef
    check-cast v1, Ljava/lang/String;

    #@f1
    iget-object v2, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@f3
    check-cast v2, Ljava/lang/String;

    #@f5
    move-object/from16 v0, v17

    #@f7
    invoke-static {v0, v1, v2}, Landroid/telecom/ConnectionService;->-wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@fa
    .line 346
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 345
    :catchall_2
    move-exception v1

    #@100
    .line 346
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@103
    .line 345
    throw v1

    #@104
    .line 351
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    move-object/from16 v0, p0

    #@106
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@108
    move-object/from16 v0, p1

    #@10a
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10c
    check-cast v1, Ljava/lang/String;

    #@10e
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@111
    goto/16 :goto_0

    #@113
    .line 354
    :pswitch_a
    move-object/from16 v0, p0

    #@115
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@117
    move-object/from16 v0, p1

    #@119
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11b
    check-cast v1, Ljava/lang/String;

    #@11d
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@120
    goto/16 :goto_0

    #@122
    .line 357
    :pswitch_b
    move-object/from16 v0, p0

    #@124
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@126
    move-object/from16 v0, p1

    #@128
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12a
    check-cast v1, Ljava/lang/String;

    #@12c
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 360
    :pswitch_c
    move-object/from16 v0, p0

    #@133
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@135
    move-object/from16 v0, p1

    #@137
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@139
    check-cast v1, Ljava/lang/String;

    #@13b
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@13e
    goto/16 :goto_0

    #@140
    .line 363
    :pswitch_d
    move-object/from16 v0, p1

    #@142
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@144
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@146
    .line 365
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@148
    check-cast v10, Ljava/lang/String;

    #@14a
    .line 366
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@14c
    check-cast v9, Landroid/telecom/CallAudioState;

    #@14e
    .line 367
    .local v9, "audioState":Landroid/telecom/CallAudioState;
    move-object/from16 v0, p0

    #@150
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@152
    new-instance v2, Landroid/telecom/CallAudioState;

    #@154
    invoke-direct {v2, v9}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    #@157
    invoke-static {v1, v10, v2}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@15a
    .line 369
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@15d
    goto/16 :goto_0

    #@15f
    .line 368
    .end local v9    # "audioState":Landroid/telecom/CallAudioState;
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_3
    move-exception v1

    #@160
    .line 369
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@163
    .line 368
    throw v1

    #@164
    .line 374
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    move-object/from16 v0, p0

    #@166
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@168
    move-object/from16 v0, p1

    #@16a
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16c
    check-cast v1, Ljava/lang/String;

    #@16e
    move-object/from16 v0, p1

    #@170
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@172
    move/from16 v17, v0

    #@174
    move/from16 v0, v17

    #@176
    int-to-char v0, v0

    #@177
    move/from16 v17, v0

    #@179
    move/from16 v0, v17

    #@17b
    invoke-static {v2, v1, v0}, Landroid/telecom/ConnectionService;->-wrap15(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    #@17e
    goto/16 :goto_0

    #@180
    .line 377
    :pswitch_f
    move-object/from16 v0, p0

    #@182
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@184
    move-object/from16 v0, p1

    #@186
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@188
    check-cast v1, Ljava/lang/String;

    #@18a
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap23(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@18d
    goto/16 :goto_0

    #@18f
    .line 380
    :pswitch_10
    move-object/from16 v0, p1

    #@191
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@193
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@195
    .line 382
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@197
    check-cast v11, Ljava/lang/String;

    #@199
    .line 383
    .local v11, "callId1":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@19b
    check-cast v12, Ljava/lang/String;

    #@19d
    .line 384
    .local v12, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@19f
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1a1
    invoke-static {v1, v11, v12}, Landroid/telecom/ConnectionService;->-wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@1a4
    .line 386
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 385
    .end local v11    # "callId1":Ljava/lang/String;
    .end local v12    # "callId2":Ljava/lang/String;
    :catchall_4
    move-exception v1

    #@1aa
    .line 386
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1ad
    .line 385
    throw v1

    #@1ae
    .line 391
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    move-object/from16 v0, p0

    #@1b0
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1b2
    move-object/from16 v0, p1

    #@1b4
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b6
    check-cast v1, Ljava/lang/String;

    #@1b8
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 394
    :pswitch_12
    move-object/from16 v0, p0

    #@1bf
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1c1
    move-object/from16 v0, p1

    #@1c3
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c5
    check-cast v1, Ljava/lang/String;

    #@1c7
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@1ca
    goto/16 :goto_0

    #@1cc
    .line 397
    :pswitch_13
    move-object/from16 v0, p0

    #@1ce
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1d0
    move-object/from16 v0, p1

    #@1d2
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d4
    check-cast v1, Ljava/lang/String;

    #@1d6
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@1d9
    goto/16 :goto_0

    #@1db
    .line 400
    :pswitch_14
    move-object/from16 v0, p1

    #@1dd
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1df
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@1e1
    .line 402
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1e3
    check-cast v10, Ljava/lang/String;

    #@1e5
    .line 403
    .restart local v10    # "callId":Ljava/lang/String;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1e7
    const/4 v2, 0x1

    #@1e8
    if-ne v1, v2, :cond_3

    #@1ea
    const/4 v15, 0x1

    #@1eb
    .line 404
    .local v15, "proceed":Z
    :goto_4
    move-object/from16 v0, p0

    #@1ed
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1ef
    invoke-static {v1, v10, v15}, Landroid/telecom/ConnectionService;->-wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    #@1f2
    .line 406
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 403
    .end local v15    # "proceed":Z
    :cond_3
    const/4 v15, 0x0

    #@1f8
    .restart local v15    # "proceed":Z
    goto :goto_4

    #@1f9
    .line 405
    .end local v10    # "callId":Ljava/lang/String;
    .end local v15    # "proceed":Z
    :catchall_5
    move-exception v1

    #@1fa
    .line 406
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1fd
    .line 405
    throw v1

    #@1fe
    .line 411
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    move-object/from16 v0, p0

    #@200
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@202
    move-object/from16 v0, p1

    #@204
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@206
    check-cast v1, Ljava/lang/String;

    #@208
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap16(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@20b
    goto/16 :goto_0

    #@20d
    .line 415
    :pswitch_16
    move-object/from16 v0, p1

    #@20f
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@211
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@213
    .line 417
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@215
    check-cast v10, Ljava/lang/String;

    #@217
    .line 418
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v13, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@219
    check-cast v13, Ljava/lang/String;

    #@21b
    .line 419
    .local v13, "event":Ljava/lang/String;
    iget-object v14, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@21d
    check-cast v14, Landroid/os/Bundle;

    #@21f
    .line 420
    .local v14, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@221
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@223
    invoke-static {v1, v10, v13, v14}, Landroid/telecom/ConnectionService;->-wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    #@226
    .line 422
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@229
    goto/16 :goto_0

    #@22b
    .line 421
    .end local v10    # "callId":Ljava/lang/String;
    .end local v13    # "event":Ljava/lang/String;
    .end local v14    # "extras":Landroid/os/Bundle;
    :catchall_6
    move-exception v1

    #@22c
    .line 422
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@22f
    .line 421
    throw v1

    #@230
    .line 427
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    move-object/from16 v0, p1

    #@232
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@234
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@236
    .line 429
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@238
    check-cast v10, Ljava/lang/String;

    #@23a
    .line 430
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v14, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@23c
    check-cast v14, Landroid/os/Bundle;

    #@23e
    .line 431
    .restart local v14    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@240
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@242
    invoke-static {v1, v10, v14}, Landroid/telecom/ConnectionService;->-wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    #@245
    .line 433
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@248
    goto/16 :goto_0

    #@24a
    .line 432
    .end local v10    # "callId":Ljava/lang/String;
    .end local v14    # "extras":Landroid/os/Bundle;
    :catchall_7
    move-exception v1

    #@24b
    .line 433
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@24e
    .line 432
    throw v1

    #@24f
    .line 278
    nop

    #@250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_12
        :pswitch_13
        :pswitch_8
        :pswitch_a
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
