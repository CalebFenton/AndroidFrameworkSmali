.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    #@0
    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 505
    const/16 v0, 0x2000

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #@b
    .line 504
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    #@0
    .prologue
    .line 511
    const/4 v7, 0x0

    #@1
    .line 512
    .local v7, "retryCount":I
    const-string/jumbo v8, "rild"

    #@4
    .line 515
    .local v8, "rilSocket":Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    #@5
    .line 518
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@7
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    #@a
    move-result-object v12

    #@b
    if-eqz v12, :cond_0

    #@d
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@f
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    #@12
    move-result-object v12

    #@13
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v12

    #@17
    if-nez v12, :cond_1

    #@19
    .line 519
    :cond_0
    sget-object v12, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    #@1b
    const/4 v13, 0x0

    #@1c
    aget-object v8, v12, v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    #@1e
    .line 525
    :goto_1
    :try_start_1
    new-instance v10, Landroid/net/LocalSocket;

    #@20
    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    #@23
    .line 526
    .end local v9    # "s":Landroid/net/LocalSocket;
    .local v10, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v4, Landroid/net/LocalSocketAddress;

    #@25
    .line 527
    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@27
    .line 526
    invoke-direct {v4, v8, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@2a
    .line 528
    .local v4, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v10, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    #@2d
    .line 561
    const/4 v7, 0x0

    #@2e
    .line 563
    :try_start_3
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@30
    iput-object v10, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@32
    .line 564
    const-string/jumbo v12, "RILJ"

    #@35
    new-instance v13, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v14, "("

    #@3d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v13

    #@41
    iget-object v14, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@43
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    #@46
    move-result-object v14

    #@47
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v13

    #@4b
    const-string/jumbo v14, ") Connected to \'"

    #@4e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v13

    #@52
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v13

    #@56
    .line 565
    const-string/jumbo v14, "\' socket"

    #@59
    .line 564
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v13

    #@5d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v13

    #@61
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    #@64
    .line 567
    const/4 v5, 0x0

    #@65
    .line 569
    .local v5, "length":I
    :try_start_4
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@67
    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@69
    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@6c
    move-result-object v3

    #@6d
    .line 574
    .local v3, "is":Ljava/io/InputStream;
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #@6f
    invoke-static {v3, v12}, Lcom/android/internal/telephony/RIL;->-wrap2(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    #@72
    move-result v5

    #@73
    .line 576
    if-gez v5, :cond_5

    #@75
    .line 598
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    const-string/jumbo v12, "RILJ"

    #@78
    new-instance v13, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v14, "("

    #@80
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v13

    #@84
    iget-object v14, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@86
    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    #@89
    move-result-object v14

    #@8a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v13

    #@8e
    const-string/jumbo v14, ") Disconnected from \'"

    #@91
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v13

    #@95
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v13

    #@99
    .line 599
    const-string/jumbo v14, "\' socket"

    #@9c
    .line 598
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v13

    #@a0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v13

    #@a4
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    .line 601
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@a9
    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@ab
    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    #@ae
    .line 604
    :try_start_6
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@b0
    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@b2
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    #@b5
    .line 608
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@b7
    const/4 v13, 0x0

    #@b8
    iput-object v13, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    #@ba
    .line 609
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    #@bd
    .line 612
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@bf
    const/4 v13, 0x1

    #@c0
    const/4 v14, 0x0

    #@c1
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/RIL;->-wrap3(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    #@c4
    move-object v9, v10

    #@c5
    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    #@c7
    .line 521
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    .local v9, "s":Landroid/net/LocalSocket;
    :cond_1
    :try_start_8
    sget-object v12, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    #@c9
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@cb
    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    #@ce
    move-result-object v13

    #@cf
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@d2
    move-result v13

    #@d3
    aget-object v8, v12, v13
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    #@d5
    goto/16 :goto_1

    #@d7
    .line 529
    :catch_0
    move-exception v1

    #@d8
    .line 531
    .end local v9    # "s":Landroid/net/LocalSocket;
    .local v1, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v9, :cond_2

    #@da
    .line 532
    :try_start_9
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    #@dd
    .line 541
    :cond_2
    :goto_6
    const/16 v12, 0x8

    #@df
    if-ne v7, v12, :cond_4

    #@e1
    .line 542
    :try_start_a
    const-string/jumbo v12, "RILJ"

    #@e4
    .line 543
    new-instance v13, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v14, "Couldn\'t find \'"

    #@ec
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v13

    #@f0
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v13

    #@f4
    .line 544
    const-string/jumbo v14, "\' socket after "

    #@f7
    .line 543
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v13

    #@fb
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v13

    #@ff
    .line 545
    const-string/jumbo v14, " times, continuing to retry silently"

    #@102
    .line 543
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v13

    #@106
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v13

    #@10a
    .line 542
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    #@10d
    .line 553
    :cond_3
    :goto_7
    const-wide/16 v12, 0xfa0

    #@10f
    :try_start_b
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    #@112
    .line 557
    :goto_8
    add-int/lit8 v7, v7, 0x1

    #@114
    goto/16 :goto_0

    #@116
    .line 534
    :catch_1
    move-exception v2

    #@117
    .local v2, "ex2":Ljava/io/IOException;
    goto :goto_6

    #@118
    .line 546
    .end local v2    # "ex2":Ljava/io/IOException;
    :cond_4
    if-ltz v7, :cond_3

    #@11a
    const/16 v12, 0x8

    #@11c
    if-ge v7, v12, :cond_3

    #@11e
    .line 547
    :try_start_c
    const-string/jumbo v12, "RILJ"

    #@121
    .line 548
    new-instance v13, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v14, "Couldn\'t find \'"

    #@129
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v13

    #@12d
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v13

    #@131
    .line 549
    const-string/jumbo v14, "\' socket; retrying after timeout"

    #@134
    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v13

    #@138
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v13

    #@13c
    .line 547
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    #@13f
    goto :goto_7

    #@140
    .line 613
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v11

    #@141
    .line 614
    .local v11, "tr":Ljava/lang/Throwable;
    :goto_9
    const-string/jumbo v12, "RILJ"

    #@144
    const-string/jumbo v13, "Uncaught exception"

    #@147
    invoke-static {v12, v13, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14a
    .line 618
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@14c
    const/4 v13, -0x1

    #@14d
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;I)V

    #@150
    .line 510
    return-void

    #@151
    .line 554
    .end local v11    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    #@152
    .local v0, "er":Ljava/lang/InterruptedException;
    goto :goto_8

    #@153
    .line 581
    .end local v0    # "er":Ljava/lang/InterruptedException;
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v5    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :cond_5
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@156
    move-result-object v6

    #@157
    .line 582
    .local v6, "p":Landroid/os/Parcel;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #@159
    const/4 v13, 0x0

    #@15a
    invoke-virtual {v6, v12, v13, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    #@15d
    .line 583
    const/4 v12, 0x0

    #@15e
    invoke-virtual {v6, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    #@161
    .line 587
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #@163
    invoke-static {v12, v6}, Lcom/android/internal/telephony/RIL;->-wrap6(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    #@166
    .line 588
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    #@169
    goto/16 :goto_2

    #@16b
    .line 590
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "p":Landroid/os/Parcel;
    :catch_4
    move-exception v1

    #@16c
    .line 591
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string/jumbo v12, "RILJ"

    #@16f
    new-instance v13, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v14, "\'"

    #@177
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v13

    #@17b
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v13

    #@17f
    const-string/jumbo v14, "\' socket closed"

    #@182
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v13

    #@186
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v13

    #@18a
    invoke-static {v12, v13, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18d
    goto/16 :goto_3

    #@18f
    .line 613
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    :catch_5
    move-exception v11

    #@190
    .restart local v11    # "tr":Ljava/lang/Throwable;
    move-object v9, v10

    #@191
    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    goto :goto_9

    #@192
    .line 593
    .end local v9    # "s":Landroid/net/LocalSocket;
    .end local v11    # "tr":Ljava/lang/Throwable;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v5    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    #@193
    .line 594
    .restart local v11    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v12, "RILJ"

    #@196
    new-instance v13, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v14, "Uncaught exception read length="

    #@19e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v13

    #@1a2
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v13

    #@1a6
    .line 595
    const-string/jumbo v14, "Exception:"

    #@1a9
    .line 594
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v13

    #@1ad
    .line 595
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v14

    #@1b1
    .line 594
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v13

    #@1b5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v13

    #@1b9
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    #@1bc
    goto/16 :goto_3

    #@1be
    .line 605
    .end local v11    # "tr":Ljava/lang/Throwable;
    :catch_7
    move-exception v1

    #@1bf
    .restart local v1    # "ex":Ljava/io/IOException;
    goto/16 :goto_4

    #@1c1
    .line 529
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    :catch_8
    move-exception v1

    #@1c2
    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v9, v10

    #@1c3
    .end local v10    # "s":Landroid/net/LocalSocket;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
