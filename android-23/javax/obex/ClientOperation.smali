.class public final Ljavax/obex/ClientOperation;
.super Ljava/lang/Object;
.source "ClientOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientOperation"

.field private static final V:Z


# instance fields
.field private mEndOfBodySent:Z

.field private mExceptionMessage:Ljava/lang/String;

.field private mGetFinalFlag:Z

.field private mGetOperation:Z

.field private mInputOpen:Z

.field private mMaxPacketSize:I

.field private mOperationDone:Z

.field private mParent:Ljavax/obex/ClientSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateInputOpen:Z

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mReplyHeader:Ljavax/obex/HeaderSet;

.field private mRequestHeader:Ljavax/obex/HeaderSet;

.field private mSendBodyHeader:Z

.field private mSrmActive:Z

.field private mSrmEnabled:Z

.field private mSrmWaitingForRemote:Z


# direct methods
.method public constructor <init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V
    .locals 7
    .param p1, "maxSize"    # I
    .param p2, "p"    # Ljavax/obex/ClientSession;
    .param p3, "header"    # Ljavax/obex/HeaderSet;
    .param p4, "type"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 85
    iput-boolean v3, p0, Ljavax/obex/ClientOperation;->mSendBodyHeader:Z

    #@9
    .line 87
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mSrmActive:Z

    #@b
    .line 91
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mSrmEnabled:Z

    #@d
    .line 95
    iput-boolean v3, p0, Ljavax/obex/ClientOperation;->mSrmWaitingForRemote:Z

    #@f
    .line 110
    iput-object p2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@11
    .line 111
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    #@13
    .line 112
    iput-boolean v3, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    #@15
    .line 113
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@17
    .line 114
    iput p1, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    #@19
    .line 115
    iput-boolean p4, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    #@1b
    .line 116
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mGetFinalFlag:Z

    #@1d
    .line 118
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    #@1f
    .line 119
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    #@21
    .line 120
    iput-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@23
    .line 121
    iput-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@25
    .line 123
    new-instance v2, Ljavax/obex/HeaderSet;

    #@27
    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    #@2a
    iput-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@2c
    .line 125
    new-instance v2, Ljavax/obex/HeaderSet;

    #@2e
    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    #@31
    iput-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@33
    .line 127
    invoke-virtual {p3}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    #@36
    move-result-object v0

    #@37
    .line 129
    .local v0, "headerList":[I
    if-eqz v0, :cond_0

    #@39
    .line 131
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@3b
    if-ge v1, v2, :cond_0

    #@3d
    .line 132
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@3f
    aget v3, v0, v1

    #@41
    aget v4, v0, v1

    #@43
    invoke-virtual {p3, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@4a
    .line 131
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 136
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@4f
    if-eqz v2, :cond_1

    #@51
    .line 137
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@53
    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@55
    array-length v3, v3

    #@56
    new-array v3, v3, [B

    #@58
    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@5a
    .line 138
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@5c
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@5e
    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@60
    .line 139
    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@62
    array-length v4, v4

    #@63
    .line 138
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@66
    .line 142
    :cond_1
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@68
    if-eqz v2, :cond_2

    #@6a
    .line 143
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@6c
    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@6e
    array-length v3, v3

    #@6f
    new-array v3, v3, [B

    #@71
    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@73
    .line 144
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@75
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@77
    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@79
    .line 145
    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@7b
    array-length v4, v4

    #@7c
    .line 144
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7f
    .line 149
    :cond_2
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@81
    if-eqz v2, :cond_3

    #@83
    .line 150
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@85
    new-array v3, v6, [B

    #@87
    iput-object v3, v2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@89
    .line 151
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@8b
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@8d
    iget-object v3, v3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@8f
    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@92
    .line 108
    :cond_3
    return-void
.end method

.method private checkForSrm()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x98

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 592
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@6
    const/16 v3, 0x97

    #@8
    invoke-virtual {v2, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Byte;

    #@e
    .line 593
    .local v0, "srmMode":Ljava/lang/Byte;
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@10
    invoke-virtual {v2}, Ljavax/obex/ClientSession;->isSrmSupported()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 594
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    #@1b
    move-result v2

    #@1c
    if-ne v2, v4, :cond_0

    #@1e
    .line 595
    iput-boolean v4, p0, Ljavax/obex/ClientOperation;->mSrmEnabled:Z

    #@20
    .line 605
    :cond_0
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mSrmEnabled:Z

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 606
    const/4 v2, 0x0

    #@25
    iput-boolean v2, p0, Ljavax/obex/ClientOperation;->mSrmWaitingForRemote:Z

    #@27
    .line 607
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@29
    invoke-virtual {v2, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/lang/Byte;

    #@2f
    .line 608
    .local v1, "srmp":Ljava/lang/Byte;
    if-eqz v1, :cond_1

    #@31
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    #@34
    move-result v2

    #@35
    if-ne v2, v4, :cond_1

    #@37
    .line 609
    iput-boolean v4, p0, Ljavax/obex/ClientOperation;->mSrmWaitingForRemote:Z

    #@39
    .line 612
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@3b
    invoke-virtual {v2, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@3e
    .line 615
    .end local v1    # "srmp":Ljava/lang/Byte;
    :cond_1
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mSrmWaitingForRemote:Z

    #@40
    if-nez v2, :cond_2

    #@42
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mSrmEnabled:Z

    #@44
    if-eqz v2, :cond_2

    #@46
    .line 616
    iput-boolean v4, p0, Ljavax/obex/ClientOperation;->mSrmActive:Z

    #@48
    .line 591
    :cond_2
    return-void
.end method

.method private sendRequest(I)Z
    .locals 18
    .param p1, "opCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    const/16 v16, 0x0

    #@2
    .line 443
    .local v16, "returnValue":Z
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@7
    .line 444
    .local v15, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v12, -0x1

    #@8
    .line 445
    .local v12, "bodyLength":I
    move-object/from16 v0, p0

    #@a
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@10
    move-result-object v14

    #@11
    .line 446
    .local v14, "headerArray":[B
    move-object/from16 v0, p0

    #@13
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 447
    move-object/from16 v0, p0

    #@19
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@1b
    invoke-virtual {v1}, Ljavax/obex/PrivateOutputStream;->size()I

    #@1e
    move-result v12

    #@1f
    .line 458
    :cond_0
    const/4 v10, 0x3

    #@20
    .line 459
    .local v10, "MINIMUM_BODY_LENGTH":I
    array-length v1, v14

    #@21
    add-int/lit8 v1, v1, 0x3

    #@23
    add-int/lit8 v1, v1, 0x3

    #@25
    .line 460
    move-object/from16 v0, p0

    #@27
    iget v2, v0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    #@29
    .line 459
    if-le v1, v2, :cond_8

    #@2b
    .line 461
    const/4 v13, 0x0

    #@2c
    .line 462
    .local v13, "end":I
    const/16 v17, 0x0

    #@2e
    .line 465
    .local v17, "start":I
    :goto_0
    array-length v1, v14

    #@2f
    if-eq v13, v1, :cond_6

    #@31
    .line 468
    move-object/from16 v0, p0

    #@33
    iget v1, v0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    #@35
    add-int/lit8 v1, v1, -0x3

    #@37
    move/from16 v0, v17

    #@39
    invoke-static {v14, v0, v1}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    #@3c
    move-result v13

    #@3d
    .line 471
    const/4 v1, -0x1

    #@3e
    if-ne v13, v1, :cond_3

    #@40
    .line 472
    const/4 v1, 0x1

    #@41
    move-object/from16 v0, p0

    #@43
    iput-boolean v1, v0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@45
    .line 473
    invoke-virtual/range {p0 .. p0}, Ljavax/obex/ClientOperation;->abort()V

    #@48
    .line 474
    const-string/jumbo v1, "Header larger then can be sent in a packet"

    #@4b
    move-object/from16 v0, p0

    #@4d
    iput-object v1, v0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    #@4f
    .line 475
    const/4 v1, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    iput-boolean v1, v0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    #@54
    .line 477
    move-object/from16 v0, p0

    #@56
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@58
    if-eqz v1, :cond_1

    #@5a
    .line 478
    move-object/from16 v0, p0

    #@5c
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@5e
    invoke-virtual {v1}, Ljavax/obex/PrivateInputStream;->close()V

    #@61
    .line 481
    :cond_1
    move-object/from16 v0, p0

    #@63
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@65
    if-eqz v1, :cond_2

    #@67
    .line 482
    move-object/from16 v0, p0

    #@69
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@6b
    invoke-virtual {v1}, Ljavax/obex/PrivateOutputStream;->close()V

    #@6e
    .line 484
    :cond_2
    new-instance v1, Ljava/io/IOException;

    #@70
    const-string/jumbo v2, "OBEX Packet exceeds max packet size"

    #@73
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@76
    throw v1

    #@77
    .line 487
    :cond_3
    sub-int v1, v13, v17

    #@79
    new-array v3, v1, [B

    #@7b
    .line 488
    .local v3, "sendHeader":[B
    array-length v1, v3

    #@7c
    const/4 v2, 0x0

    #@7d
    move/from16 v0, v17

    #@7f
    invoke-static {v14, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@82
    .line 489
    move-object/from16 v0, p0

    #@84
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v4, v0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-object v5, v0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@8e
    const/4 v6, 0x0

    #@8f
    move/from16 v2, p1

    #@91
    invoke-virtual/range {v1 .. v6}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@94
    move-result v1

    #@95
    if-nez v1, :cond_4

    #@97
    .line 490
    const/4 v1, 0x0

    #@98
    return v1

    #@99
    .line 493
    :cond_4
    move-object/from16 v0, p0

    #@9b
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@9d
    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    #@9f
    const/16 v2, 0x90

    #@a1
    if-eq v1, v2, :cond_5

    #@a3
    .line 494
    const/4 v1, 0x0

    #@a4
    return v1

    #@a5
    .line 497
    :cond_5
    move/from16 v17, v13

    #@a7
    goto :goto_0

    #@a8
    .line 501
    .end local v3    # "sendHeader":[B
    :cond_6
    invoke-direct/range {p0 .. p0}, Ljavax/obex/ClientOperation;->checkForSrm()V

    #@ab
    .line 503
    if-lez v12, :cond_7

    #@ad
    .line 504
    const/4 v1, 0x1

    #@ae
    return v1

    #@af
    .line 506
    :cond_7
    const/4 v1, 0x0

    #@b0
    return v1

    #@b1
    .line 510
    .end local v13    # "end":I
    .end local v17    # "start":I
    :cond_8
    move-object/from16 v0, p0

    #@b3
    iget-boolean v1, v0, Ljavax/obex/ClientOperation;->mSendBodyHeader:Z

    #@b5
    if-nez v1, :cond_9

    #@b7
    .line 512
    move/from16 v0, p1

    #@b9
    or-int/lit16 v0, v0, 0x80

    #@bb
    move/from16 p1, v0

    #@bd
    .line 514
    :cond_9
    invoke-virtual {v15, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@c0
    .line 517
    if-lez v12, :cond_c

    #@c2
    .line 523
    move-object/from16 v0, p0

    #@c4
    iget v1, v0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    #@c6
    array-length v2, v14

    #@c7
    sub-int/2addr v1, v2

    #@c8
    add-int/lit8 v1, v1, -0x6

    #@ca
    if-le v12, v1, :cond_a

    #@cc
    .line 524
    const/16 v16, 0x1

    #@ce
    .line 526
    move-object/from16 v0, p0

    #@d0
    iget v1, v0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    #@d2
    array-length v2, v14

    #@d3
    sub-int/2addr v1, v2

    #@d4
    add-int/lit8 v12, v1, -0x6

    #@d6
    .line 529
    :cond_a
    move-object/from16 v0, p0

    #@d8
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@da
    invoke-virtual {v1, v12}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    #@dd
    move-result-object v11

    #@de
    .line 536
    .local v11, "body":[B
    move-object/from16 v0, p0

    #@e0
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@e2
    invoke-virtual {v1}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    #@e5
    move-result v1

    #@e6
    if-eqz v1, :cond_b

    #@e8
    if-eqz v16, :cond_e

    #@ea
    .line 541
    :cond_b
    const/16 v1, 0x48

    #@ec
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@ef
    .line 544
    :goto_1
    add-int/lit8 v12, v12, 0x3

    #@f1
    .line 545
    shr-int/lit8 v1, v12, 0x8

    #@f3
    int-to-byte v1, v1

    #@f4
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f7
    .line 546
    int-to-byte v1, v12

    #@f8
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@fb
    .line 548
    if-eqz v11, :cond_c

    #@fd
    .line 549
    invoke-virtual {v15, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@100
    .line 553
    .end local v11    # "body":[B
    :cond_c
    move-object/from16 v0, p0

    #@102
    iget-boolean v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    #@104
    if-eqz v1, :cond_d

    #@106
    if-gtz v12, :cond_d

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-boolean v1, v0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    #@10c
    if-eqz v1, :cond_f

    #@10e
    .line 567
    :cond_d
    :goto_2
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    #@111
    move-result v1

    #@112
    if-nez v1, :cond_12

    #@114
    .line 568
    move-object/from16 v0, p0

    #@116
    iget-object v4, v0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@118
    move-object/from16 v0, p0

    #@11a
    iget-object v7, v0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget-object v8, v0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@120
    move-object/from16 v0, p0

    #@122
    iget-boolean v9, v0, Ljavax/obex/ClientOperation;->mSrmActive:Z

    #@124
    const/4 v6, 0x0

    #@125
    move/from16 v5, p1

    #@127
    invoke-virtual/range {v4 .. v9}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@12a
    move-result v1

    #@12b
    if-nez v1, :cond_11

    #@12d
    .line 569
    const/4 v1, 0x0

    #@12e
    return v1

    #@12f
    .line 536
    .restart local v11    # "body":[B
    :cond_e
    move-object/from16 v0, p0

    #@131
    iget-boolean v1, v0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    #@133
    if-nez v1, :cond_b

    #@135
    .line 537
    move/from16 v0, p1

    #@137
    and-int/lit16 v1, v0, 0x80

    #@139
    if-eqz v1, :cond_b

    #@13b
    .line 538
    const/16 v1, 0x49

    #@13d
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@140
    .line 539
    const/4 v1, 0x1

    #@141
    move-object/from16 v0, p0

    #@143
    iput-boolean v1, v0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    #@145
    goto :goto_1

    #@146
    .line 555
    .end local v11    # "body":[B
    :cond_f
    move/from16 v0, p1

    #@148
    and-int/lit16 v1, v0, 0x80

    #@14a
    if-nez v1, :cond_10

    #@14c
    .line 556
    const/16 v1, 0x48

    #@14e
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@151
    .line 563
    :goto_3
    const/4 v1, 0x0

    #@152
    int-to-byte v1, v1

    #@153
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@156
    .line 564
    const/4 v1, 0x3

    #@157
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@15a
    goto :goto_2

    #@15b
    .line 558
    :cond_10
    const/16 v1, 0x49

    #@15d
    invoke-virtual {v15, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@160
    .line 559
    const/4 v1, 0x1

    #@161
    move-object/from16 v0, p0

    #@163
    iput-boolean v1, v0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    #@165
    goto :goto_3

    #@166
    .line 572
    :cond_11
    invoke-direct/range {p0 .. p0}, Ljavax/obex/ClientOperation;->checkForSrm()V

    #@169
    .line 573
    return v16

    #@16a
    .line 575
    :cond_12
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    #@16d
    move-result v1

    #@16e
    if-lez v1, :cond_13

    #@170
    .line 576
    move-object/from16 v0, p0

    #@172
    iget-object v4, v0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@174
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@177
    move-result-object v6

    #@178
    .line 577
    move-object/from16 v0, p0

    #@17a
    iget-object v7, v0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@17c
    move-object/from16 v0, p0

    #@17e
    iget-object v8, v0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@180
    move-object/from16 v0, p0

    #@182
    iget-boolean v9, v0, Ljavax/obex/ClientOperation;->mSrmActive:Z

    #@184
    move/from16 v5, p1

    #@186
    .line 576
    invoke-virtual/range {v4 .. v9}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@189
    move-result v1

    #@18a
    if-eqz v1, :cond_15

    #@18c
    .line 581
    :cond_13
    invoke-direct/range {p0 .. p0}, Ljavax/obex/ClientOperation;->checkForSrm()V

    #@18f
    .line 585
    move-object/from16 v0, p0

    #@191
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@193
    if-eqz v1, :cond_14

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v1, v0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@199
    invoke-virtual {v1}, Ljavax/obex/PrivateOutputStream;->size()I

    #@19c
    move-result v1

    #@19d
    if-lez v1, :cond_14

    #@19f
    .line 586
    const/16 v16, 0x1

    #@1a1
    .line 588
    :cond_14
    return v16

    #@1a2
    .line 578
    :cond_15
    const/4 v1, 0x0

    #@1a3
    return v1
.end method

.method private declared-synchronized startProcessing()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x90

    #@2
    monitor-enter p0

    #@3
    .line 628
    :try_start_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 629
    new-instance v0, Ljavax/obex/PrivateInputStream;

    #@9
    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    #@c
    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@e
    .line 631
    :cond_0
    const/4 v6, 0x1

    #@f
    .line 633
    .local v6, "more":Z
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    #@11
    if-eqz v0, :cond_5

    #@13
    .line 634
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@15
    if-nez v0, :cond_3

    #@17
    .line 635
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@19
    const/16 v1, 0x90

    #@1b
    iput v1, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@1d
    .line 636
    .end local v6    # "more":Z
    :goto_0
    if-eqz v6, :cond_1

    #@1f
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@21
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@23
    if-ne v0, v7, :cond_1

    #@25
    .line 637
    const/4 v0, 0x3

    #@26
    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    #@29
    move-result v6

    #@2a
    .local v6, "more":Z
    goto :goto_0

    #@2b
    .line 642
    .end local v6    # "more":Z
    :cond_1
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@2d
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@2f
    if-ne v0, v7, :cond_2

    #@31
    .line 643
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@33
    .line 644
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@35
    iget-object v4, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@37
    iget-boolean v5, p0, Ljavax/obex/ClientOperation;->mSrmActive:Z

    #@39
    .line 643
    const/16 v1, 0x83

    #@3b
    .line 644
    const/4 v2, 0x0

    #@3c
    .line 643
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@3f
    .line 646
    :cond_2
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@41
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@43
    if-eq v0, v7, :cond_4

    #@45
    .line 647
    const/4 v0, 0x1

    #@46
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    :cond_3
    :goto_1
    monitor-exit p0

    #@49
    .line 626
    return-void

    #@4a
    .line 649
    :cond_4
    :try_start_1
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->checkForSrm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_1

    #@4e
    :catchall_0
    move-exception v0

    #@4f
    monitor-exit p0

    #@50
    throw v0

    #@51
    .line 654
    .local v6, "more":Z
    :cond_5
    :try_start_2
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@53
    if-nez v0, :cond_6

    #@55
    .line 655
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@57
    const/16 v1, 0x90

    #@59
    iput v1, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@5b
    .line 656
    .end local v6    # "more":Z
    :goto_2
    if-eqz v6, :cond_6

    #@5d
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@5f
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@61
    if-ne v0, v7, :cond_6

    #@63
    .line 657
    const/4 v0, 0x2

    #@64
    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    #@67
    move-result v6

    #@68
    .local v6, "more":Z
    goto :goto_2

    #@69
    .line 661
    .end local v6    # "more":Z
    :cond_6
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@6b
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@6d
    if-ne v0, v7, :cond_7

    #@6f
    .line 662
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@71
    .line 663
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@73
    iget-object v4, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@75
    iget-boolean v5, p0, Ljavax/obex/ClientOperation;->mSrmActive:Z

    #@77
    .line 662
    const/16 v1, 0x82

    #@79
    .line 663
    const/4 v2, 0x0

    #@7a
    .line 662
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@7d
    .line 666
    :cond_7
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@7f
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@81
    if-eq v0, v7, :cond_3

    #@83
    .line 667
    const/4 v0, 0x1

    #@84
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@86
    goto :goto_1
.end method

.method private validateConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    #@3
    .line 427
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 428
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->startProcessing()V

    #@a
    .line 423
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x90

    #@2
    monitor-enter p0

    #@3
    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    #@6
    .line 176
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@c
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 177
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Operation has already ended"

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0

    #@1c
    .line 180
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Operation aborted"

    #@1f
    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    #@21
    .line 181
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@23
    if-nez v0, :cond_2

    #@25
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@27
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@29
    if-ne v0, v1, :cond_2

    #@2b
    .line 182
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@2e
    .line 187
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@30
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@32
    const/16 v1, 0xff

    #@34
    const/4 v2, 0x0

    #@35
    const/4 v4, 0x0

    #@36
    const/4 v5, 0x0

    #@37
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@3a
    .line 189
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@3c
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@3e
    const/16 v1, 0xa0

    #@40
    if-eq v0, v1, :cond_1

    #@42
    .line 190
    new-instance v0, Ljava/io/IOException;

    #@44
    const-string/jumbo v1, "Invalid response code from server"

    #@47
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 193
    :cond_1
    const/4 v0, 0x0

    #@4c
    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    #@4e
    .line 196
    :cond_2
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    monitor-exit p0

    #@52
    .line 173
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 346
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    #@3
    .line 347
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    #@5
    .line 348
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    #@7
    .line 349
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@9
    invoke-virtual {v0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    #@c
    .line 345
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 8
    .param p1, "sendEmpty"    # Z
    .param p2, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x90

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    monitor-enter p0

    #@5
    .line 686
    :try_start_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    #@7
    if-eqz v0, :cond_6

    #@9
    .line 687
    if-eqz p2, :cond_0

    #@b
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 702
    :cond_0
    if-nez p2, :cond_1

    #@11
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@13
    if-eqz v0, :cond_4

    #@15
    .line 711
    :cond_1
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-eqz v0, :cond_c

    #@19
    monitor-exit p0

    #@1a
    .line 712
    return v1

    #@1b
    .line 689
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@1d
    .line 690
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@1f
    iget-object v4, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@21
    iget-boolean v5, p0, Ljavax/obex/ClientOperation;->mSrmActive:Z

    #@23
    .line 689
    const/16 v1, 0x83

    #@25
    .line 690
    const/4 v2, 0x0

    #@26
    .line 689
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@29
    .line 694
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@2b
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@2d
    if-eq v0, v7, :cond_3

    #@2f
    .line 695
    const/4 v0, 0x1

    #@30
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    :goto_0
    monitor-exit p0

    #@33
    .line 700
    return v6

    #@34
    .line 697
    :cond_3
    :try_start_2
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->checkForSrm()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    :catchall_0
    move-exception v0

    #@39
    monitor-exit p0

    #@3a
    throw v0

    #@3b
    .line 705
    :cond_4
    :try_start_3
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@3d
    if-nez v0, :cond_5

    #@3f
    .line 706
    new-instance v0, Ljavax/obex/PrivateInputStream;

    #@41
    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    #@44
    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@46
    .line 708
    :cond_5
    const/4 v0, 0x3

    #@47
    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    monitor-exit p0

    #@4b
    .line 709
    return v6

    #@4c
    .line 717
    :cond_6
    if-nez p2, :cond_7

    #@4e
    :try_start_4
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@50
    if-eqz v0, :cond_9

    #@52
    .line 724
    :cond_7
    if-eqz p2, :cond_8

    #@54
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@56
    if-eqz v0, :cond_b

    #@58
    .line 728
    :cond_8
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5a
    if-eqz v0, :cond_c

    #@5c
    monitor-exit p0

    #@5d
    .line 729
    return v1

    #@5e
    .line 719
    :cond_9
    :try_start_5
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@60
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@62
    const/4 v1, -0x1

    #@63
    if-ne v0, v1, :cond_a

    #@65
    .line 720
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@67
    const/16 v1, 0x90

    #@69
    iput v1, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@6b
    .line 722
    :cond_a
    const/4 v0, 0x2

    #@6c
    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6f
    monitor-exit p0

    #@70
    .line 723
    return v6

    #@71
    :cond_b
    monitor-exit p0

    #@72
    .line 726
    return v1

    #@73
    :cond_c
    monitor-exit p0

    #@74
    .line 733
    return v1
.end method

.method public ensureNotDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 399
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 400
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Operation has completed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 398
    :cond_0
    return-void
.end method

.method public ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@2
    invoke-virtual {v0}, Ljavax/obex/ClientSession;->ensureOpen()V

    #@5
    .line 411
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 412
    new-instance v0, Ljava/io/IOException;

    #@b
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 414
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    #@13
    if-nez v0, :cond_1

    #@15
    .line 415
    new-instance v0, Ljava/io/IOException;

    #@17
    const-string/jumbo v1, "Operation has already ended"

    #@1a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 408
    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 224
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderLength()I
    .locals 3

    #@0
    .prologue
    .line 328
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@6
    move-result-object v0

    #@7
    .line 329
    .local v0, "headerArray":[B
    array-length v1, v0

    #@8
    return v1
.end method

.method public getLength()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 252
    :try_start_0
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@4
    const/16 v3, 0xc3

    #@6
    invoke-virtual {v2, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/Long;

    #@c
    .line 254
    .local v1, "temp":Ljava/lang/Long;
    if-nez v1, :cond_0

    #@e
    .line 255
    return-wide v4

    #@f
    .line 257
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-wide v2

    #@13
    return-wide v2

    #@14
    .line 259
    .end local v1    # "temp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    #@15
    .line 261
    .local v0, "e":Ljava/io/IOException;
    return-wide v4
.end method

.method public getMaxPacketSize()I
    .locals 2

    #@0
    .prologue
    .line 323
    iget v0, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    #@2
    add-int/lit8 v0, v0, -0x6

    #@4
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getHeaderLength()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getReceivedHeader()Ljavax/obex/HeaderSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    #@3
    .line 362
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@5
    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 211
    :try_start_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@3
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@5
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 212
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@a
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@c
    const/16 v1, 0x90

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 213
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    #@13
    .line 216
    :cond_1
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@15
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    return v0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@2
    const/16 v2, 0x42

    #@4
    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-object v1

    #@b
    .line 237
    :catch_0
    move-exception v0

    #@c
    .line 239
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public noBodyHeader()V
    .locals 1

    #@0
    .prologue
    .line 830
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mSendBodyHeader:Z

    #@3
    .line 829
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    new-instance v0, Ljava/io/DataInputStream;

    #@2
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@9
    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    new-instance v0, Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@9
    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    #@3
    .line 274
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 275
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v1, "no more input streams available"

    #@c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 276
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 278
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    #@17
    .line 285
    :cond_1
    :goto_0
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    #@1a
    .line 287
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@1c
    return-object v0

    #@1d
    .line 280
    :cond_2
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 281
    new-instance v0, Ljavax/obex/PrivateInputStream;

    #@23
    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    #@26
    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@28
    goto :goto_0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    #@3
    .line 307
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureNotDone()V

    #@6
    .line 309
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 310
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v1, "no more output streams available"

    #@f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 312
    :cond_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@15
    if-nez v0, :cond_1

    #@17
    .line 314
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    #@19
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    #@1c
    move-result v1

    #@1d
    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    #@20
    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@22
    .line 317
    :cond_1
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    #@25
    .line 319
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@27
    return-object v0
.end method

.method public sendHeaders(Ljavax/obex/HeaderSet;)V
    .locals 5
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 376
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    #@3
    .line 377
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 378
    new-instance v2, Ljava/io/IOException;

    #@9
    const-string/jumbo v3, "Operation has already exchanged all data"

    #@c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 381
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 382
    new-instance v2, Ljava/io/IOException;

    #@14
    const-string/jumbo v3, "Headers may not be null"

    #@17
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 385
    :cond_1
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    #@1e
    move-result-object v0

    #@1f
    .line 386
    .local v0, "headerList":[I
    if-eqz v0, :cond_2

    #@21
    .line 387
    const/4 v1, 0x0

    #@22
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@23
    if-ge v1, v2, :cond_2

    #@25
    .line 388
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@27
    aget v3, v0, v1

    #@29
    aget v4, v0, v1

    #@2b
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@32
    .line 387
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 375
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setGetFinalFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 163
    iput-boolean p1, p0, Ljavax/obex/ClientOperation;->mGetFinalFlag:Z

    #@2
    .line 162
    return-void
.end method

.method public streamClosed(Z)V
    .locals 10
    .param p1, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x83

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    const/16 v8, 0x90

    #@7
    .line 743
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    #@9
    if-nez v0, :cond_7

    #@b
    .line 744
    if-nez p1, :cond_0

    #@d
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 773
    :cond_0
    if-eqz p1, :cond_1

    #@13
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 775
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@19
    .line 742
    :cond_1
    :goto_0
    return-void

    #@1a
    .line 747
    :cond_2
    const/4 v7, 0x1

    #@1b
    .line 749
    .local v7, "more":Z
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@21
    invoke-virtual {v0}, Ljavax/obex/PrivateOutputStream;->size()I

    #@24
    move-result v0

    #@25
    if-gtz v0, :cond_3

    #@27
    .line 750
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@29
    invoke-static {v0, v5}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@2c
    move-result-object v6

    #@2d
    .line 751
    .local v6, "headerArray":[B
    array-length v0, v6

    #@2e
    if-gtz v0, :cond_3

    #@30
    .line 752
    const/4 v7, 0x0

    #@31
    .line 755
    .end local v6    # "headerArray":[B
    :cond_3
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@33
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@35
    const/4 v1, -0x1

    #@36
    if-ne v0, v1, :cond_4

    #@38
    .line 756
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@3a
    iput v8, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@3c
    .line 759
    .end local v7    # "more":Z
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    #@3e
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@40
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@42
    if-ne v0, v8, :cond_5

    #@44
    .line 760
    const/4 v0, 0x2

    #@45
    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    #@48
    move-result v7

    #@49
    .local v7, "more":Z
    goto :goto_1

    #@4a
    .line 768
    .end local v7    # "more":Z
    :cond_5
    :goto_2
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@4c
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@4e
    if-ne v0, v8, :cond_6

    #@50
    .line 770
    const/16 v0, 0x82

    #@52
    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    #@55
    goto :goto_2

    #@56
    .line 772
    :cond_6
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@58
    goto :goto_0

    #@59
    .line 778
    :cond_7
    if-eqz p1, :cond_8

    #@5b
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@5d
    if-eqz v0, :cond_c

    #@5f
    .line 798
    :cond_8
    if-nez p1, :cond_1

    #@61
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@63
    if-nez v0, :cond_1

    #@65
    .line 802
    const/4 v7, 0x1

    #@66
    .line 804
    .local v7, "more":Z
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@68
    if-eqz v0, :cond_9

    #@6a
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@6c
    invoke-virtual {v0}, Ljavax/obex/PrivateOutputStream;->size()I

    #@6f
    move-result v0

    #@70
    if-gtz v0, :cond_9

    #@72
    .line 805
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    #@74
    invoke-static {v0, v5}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@77
    move-result-object v6

    #@78
    .line 806
    .restart local v6    # "headerArray":[B
    array-length v0, v6

    #@79
    if-gtz v0, :cond_9

    #@7b
    .line 807
    const/4 v7, 0x0

    #@7c
    .line 810
    .end local v6    # "headerArray":[B
    :cond_9
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@7e
    if-nez v0, :cond_a

    #@80
    .line 811
    new-instance v0, Ljavax/obex/PrivateInputStream;

    #@82
    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    #@85
    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@87
    .line 813
    :cond_a
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@89
    if-eqz v0, :cond_b

    #@8b
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@8d
    invoke-virtual {v0}, Ljavax/obex/PrivateOutputStream;->size()I

    #@90
    move-result v0

    #@91
    if-gtz v0, :cond_b

    #@93
    .line 814
    const/4 v7, 0x0

    #@94
    .line 816
    :cond_b
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@96
    iput v8, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@98
    .line 817
    .end local v7    # "more":Z
    :goto_3
    if-eqz v7, :cond_12

    #@9a
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@9c
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@9e
    if-ne v0, v8, :cond_12

    #@a0
    .line 818
    const/4 v0, 0x3

    #@a1
    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    #@a4
    move-result v7

    #@a5
    .local v7, "more":Z
    goto :goto_3

    #@a6
    .line 783
    .end local v7    # "more":Z
    :cond_c
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@a8
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@aa
    const/4 v3, -0x1

    #@ab
    if-ne v0, v3, :cond_d

    #@ad
    .line 784
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@af
    iput v8, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@b1
    .line 787
    :cond_d
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@b3
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@b5
    if-ne v0, v8, :cond_e

    #@b7
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@b9
    if-eqz v0, :cond_10

    #@bb
    .line 792
    :cond_e
    :goto_4
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@bd
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@bf
    if-ne v0, v8, :cond_f

    #@c1
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@c3
    if-eqz v0, :cond_11

    #@c5
    .line 797
    :cond_f
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@c7
    goto/16 :goto_0

    #@c9
    .line 788
    :cond_10
    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    #@cc
    move-result v0

    #@cd
    if-nez v0, :cond_d

    #@cf
    goto :goto_4

    #@d0
    .line 793
    :cond_11
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    #@d2
    .line 794
    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@d4
    iget-object v4, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@d6
    .line 793
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@d9
    goto :goto_4

    #@da
    .line 820
    :cond_12
    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    #@dd
    .line 822
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    #@df
    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@e1
    if-eq v0, v8, :cond_1

    #@e3
    .line 823
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    #@e5
    goto/16 :goto_0
.end method
