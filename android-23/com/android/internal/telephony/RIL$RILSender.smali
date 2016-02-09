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
    .line 327
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@2
    .line 328
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 332
    const/4 v0, 0x4

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@a
    .line 327
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 345
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    #@4
    .line 346
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v6, 0x0

    #@5
    .line 348
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v9, :pswitch_data_0

    #@a
    .line 344
    .end local v6    # "req":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 353
    .restart local v6    # "req":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@d
    iget-object v8, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@f
    .line 355
    .local v8, "s":Landroid/net/LocalSocket;
    if-nez v8, :cond_1

    #@11
    .line 356
    const/4 v9, 0x1

    #@12
    const/4 v10, 0x0

    #@13
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@16
    .line 357
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@19
    .line 358
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@1b
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap4(Lcom/android/internal/telephony/RIL;)V

    #@1e
    .line 359
    return-void

    #@1f
    .line 362
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@21
    iget-object v10, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@23
    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@24
    .line 363
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@26
    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@28
    iget v11, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@2a
    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :try_start_2
    monitor-exit v10

    #@2e
    .line 368
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@30
    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    #@33
    move-result-object v2

    #@34
    .line 369
    .local v2, "data":[B
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@36
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 370
    const/4 v9, 0x0

    #@3a
    iput-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@3c
    .line 372
    array-length v9, v2

    #@3d
    const/16 v10, 0x2000

    #@3f
    if-le v9, v10, :cond_2

    #@41
    .line 373
    new-instance v9, Ljava/lang/RuntimeException;

    #@43
    .line 374
    new-instance v10, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v11, "Parcel larger than max bytes allowed! "

    #@4b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    .line 375
    array-length v11, v2

    #@50
    .line 374
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v10

    #@54
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v10

    #@58
    .line 373
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@5c
    .line 387
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    #@5d
    .line 388
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "RILJ"

    #@60
    const-string/jumbo v10, "IOException"

    #@63
    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66
    .line 389
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@68
    iget v10, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@6a
    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@6d
    move-result-object v6

    #@6e
    .line 392
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_0

    #@70
    .line 393
    const/4 v9, 0x1

    #@71
    const/4 v10, 0x0

    #@72
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@75
    .line 394
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@78
    .line 395
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@7a
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap4(Lcom/android/internal/telephony/RIL;)V

    #@7d
    goto :goto_0

    #@7e
    .line 362
    .end local v3    # "ex":Ljava/io/IOException;
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v9

    #@7f
    :try_start_3
    monitor-exit v10

    #@80
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    #@81
    .line 397
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v4

    #@82
    .line 398
    .local v4, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "RILJ"

    #@85
    const-string/jumbo v10, "Uncaught exception "

    #@88
    invoke-static {v9, v10, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8b
    .line 399
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@8d
    iget v10, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@8f
    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    #@92
    move-result-object v6

    #@93
    .line 402
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_0

    #@95
    .line 403
    const/4 v9, 0x2

    #@96
    const/4 v10, 0x0

    #@97
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    #@9a
    .line 404
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    #@9d
    .line 405
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@9f
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap4(Lcom/android/internal/telephony/RIL;)V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 379
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .restart local v2    # "data":[B
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_2
    :try_start_4
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@a6
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@a8
    const/4 v11, 0x0

    #@a9
    const/4 v12, 0x1

    #@aa
    aput-byte v11, v10, v12

    #@ac
    const/4 v10, 0x0

    #@ad
    const/4 v11, 0x0

    #@ae
    aput-byte v10, v9, v11

    #@b0
    .line 380
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@b2
    array-length v10, v2

    #@b3
    shr-int/lit8 v10, v10, 0x8

    #@b5
    and-int/lit16 v10, v10, 0xff

    #@b7
    int-to-byte v10, v10

    #@b8
    const/4 v11, 0x2

    #@b9
    aput-byte v10, v9, v11

    #@bb
    .line 381
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@bd
    array-length v10, v2

    #@be
    and-int/lit16 v10, v10, 0xff

    #@c0
    int-to-byte v10, v10

    #@c1
    const/4 v11, 0x3

    #@c2
    aput-byte v10, v9, v11

    #@c4
    .line 385
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@c7
    move-result-object v9

    #@c8
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    #@ca
    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    #@cd
    .line 386
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@d0
    move-result-object v9

    #@d1
    invoke-virtual {v9, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    #@d4
    goto/16 :goto_0

    #@d6
    .line 423
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@d8
    iget-object v10, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@da
    monitor-enter v10

    #@db
    .line 424
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@dd
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;)Z

    #@e0
    move-result v9

    #@e1
    if-eqz v9, :cond_3

    #@e3
    .line 426
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@e5
    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@e7
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@ea
    move-result v1

    #@eb
    .line 427
    .local v1, "count":I
    const-string/jumbo v9, "RILJ"

    #@ee
    new-instance v11, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v12, "WAKE_LOCK_TIMEOUT  mRequestList="

    #@f6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v11

    #@fa
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v11

    #@fe
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v11

    #@102
    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@105
    .line 429
    const/4 v5, 0x0

    #@106
    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    #@108
    .line 430
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #@10a
    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    #@10c
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10f
    move-result-object v9

    #@110
    move-object v0, v9

    #@111
    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    #@113
    move-object v7, v0

    #@114
    .line 431
    const-string/jumbo v9, "RILJ"

    #@117
    new-instance v11, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v11

    #@120
    const-string/jumbo v12, ": ["

    #@123
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v11

    #@127
    iget v12, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@129
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v11

    #@12d
    const-string/jumbo v12, "] "

    #@130
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v11

    #@134
    .line 432
    iget v12, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@136
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@139
    move-result-object v12

    #@13a
    .line 431
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v11

    #@13e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v11

    #@142
    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@145
    .line 429
    add-int/lit8 v5, v5, 0x1

    #@147
    goto :goto_1

    #@148
    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_3
    monitor-exit v10

    #@149
    goto/16 :goto_0

    #@14b
    .line 423
    :catchall_1
    move-exception v9

    #@14c
    monitor-exit v10

    #@14d
    throw v9

    #@14e
    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    #@0
    .prologue
    .line 337
    return-void
.end method
