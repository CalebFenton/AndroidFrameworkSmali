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
    .line 233
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 236
    move-object/from16 v0, p1

    #@2
    iget v1, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 235
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 238
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
    .line 239
    move-object/from16 v0, p0

    #@1b
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1d
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-wrap11(Landroid/telecom/ConnectionService;)V

    #@20
    goto :goto_0

    #@21
    .line 242
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
    .line 245
    :pswitch_3
    move-object/from16 v0, p1

    #@35
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@39
    .line 248
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@3b
    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    #@3d
    .line 249
    .local v3, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@3f
    check-cast v4, Ljava/lang/String;

    #@41
    .line 250
    .local v4, "id":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@43
    check-cast v5, Landroid/telecom/ConnectionRequest;

    #@45
    .line 251
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@47
    const/4 v2, 0x1

    #@48
    if-ne v1, v2, :cond_0

    #@4a
    const/4 v6, 0x1

    #@4b
    .line 252
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
    .line 253
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
    .line 254
    const-string/jumbo v1, "Enqueueing pre-init request %s"

    #@5e
    const/4 v2, 0x1

    #@5f
    new-array v2, v2, [Ljava/lang/Object;

    #@61
    const/4 v15, 0x0

    #@62
    aput-object v4, v2, v15

    #@64
    move-object/from16 v0, p0

    #@66
    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@69
    .line 255
    move-object/from16 v0, p0

    #@6b
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@6d
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    #@70
    move-result-object v15

    #@71
    new-instance v1, Landroid/telecom/ConnectionService$2$1;

    #@73
    move-object/from16 v2, p0

    #@75
    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    #@78
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    .line 275
    :goto_3
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7e
    goto :goto_0

    #@7f
    .line 251
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :cond_0
    const/4 v6, 0x0

    #@80
    .restart local v6    # "isIncoming":Z
    goto :goto_1

    #@81
    .line 252
    :cond_1
    const/4 v7, 0x0

    #@82
    .restart local v7    # "isUnknown":Z
    goto :goto_2

    #@83
    .line 267
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@85
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@87
    invoke-static/range {v2 .. v7}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8a
    goto :goto_3

    #@8b
    .line 274
    .end local v3    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :catchall_0
    move-exception v1

    #@8c
    .line 275
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@8f
    .line 274
    throw v1

    #@90
    .line 280
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    move-object/from16 v0, p0

    #@92
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@94
    move-object/from16 v0, p1

    #@96
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@98
    check-cast v1, Ljava/lang/String;

    #@9a
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@9d
    goto/16 :goto_0

    #@9f
    .line 283
    :pswitch_5
    move-object/from16 v0, p0

    #@a1
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@a3
    move-object/from16 v0, p1

    #@a5
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a7
    check-cast v1, Ljava/lang/String;

    #@a9
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@ac
    goto/16 :goto_0

    #@ae
    .line 286
    :pswitch_6
    move-object/from16 v0, p1

    #@b0
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b2
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@b4
    .line 288
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b6
    check-cast v10, Ljava/lang/String;

    #@b8
    .line 289
    .local v10, "callId":Ljava/lang/String;
    iget v14, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@ba
    .line 290
    .local v14, "videoState":I
    move-object/from16 v0, p0

    #@bc
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@be
    invoke-static {v1, v10, v14}, Landroid/telecom/ConnectionService;->-wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c1
    .line 292
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 291
    .end local v10    # "callId":Ljava/lang/String;
    .end local v14    # "videoState":I
    :catchall_1
    move-exception v1

    #@c7
    .line 292
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@ca
    .line 291
    throw v1

    #@cb
    .line 297
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    move-object/from16 v0, p0

    #@cd
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@cf
    move-object/from16 v0, p1

    #@d1
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3
    check-cast v1, Ljava/lang/String;

    #@d5
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap15(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@d8
    goto/16 :goto_0

    #@da
    .line 300
    :pswitch_8
    move-object/from16 v0, p0

    #@dc
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@de
    move-object/from16 v0, p1

    #@e0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e2
    check-cast v1, Ljava/lang/String;

    #@e4
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@e7
    goto/16 :goto_0

    #@e9
    .line 303
    :pswitch_9
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@ed
    move-object/from16 v0, p1

    #@ef
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f1
    check-cast v1, Ljava/lang/String;

    #@f3
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 306
    :pswitch_a
    move-object/from16 v0, p0

    #@fa
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@fc
    move-object/from16 v0, p1

    #@fe
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@100
    check-cast v1, Ljava/lang/String;

    #@102
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@105
    goto/16 :goto_0

    #@107
    .line 309
    :pswitch_b
    move-object/from16 v0, p1

    #@109
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10b
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@10d
    .line 311
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@10f
    check-cast v10, Ljava/lang/String;

    #@111
    .line 312
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@113
    check-cast v9, Landroid/telecom/CallAudioState;

    #@115
    .line 313
    .local v9, "audioState":Landroid/telecom/CallAudioState;
    move-object/from16 v0, p0

    #@117
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@119
    new-instance v2, Landroid/telecom/CallAudioState;

    #@11b
    invoke-direct {v2, v9}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    #@11e
    invoke-static {v1, v10, v2}, Landroid/telecom/ConnectionService;->-wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@121
    .line 315
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@124
    goto/16 :goto_0

    #@126
    .line 314
    .end local v9    # "audioState":Landroid/telecom/CallAudioState;
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_2
    move-exception v1

    #@127
    .line 315
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@12a
    .line 314
    throw v1

    #@12b
    .line 320
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    move-object/from16 v0, p0

    #@12d
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@12f
    move-object/from16 v0, p1

    #@131
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@133
    check-cast v1, Ljava/lang/String;

    #@135
    move-object/from16 v0, p1

    #@137
    iget v15, v0, Landroid/os/Message;->arg1:I

    #@139
    int-to-char v15, v15

    #@13a
    invoke-static {v2, v1, v15}, Landroid/telecom/ConnectionService;->-wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    #@13d
    goto/16 :goto_0

    #@13f
    .line 323
    :pswitch_d
    move-object/from16 v0, p0

    #@141
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@143
    move-object/from16 v0, p1

    #@145
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@147
    check-cast v1, Ljava/lang/String;

    #@149
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@14c
    goto/16 :goto_0

    #@14e
    .line 326
    :pswitch_e
    move-object/from16 v0, p1

    #@150
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@152
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@154
    .line 328
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@156
    check-cast v11, Ljava/lang/String;

    #@158
    .line 329
    .local v11, "callId1":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@15a
    check-cast v12, Ljava/lang/String;

    #@15c
    .line 330
    .local v12, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15e
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@160
    invoke-static {v1, v11, v12}, Landroid/telecom/ConnectionService;->-wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@163
    .line 332
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@166
    goto/16 :goto_0

    #@168
    .line 331
    .end local v11    # "callId1":Ljava/lang/String;
    .end local v12    # "callId2":Ljava/lang/String;
    :catchall_3
    move-exception v1

    #@169
    .line 332
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@16c
    .line 331
    throw v1

    #@16d
    .line 337
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    move-object/from16 v0, p0

    #@16f
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@171
    move-object/from16 v0, p1

    #@173
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@175
    check-cast v1, Ljava/lang/String;

    #@177
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@17a
    goto/16 :goto_0

    #@17c
    .line 340
    :pswitch_10
    move-object/from16 v0, p0

    #@17e
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@180
    move-object/from16 v0, p1

    #@182
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@184
    check-cast v1, Ljava/lang/String;

    #@186
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@189
    goto/16 :goto_0

    #@18b
    .line 343
    :pswitch_11
    move-object/from16 v0, p0

    #@18d
    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@18f
    move-object/from16 v0, p1

    #@191
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@193
    check-cast v1, Ljava/lang/String;

    #@195
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->-wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    #@198
    goto/16 :goto_0

    #@19a
    .line 346
    :pswitch_12
    move-object/from16 v0, p1

    #@19c
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19e
    check-cast v8, Lcom/android/internal/os/SomeArgs;

    #@1a0
    .line 348
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1a2
    check-cast v10, Ljava/lang/String;

    #@1a4
    .line 349
    .restart local v10    # "callId":Ljava/lang/String;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1a6
    const/4 v2, 0x1

    #@1a7
    if-ne v1, v2, :cond_3

    #@1a9
    const/4 v13, 0x1

    #@1aa
    .line 350
    .local v13, "proceed":Z
    :goto_4
    move-object/from16 v0, p0

    #@1ac
    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    #@1ae
    invoke-static {v1, v10, v13}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@1b1
    .line 352
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1b4
    goto/16 :goto_0

    #@1b6
    .line 349
    .end local v13    # "proceed":Z
    :cond_3
    const/4 v13, 0x0

    #@1b7
    .restart local v13    # "proceed":Z
    goto :goto_4

    #@1b8
    .line 351
    .end local v10    # "callId":Ljava/lang/String;
    .end local v13    # "proceed":Z
    :catchall_4
    move-exception v1

    #@1b9
    .line 352
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1bc
    .line 351
    throw v1

    #@1bd
    .line 236
    nop

    #@1be
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
