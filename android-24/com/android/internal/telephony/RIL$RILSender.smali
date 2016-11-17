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
    .line 363
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@2
    .line 364
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 368
    const/4 v0, 0x4

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@a
    .line 363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 381
    move-object/from16 v0, p1

    #@2
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    #@6
    .line 382
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v6, 0x0

    #@7
    .line 384
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    #@9
    iget v11, v0, Landroid/os/Message;->what:I

    #@b
    packed-switch v11, :pswitch_data_0

    #@e
    .line 380
    .end local v6    # "req":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void

    #@f
    .line 390
    .restart local v6    # "req":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@11
    iget-object v8, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@13
    .line 392
    .local v8, "s":Landroid/net/LocalSocket;
    if-nez v8, :cond_1

    #@15
    .line 393
    const/4 v11, 0x1

    #@16
    const/4 v12, 0x0

    #@17
    invoke-virtual {v7, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@1a
    .line 394
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1c
    invoke-static {v11, v7}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@1f
    .line 395
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@22
    .line 396
    return-void

    #@23
    .line 400
    :cond_1
    move-object/from16 v0, p1

    #@25
    iget v11, v0, Landroid/os/Message;->what:I

    #@27
    const/4 v12, 0x3

    #@28
    if-eq v11, v12, :cond_2

    #@2a
    .line 401
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@2c
    iget-object v12, v11, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@2e
    monitor-enter v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@2f
    .line 402
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@31
    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@33
    iget v13, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@35
    invoke-virtual {v11, v13, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    :try_start_2
    monitor-exit v12

    #@39
    .line 408
    :cond_2
    iget-object v11, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3b
    invoke-virtual {v11}, Landroid/os/Parcel;->marshall()[B

    #@3e
    move-result-object v2

    #@3f
    .line 409
    .local v2, "data":[B
    iget-object v11, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@41
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 410
    const/4 v11, 0x0

    #@45
    iput-object v11, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@47
    .line 412
    array-length v11, v2

    #@48
    const/16 v12, 0x2000

    #@4a
    if-le v11, v12, :cond_3

    #@4c
    .line 413
    new-instance v11, Ljava/lang/RuntimeException;

    #@4e
    .line 414
    new-instance v12, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v13, "Parcel larger than max bytes allowed! "

    #@56
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v12

    #@5a
    .line 415
    array-length v13, v2

    #@5b
    .line 414
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v12

    #@5f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v12

    #@63
    .line 413
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@66
    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@67
    .line 431
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    #@68
    .line 432
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v11, "RILJ"

    #@6b
    const-string/jumbo v12, "IOException"

    #@6e
    invoke-static {v11, v12, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@71
    .line 433
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@73
    iget v12, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@75
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@78
    move-result-object v6

    #@79
    .line 436
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_0

    #@7b
    .line 437
    const/4 v11, 0x1

    #@7c
    const/4 v12, 0x0

    #@7d
    invoke-virtual {v7, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@80
    .line 438
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@82
    invoke-static {v11, v7}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@85
    .line 439
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@88
    .line 440
    return-void

    #@89
    .line 401
    .end local v3    # "ex":Ljava/io/IOException;
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v11

    #@8a
    :try_start_3
    monitor-exit v12

    #@8b
    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    #@8c
    .line 442
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v4

    #@8d
    .line 443
    .local v4, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v11, "RILJ"

    #@90
    const-string/jumbo v12, "Uncaught exception "

    #@93
    invoke-static {v11, v12, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@96
    .line 444
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@98
    iget v12, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@9a
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@9d
    move-result-object v6

    #@9e
    .line 447
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_0

    #@a0
    .line 448
    const/4 v11, 0x2

    #@a1
    const/4 v12, 0x0

    #@a2
    invoke-virtual {v7, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@a5
    .line 449
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@a7
    invoke-static {v11, v7}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@aa
    .line 450
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@ad
    .line 451
    return-void

    #@ae
    .line 419
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .restart local v2    # "data":[B
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@b0
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@b2
    const/4 v13, 0x0

    #@b3
    const/4 v14, 0x1

    #@b4
    aput-byte v13, v12, v14

    #@b6
    const/4 v12, 0x0

    #@b7
    const/4 v13, 0x0

    #@b8
    aput-byte v12, v11, v13

    #@ba
    .line 420
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@bc
    array-length v12, v2

    #@bd
    shr-int/lit8 v12, v12, 0x8

    #@bf
    and-int/lit16 v12, v12, 0xff

    #@c1
    int-to-byte v12, v12

    #@c2
    const/4 v13, 0x2

    #@c3
    aput-byte v12, v11, v13

    #@c5
    .line 421
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@c7
    array-length v12, v2

    #@c8
    and-int/lit16 v12, v12, 0xff

    #@ca
    int-to-byte v12, v12

    #@cb
    const/4 v13, 0x3

    #@cc
    aput-byte v12, v11, v13

    #@ce
    .line 425
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@d1
    move-result-object v11

    #@d2
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@d4
    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    #@d7
    .line 426
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@da
    move-result-object v11

    #@db
    invoke-virtual {v11, v2}, Ljava/io/OutputStream;->write([B)V

    #@de
    .line 427
    move-object/from16 v0, p1

    #@e0
    iget v11, v0, Landroid/os/Message;->what:I

    #@e2
    const/4 v12, 0x3

    #@e3
    if-ne v11, v12, :cond_0

    #@e5
    .line 428
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    #@e8
    .line 429
    return-void

    #@e9
    .line 469
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@eb
    iget-object v12, v11, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@ed
    monitor-enter v12

    #@ee
    .line 470
    :try_start_5
    move-object/from16 v0, p1

    #@f0
    iget v11, v0, Landroid/os/Message;->arg1:I

    #@f2
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@f4
    iget v13, v13, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    #@f6
    if-ne v11, v13, :cond_4

    #@f8
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@fa
    const/4 v13, 0x0

    #@fb
    invoke-static {v11, v13}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;I)Z

    #@fe
    move-result v11

    #@ff
    if-eqz v11, :cond_4

    #@101
    .line 472
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@103
    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@105
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@108
    move-result v1

    #@109
    .line 473
    .local v1, "count":I
    const-string/jumbo v11, "RILJ"

    #@10c
    new-instance v13, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v14, "WAKE_LOCK_TIMEOUT  mRequestList="

    #@114
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v13

    #@118
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v13

    #@11c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v13

    #@120
    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@123
    .line 475
    const/4 v5, 0x0

    #@124
    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_4

    #@126
    .line 476
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@128
    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@12a
    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12d
    move-result-object v11

    #@12e
    move-object v0, v11

    #@12f
    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    #@131
    move-object v7, v0

    #@132
    .line 477
    const-string/jumbo v11, "RILJ"

    #@135
    new-instance v13, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v13

    #@13e
    const-string/jumbo v14, ": ["

    #@141
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v13

    #@145
    iget v14, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@147
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v13

    #@14b
    const-string/jumbo v14, "] "

    #@14e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v13

    #@152
    .line 478
    iget v14, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@154
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@157
    move-result-object v14

    #@158
    .line 477
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v13

    #@15c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v13

    #@160
    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@163
    .line 475
    add-int/lit8 v5, v5, 0x1

    #@165
    goto :goto_1

    #@166
    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_4
    monitor-exit v12

    #@167
    goto/16 :goto_0

    #@169
    .line 469
    :catchall_1
    move-exception v11

    #@16a
    monitor-exit v12

    #@16b
    throw v11

    #@16c
    .line 486
    :pswitch_2
    move-object/from16 v0, p1

    #@16e
    iget v11, v0, Landroid/os/Message;->arg1:I

    #@170
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@172
    iget v12, v12, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    #@174
    if-ne v11, v12, :cond_0

    #@176
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@178
    const/4 v12, 0x1

    #@179
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;I)Z

    #@17c
    move-result v11

    #@17d
    if-eqz v11, :cond_0

    #@17f
    .line 488
    const-string/jumbo v11, "RILJ"

    #@182
    const-string/jumbo v12, "ACK_WAKE_LOCK_TIMEOUT"

    #@185
    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    goto/16 :goto_0

    #@18a
    .line 494
    :pswitch_3
    move-object/from16 v0, p1

    #@18c
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@18e
    .line 495
    .local v9, "serial":I
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@190
    invoke-static {v11, v9}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@193
    move-result-object v7

    #@194
    .line 497
    if-eqz v7, :cond_0

    #@196
    .line 502
    iget-object v11, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@198
    if-eqz v11, :cond_5

    #@19a
    .line 503
    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->-wrap3(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    #@19d
    move-result-object v10

    #@19e
    .line 504
    .local v10, "timeoutResponse":Ljava/lang/Object;
    iget-object v11, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@1a0
    const/4 v12, 0x0

    #@1a1
    invoke-static {v11, v10, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@1a4
    .line 505
    iget-object v11, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@1a6
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    #@1a9
    .line 506
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1ab
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/TelephonyEventLog;

    #@1ae
    move-result-object v11

    #@1af
    iget v12, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@1b1
    iget v13, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1b3
    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/TelephonyEventLog;->writeOnRilTimeoutResponse(II)V

    #@1b6
    .line 509
    .end local v10    # "timeoutResponse":Ljava/lang/Object;
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1b8
    invoke-static {v11, v7}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    #@1bb
    .line 510
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 384
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
    .line 373
    return-void
.end method
