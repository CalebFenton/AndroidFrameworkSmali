.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@2
    .line 378
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 382
    const/4 v0, 0x4

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@a
    .line 377
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 395
    move-object/from16 v0, p1

    #@2
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v8, Lcom/android/internal/telephony/RILRequest;

    #@6
    .line 396
    .local v8, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v7, 0x0

    #@7
    .line 398
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    #@9
    iget v12, v0, Landroid/os/Message;->what:I

    #@b
    packed-switch v12, :pswitch_data_0

    #@e
    .line 394
    .end local v7    # "req":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void

    #@f
    .line 404
    .restart local v7    # "req":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    #@11
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@13
    iget-object v9, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@15
    .line 406
    .local v9, "s":Landroid/net/LocalSocket;
    if-nez v9, :cond_1

    #@17
    .line 407
    const/4 v12, 0x1

    #@18
    const/4 v13, 0x0

    #@19
    invoke-virtual {v8, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@1c
    .line 408
    move-object/from16 v0, p0

    #@1e
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@20
    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@23
    .line 409
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@26
    .line 410
    return-void

    #@27
    .line 414
    :cond_1
    move-object/from16 v0, p1

    #@29
    iget v12, v0, Landroid/os/Message;->what:I

    #@2b
    const/4 v13, 0x3

    #@2c
    if-eq v12, v13, :cond_2

    #@2e
    .line 415
    move-object/from16 v0, p0

    #@30
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@32
    iget-object v13, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@34
    monitor-enter v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@35
    .line 416
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@38
    move-result-wide v14

    #@39
    iput-wide v14, v8, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    #@3b
    .line 417
    move-object/from16 v0, p0

    #@3d
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@3f
    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@41
    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@43
    invoke-virtual {v12, v14, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    :try_start_2
    monitor-exit v13

    #@47
    .line 423
    :cond_2
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@49
    invoke-virtual {v12}, Landroid/os/Parcel;->marshall()[B

    #@4c
    move-result-object v3

    #@4d
    .line 424
    .local v3, "data":[B
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@4f
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 425
    const/4 v12, 0x0

    #@53
    iput-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@55
    .line 427
    array-length v12, v3

    #@56
    const/16 v13, 0x2000

    #@58
    if-le v12, v13, :cond_3

    #@5a
    .line 428
    new-instance v12, Ljava/lang/RuntimeException;

    #@5c
    .line 429
    new-instance v13, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v14, "Parcel larger than max bytes allowed! "

    #@64
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v13

    #@68
    .line 430
    array-length v14, v3

    #@69
    .line 429
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v13

    #@6d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v13

    #@71
    .line 428
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@74
    throw v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@75
    .line 446
    .end local v3    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    #@76
    .line 447
    .local v4, "ex":Ljava/io/IOException;
    const-string/jumbo v12, "RILJ"

    #@79
    const-string/jumbo v13, "IOException"

    #@7c
    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7f
    .line 448
    move-object/from16 v0, p0

    #@81
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@83
    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@85
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@88
    move-result-object v7

    #@89
    .line 451
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_0

    #@8b
    .line 452
    const/4 v12, 0x1

    #@8c
    const/4 v13, 0x0

    #@8d
    invoke-virtual {v8, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@90
    .line 453
    move-object/from16 v0, p0

    #@92
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@94
    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@97
    .line 454
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@9a
    .line 455
    return-void

    #@9b
    .line 415
    .end local v4    # "ex":Ljava/io/IOException;
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v12

    #@9c
    :try_start_3
    monitor-exit v13

    #@9d
    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    #@9e
    .line 457
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    #@9f
    .line 458
    .local v5, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v12, "RILJ"

    #@a2
    const-string/jumbo v13, "Uncaught exception "

    #@a5
    invoke-static {v12, v13, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a8
    .line 459
    move-object/from16 v0, p0

    #@aa
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@ac
    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@ae
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@b1
    move-result-object v7

    #@b2
    .line 462
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_0

    #@b4
    .line 463
    const/4 v12, 0x2

    #@b5
    const/4 v13, 0x0

    #@b6
    invoke-virtual {v8, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@b9
    .line 464
    move-object/from16 v0, p0

    #@bb
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@bd
    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@c0
    .line 465
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@c3
    .line 466
    return-void

    #@c4
    .line 434
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    .restart local v3    # "data":[B
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    #@c6
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@cc
    const/4 v14, 0x0

    #@cd
    const/4 v15, 0x1

    #@ce
    aput-byte v14, v13, v15

    #@d0
    const/4 v13, 0x0

    #@d1
    const/4 v14, 0x0

    #@d2
    aput-byte v13, v12, v14

    #@d4
    .line 435
    move-object/from16 v0, p0

    #@d6
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@d8
    array-length v13, v3

    #@d9
    shr-int/lit8 v13, v13, 0x8

    #@db
    and-int/lit16 v13, v13, 0xff

    #@dd
    int-to-byte v13, v13

    #@de
    const/4 v14, 0x2

    #@df
    aput-byte v13, v12, v14

    #@e1
    .line 436
    move-object/from16 v0, p0

    #@e3
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@e5
    array-length v13, v3

    #@e6
    and-int/lit16 v13, v13, 0xff

    #@e8
    int-to-byte v13, v13

    #@e9
    const/4 v14, 0x3

    #@ea
    aput-byte v13, v12, v14

    #@ec
    .line 440
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@ef
    move-result-object v12

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@f4
    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    #@f7
    .line 441
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@fa
    move-result-object v12

    #@fb
    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V

    #@fe
    .line 442
    move-object/from16 v0, p1

    #@100
    iget v12, v0, Landroid/os/Message;->what:I

    #@102
    const/4 v13, 0x3

    #@103
    if-ne v12, v13, :cond_0

    #@105
    .line 443
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    #@108
    .line 444
    return-void

    #@109
    .line 484
    .end local v3    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    move-object/from16 v0, p0

    #@10b
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@10d
    iget-object v13, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@10f
    monitor-enter v13

    #@110
    .line 485
    :try_start_5
    move-object/from16 v0, p1

    #@112
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@118
    iget v14, v14, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    #@11a
    if-ne v12, v14, :cond_4

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@120
    const/4 v14, 0x0

    #@121
    invoke-static {v12, v14}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;I)Z

    #@124
    move-result v12

    #@125
    if-eqz v12, :cond_4

    #@127
    .line 487
    move-object/from16 v0, p0

    #@129
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@12b
    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@12d
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    #@130
    move-result v2

    #@131
    .line 488
    .local v2, "count":I
    const-string/jumbo v12, "RILJ"

    #@134
    new-instance v14, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    const-string/jumbo v15, "WAKE_LOCK_TIMEOUT  mRequestList="

    #@13c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v14

    #@140
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    move-result-object v14

    #@144
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v14

    #@148
    invoke-static {v12, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14b
    .line 490
    const/4 v6, 0x0

    #@14c
    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    #@14e
    .line 491
    move-object/from16 v0, p0

    #@150
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@152
    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@154
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@157
    move-result-object v12

    #@158
    move-object v0, v12

    #@159
    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    #@15b
    move-object v8, v0

    #@15c
    .line 492
    const-string/jumbo v12, "RILJ"

    #@15f
    new-instance v14, Ljava/lang/StringBuilder;

    #@161
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@167
    move-result-object v14

    #@168
    const-string/jumbo v15, ": ["

    #@16b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v14

    #@16f
    iget v15, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@171
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@174
    move-result-object v14

    #@175
    const-string/jumbo v15, "] "

    #@178
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v14

    #@17c
    .line 493
    iget v15, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@17e
    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@181
    move-result-object v15

    #@182
    .line 492
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v14

    #@186
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v14

    #@18a
    invoke-static {v12, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@18d
    .line 490
    add-int/lit8 v6, v6, 0x1

    #@18f
    goto :goto_1

    #@190
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_4
    monitor-exit v13

    #@191
    goto/16 :goto_0

    #@193
    .line 484
    :catchall_1
    move-exception v12

    #@194
    monitor-exit v13

    #@195
    throw v12

    #@196
    .line 501
    :pswitch_2
    move-object/from16 v0, p1

    #@198
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@19e
    iget v13, v13, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    #@1a0
    if-ne v12, v13, :cond_0

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1a6
    const/4 v13, 0x1

    #@1a7
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;I)Z

    #@1aa
    move-result v12

    #@1ab
    if-eqz v12, :cond_0

    #@1ad
    goto/16 :goto_0

    #@1af
    .line 509
    :pswitch_3
    move-object/from16 v0, p1

    #@1b1
    iget v10, v0, Landroid/os/Message;->arg1:I

    #@1b3
    .line 510
    .local v10, "serial":I
    move-object/from16 v0, p0

    #@1b5
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1b7
    invoke-static {v12, v10}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@1ba
    move-result-object v8

    #@1bb
    .line 512
    if-eqz v8, :cond_0

    #@1bd
    .line 517
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@1bf
    if-eqz v12, :cond_5

    #@1c1
    .line 518
    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->-wrap3(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    #@1c4
    move-result-object v11

    #@1c5
    .line 519
    .local v11, "timeoutResponse":Ljava/lang/Object;
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@1c7
    const/4 v13, 0x0

    #@1c8
    invoke-static {v12, v11, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@1cb
    .line 520
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@1cd
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    #@1d0
    .line 521
    move-object/from16 v0, p0

    #@1d2
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1d4
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@1d7
    move-result-object v12

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1dc
    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    #@1df
    move-result-object v13

    #@1e0
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@1e3
    move-result v13

    #@1e4
    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@1e6
    iget v15, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1e8
    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    #@1eb
    .line 524
    .end local v11    # "timeoutResponse":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    #@1ed
    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1ef
    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@1f2
    .line 525
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 398
    nop

    #@1f8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 0

    #@0
    .prologue
    .line 387
    return-void
.end method
