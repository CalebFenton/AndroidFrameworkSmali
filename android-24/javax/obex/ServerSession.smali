.class public final Ljavax/obex/ServerSession;
.super Ljavax/obex/ObexSession;
.source "ServerSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ServerSession"

.field private static final V:Z


# instance fields
.field private mClosed:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mOutput:Ljava/io/OutputStream;

.field private mProcessThread:Ljava/lang/Thread;

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method public constructor <init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V
    .locals 1
    .param p1, "trans"    # Ljavax/obex/ObexTransport;
    .param p2, "handler"    # Ljavax/obex/ServerRequestHandler;
    .param p3, "auth"    # Ljavax/obex/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    #@3
    .line 76
    iput-object p3, p0, Ljavax/obex/ServerSession;->mAuthenticator:Ljavax/obex/Authenticator;

    #@5
    .line 77
    iput-object p1, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@7
    .line 78
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@9
    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@f
    .line 79
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@11
    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@17
    .line 80
    iput-object p2, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@19
    .line 81
    const/16 v0, 0x100

    #@1b
    iput v0, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@1d
    .line 83
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Ljavax/obex/ServerSession;->mClosed:Z

    #@20
    .line 84
    new-instance v0, Ljava/lang/Thread;

    #@22
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@25
    iput-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    #@27
    .line 85
    iget-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    #@29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@2c
    .line 75
    return-void
.end method

.method private handleAbortRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    const/16 v0, 0xa0

    #@2
    .line 166
    .local v0, "code":I
    new-instance v4, Ljavax/obex/HeaderSet;

    #@4
    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    #@7
    .line 167
    .local v4, "request":Ljavax/obex/HeaderSet;
    new-instance v3, Ljavax/obex/HeaderSet;

    #@9
    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    #@c
    .line 169
    .local v3, "reply":Ljavax/obex/HeaderSet;
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@e
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    #@11
    move-result v2

    #@12
    .line 170
    .local v2, "length":I
    shl-int/lit8 v5, v2, 0x8

    #@14
    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@16
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    #@19
    move-result v6

    #@1a
    add-int v2, v5, v6

    #@1c
    .line 171
    iget-object v5, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@1e
    invoke-static {v5}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@21
    move-result v5

    #@22
    if-le v2, v5, :cond_0

    #@24
    .line 172
    const/16 v0, 0xce

    #@26
    .line 181
    :goto_0
    const/4 v5, 0x0

    #@27
    invoke-virtual {p0, v0, v5}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@2a
    .line 164
    return-void

    #@2b
    .line 174
    :cond_0
    const/4 v1, 0x3

    #@2c
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@2e
    .line 175
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@30
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    #@33
    .line 174
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_1

    #@36
    .line 177
    :cond_1
    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@38
    invoke-virtual {v5, v4, v3}, Ljavax/obex/ServerRequestHandler;->onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    #@3b
    move-result v0

    #@3c
    .line 178
    const-string/jumbo v5, "Obex ServerSession"

    #@3f
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "onAbort request handler return value- "

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 179
    invoke-direct {p0, v0}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    #@59
    move-result v0

    #@5a
    goto :goto_0
.end method

.method private handleConnectRequest()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    const/16 v20, 0x7

    #@2
    .line 537
    .local v20, "totalLength":I
    const/4 v10, 0x0

    #@3
    .line 538
    .local v10, "head":[B
    const/4 v7, -0x1

    #@4
    .line 539
    .local v7, "code":I
    new-instance v18, Ljavax/obex/HeaderSet;

    #@6
    invoke-direct/range {v18 .. v18}, Ljavax/obex/HeaderSet;-><init>()V

    #@9
    .line 540
    .local v18, "request":Ljavax/obex/HeaderSet;
    new-instance v17, Ljavax/obex/HeaderSet;

    #@b
    invoke-direct/range {v17 .. v17}, Ljavax/obex/HeaderSet;-><init>()V

    #@e
    .line 549
    .local v17, "reply":Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@12
    move-object/from16 v22, v0

    #@14
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    #@17
    move-result v16

    #@18
    .line 550
    .local v16, "packetLength":I
    shl-int/lit8 v22, v16, 0x8

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@1e
    move-object/from16 v23, v0

    #@20
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    #@23
    move-result v23

    #@24
    add-int v16, v22, v23

    #@26
    .line 553
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@2a
    move-object/from16 v22, v0

    #@2c
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    #@2f
    move-result v21

    #@30
    .line 554
    .local v21, "version":I
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@34
    move-object/from16 v22, v0

    #@36
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    #@39
    move-result v9

    #@3a
    .line 555
    .local v9, "flags":I
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@3e
    move-object/from16 v22, v0

    #@40
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    #@43
    move-result v22

    #@44
    move/from16 v0, v22

    #@46
    move-object/from16 v1, p0

    #@48
    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@4a
    .line 556
    move-object/from16 v0, p0

    #@4c
    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@4e
    move/from16 v22, v0

    #@50
    shl-int/lit8 v22, v22, 0x8

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@56
    move-object/from16 v23, v0

    #@58
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    #@5b
    move-result v23

    #@5c
    add-int v22, v22, v23

    #@5e
    move/from16 v0, v22

    #@60
    move-object/from16 v1, p0

    #@62
    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@64
    .line 562
    move-object/from16 v0, p0

    #@66
    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@68
    move/from16 v22, v0

    #@6a
    const v23, 0xfffe

    #@6d
    move/from16 v0, v22

    #@6f
    move/from16 v1, v23

    #@71
    if-le v0, v1, :cond_0

    #@73
    .line 563
    const v22, 0xfffe

    #@76
    move/from16 v0, v22

    #@78
    move-object/from16 v1, p0

    #@7a
    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@7c
    .line 566
    :cond_0
    move-object/from16 v0, p0

    #@7e
    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@80
    move/from16 v22, v0

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@86
    move-object/from16 v23, v0

    #@88
    invoke-static/range {v23 .. v23}, Ljavax/obex/ObexHelper;->getMaxTxPacketSize(Ljavax/obex/ObexTransport;)I

    #@8b
    move-result v23

    #@8c
    move/from16 v0, v22

    #@8e
    move/from16 v1, v23

    #@90
    if-le v0, v1, :cond_1

    #@92
    .line 567
    const-string/jumbo v22, "Obex ServerSession"

    #@95
    new-instance v23, Ljava/lang/StringBuilder;

    #@97
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v24, "Requested MaxObexPacketSize "

    #@9d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v23

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@a5
    move/from16 v24, v0

    #@a7
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v23

    #@ab
    .line 568
    const-string/jumbo v24, " is larger than the max size supported by the transport: "

    #@ae
    .line 567
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v23

    #@b2
    .line 569
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@b6
    move-object/from16 v24, v0

    #@b8
    invoke-static/range {v24 .. v24}, Ljavax/obex/ObexHelper;->getMaxTxPacketSize(Ljavax/obex/ObexTransport;)I

    #@bb
    move-result v24

    #@bc
    .line 567
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v23

    #@c0
    .line 570
    const-string/jumbo v24, " Reducing to this size."

    #@c3
    .line 567
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v23

    #@c7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v23

    #@cb
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 571
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@d2
    move-object/from16 v22, v0

    #@d4
    invoke-static/range {v22 .. v22}, Ljavax/obex/ObexHelper;->getMaxTxPacketSize(Ljavax/obex/ObexTransport;)I

    #@d7
    move-result v22

    #@d8
    move/from16 v0, v22

    #@da
    move-object/from16 v1, p0

    #@dc
    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@de
    .line 574
    :cond_1
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@e2
    move-object/from16 v22, v0

    #@e4
    invoke-static/range {v22 .. v22}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@e7
    move-result v22

    #@e8
    move/from16 v0, v16

    #@ea
    move/from16 v1, v22

    #@ec
    if-le v0, v1, :cond_4

    #@ee
    .line 575
    const/16 v7, 0xce

    #@f0
    .line 576
    const/16 v20, 0x7

    #@f2
    .line 651
    .end local v10    # "head":[B
    :cond_2
    :goto_0
    move/from16 v0, v20

    #@f4
    int-to-long v0, v0

    #@f5
    move-wide/from16 v22, v0

    #@f7
    invoke-static/range {v22 .. v23}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@fa
    move-result-object v14

    #@fb
    .line 659
    .local v14, "length":[B
    move/from16 v0, v20

    #@fd
    new-array v0, v0, [B

    #@ff
    move-object/from16 v19, v0

    #@101
    .line 660
    .local v19, "sendData":[B
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@105
    move-object/from16 v22, v0

    #@107
    invoke-static/range {v22 .. v22}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@10a
    move-result v15

    #@10b
    .line 661
    .local v15, "maxRxLength":I
    int-to-byte v0, v7

    #@10c
    move/from16 v22, v0

    #@10e
    const/16 v23, 0x0

    #@110
    aput-byte v22, v19, v23

    #@112
    .line 662
    const/16 v22, 0x2

    #@114
    aget-byte v22, v14, v22

    #@116
    const/16 v23, 0x1

    #@118
    aput-byte v22, v19, v23

    #@11a
    .line 663
    const/16 v22, 0x3

    #@11c
    aget-byte v22, v14, v22

    #@11e
    const/16 v23, 0x2

    #@120
    aput-byte v22, v19, v23

    #@122
    .line 664
    const/16 v22, 0x10

    #@124
    const/16 v23, 0x3

    #@126
    aput-byte v22, v19, v23

    #@128
    .line 665
    const/16 v22, 0x0

    #@12a
    const/16 v23, 0x4

    #@12c
    aput-byte v22, v19, v23

    #@12e
    .line 666
    shr-int/lit8 v22, v15, 0x8

    #@130
    move/from16 v0, v22

    #@132
    int-to-byte v0, v0

    #@133
    move/from16 v22, v0

    #@135
    const/16 v23, 0x5

    #@137
    aput-byte v22, v19, v23

    #@139
    .line 667
    and-int/lit16 v0, v15, 0xff

    #@13b
    move/from16 v22, v0

    #@13d
    move/from16 v0, v22

    #@13f
    int-to-byte v0, v0

    #@140
    move/from16 v22, v0

    #@142
    const/16 v23, 0x6

    #@144
    aput-byte v22, v19, v23

    #@146
    .line 669
    if-eqz v10, :cond_3

    #@148
    .line 670
    array-length v0, v10

    #@149
    move/from16 v22, v0

    #@14b
    const/16 v23, 0x0

    #@14d
    const/16 v24, 0x7

    #@14f
    move/from16 v0, v23

    #@151
    move-object/from16 v1, v19

    #@153
    move/from16 v2, v24

    #@155
    move/from16 v3, v22

    #@157
    invoke-static {v10, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15a
    .line 673
    :cond_3
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@15e
    move-object/from16 v22, v0

    #@160
    move-object/from16 v0, v22

    #@162
    move-object/from16 v1, v19

    #@164
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@167
    .line 674
    move-object/from16 v0, p0

    #@169
    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@16b
    move-object/from16 v22, v0

    #@16d
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->flush()V

    #@170
    .line 530
    return-void

    #@171
    .line 578
    .end local v14    # "length":[B
    .end local v15    # "maxRxLength":I
    .end local v19    # "sendData":[B
    .restart local v10    # "head":[B
    :cond_4
    const/16 v22, 0x7

    #@173
    move/from16 v0, v16

    #@175
    move/from16 v1, v22

    #@177
    if-le v0, v1, :cond_6

    #@179
    .line 579
    add-int/lit8 v22, v16, -0x7

    #@17b
    move/from16 v0, v22

    #@17d
    new-array v11, v0, [B

    #@17f
    .line 580
    .local v11, "headers":[B
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@183
    move-object/from16 v22, v0

    #@185
    move-object/from16 v0, v22

    #@187
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    #@18a
    move-result v6

    #@18b
    .line 582
    .local v6, "bytesReceived":I
    :goto_1
    array-length v0, v11

    #@18c
    move/from16 v22, v0

    #@18e
    move/from16 v0, v22

    #@190
    if-eq v6, v0, :cond_5

    #@192
    .line 583
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@196
    move-object/from16 v22, v0

    #@198
    array-length v0, v11

    #@199
    move/from16 v23, v0

    #@19b
    sub-int v23, v23, v6

    #@19d
    move-object/from16 v0, v22

    #@19f
    move/from16 v1, v23

    #@1a1
    invoke-virtual {v0, v11, v6, v1}, Ljava/io/InputStream;->read([BII)I

    #@1a4
    move-result v22

    #@1a5
    add-int v6, v6, v22

    #@1a7
    goto :goto_1

    #@1a8
    .line 587
    :cond_5
    move-object/from16 v0, v18

    #@1aa
    invoke-static {v0, v11}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    #@1ad
    .line 590
    .end local v6    # "bytesReceived":I
    .end local v11    # "headers":[B
    :cond_6
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@1b1
    move-object/from16 v22, v0

    #@1b3
    invoke-virtual/range {v22 .. v22}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@1b6
    move-result-wide v22

    #@1b7
    const-wide/16 v24, -0x1

    #@1b9
    cmp-long v22, v22, v24

    #@1bb
    if-eqz v22, :cond_a

    #@1bd
    move-object/from16 v0, v18

    #@1bf
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@1c1
    move-object/from16 v22, v0

    #@1c3
    if-eqz v22, :cond_a

    #@1c5
    .line 591
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@1c9
    move-object/from16 v22, v0

    #@1cb
    move-object/from16 v0, v18

    #@1cd
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@1cf
    move-object/from16 v23, v0

    #@1d1
    invoke-static/range {v23 .. v23}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@1d4
    move-result-wide v24

    #@1d5
    move-object/from16 v0, v22

    #@1d7
    move-wide/from16 v1, v24

    #@1d9
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@1dc
    .line 596
    :goto_2
    move-object/from16 v0, v18

    #@1de
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1e0
    move-object/from16 v22, v0

    #@1e2
    if-eqz v22, :cond_8

    #@1e4
    .line 597
    move-object/from16 v0, v18

    #@1e6
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1e8
    move-object/from16 v22, v0

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    move-object/from16 v1, v22

    #@1ee
    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    #@1f1
    move-result v22

    #@1f2
    if-nez v22, :cond_7

    #@1f4
    .line 598
    const/16 v7, 0xc1

    #@1f6
    .line 599
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@1fa
    move-object/from16 v22, v0

    #@1fc
    .line 600
    move-object/from16 v0, v18

    #@1fe
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@200
    move-object/from16 v23, v0

    #@202
    .line 599
    const/16 v24, 0x1

    #@204
    move/from16 v0, v24

    #@206
    move-object/from16 v1, v23

    #@208
    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@20b
    move-result-object v23

    #@20c
    invoke-virtual/range {v22 .. v23}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    #@20f
    .line 602
    :cond_7
    const/16 v22, 0x0

    #@211
    move-object/from16 v0, v22

    #@213
    move-object/from16 v1, v18

    #@215
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@217
    .line 605
    :cond_8
    const/16 v22, 0xc1

    #@219
    move/from16 v0, v22

    #@21b
    if-eq v7, v0, :cond_2

    #@21d
    .line 606
    move-object/from16 v0, v18

    #@21f
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@221
    move-object/from16 v22, v0

    #@223
    if-eqz v22, :cond_9

    #@225
    .line 607
    move-object/from16 v0, p0

    #@227
    move-object/from16 v1, v18

    #@229
    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    #@22c
    .line 608
    move-object/from16 v0, v18

    #@22e
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@230
    move-object/from16 v22, v0

    #@232
    move-object/from16 v0, v22

    #@234
    array-length v0, v0

    #@235
    move/from16 v22, v0

    #@237
    move/from16 v0, v22

    #@239
    new-array v0, v0, [B

    #@23b
    move-object/from16 v22, v0

    #@23d
    move-object/from16 v0, v22

    #@23f
    move-object/from16 v1, v17

    #@241
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@243
    .line 609
    move-object/from16 v0, v18

    #@245
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@247
    move-object/from16 v22, v0

    #@249
    move-object/from16 v0, v17

    #@24b
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@24d
    move-object/from16 v23, v0

    #@24f
    .line 610
    move-object/from16 v0, v17

    #@251
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@253
    move-object/from16 v24, v0

    #@255
    move-object/from16 v0, v24

    #@257
    array-length v0, v0

    #@258
    move/from16 v24, v0

    #@25a
    .line 609
    const/16 v25, 0x0

    #@25c
    const/16 v26, 0x0

    #@25e
    move-object/from16 v0, v22

    #@260
    move/from16 v1, v25

    #@262
    move-object/from16 v2, v23

    #@264
    move/from16 v3, v26

    #@266
    move/from16 v4, v24

    #@268
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26b
    .line 611
    const/16 v22, 0x0

    #@26d
    move-object/from16 v0, v22

    #@26f
    move-object/from16 v1, v18

    #@271
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@273
    .line 612
    const/16 v22, 0x0

    #@275
    move-object/from16 v0, v22

    #@277
    move-object/from16 v1, v18

    #@279
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@27b
    .line 616
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@27f
    move-object/from16 v22, v0

    #@281
    move-object/from16 v0, v22

    #@283
    move-object/from16 v1, v18

    #@285
    move-object/from16 v2, v17

    #@287
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    #@28a
    move-result v7

    #@28b
    .line 617
    move-object/from16 v0, p0

    #@28d
    invoke-direct {v0, v7}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    #@290
    move-result v7

    #@291
    .line 619
    move-object/from16 v0, v17

    #@293
    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@295
    move-object/from16 v22, v0

    #@297
    if-eqz v22, :cond_b

    #@299
    .line 620
    const/16 v22, 0x10

    #@29b
    move/from16 v0, v22

    #@29d
    new-array v0, v0, [B

    #@29f
    move-object/from16 v22, v0

    #@2a1
    move-object/from16 v0, v22

    #@2a3
    move-object/from16 v1, p0

    #@2a5
    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    #@2a7
    .line 621
    move-object/from16 v0, v17

    #@2a9
    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@2ab
    move-object/from16 v22, v0

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    #@2b1
    move-object/from16 v23, v0

    #@2b3
    const/16 v24, 0x0

    #@2b5
    const/16 v25, 0x0

    #@2b7
    const/16 v26, 0x10

    #@2b9
    move-object/from16 v0, v22

    #@2bb
    move/from16 v1, v24

    #@2bd
    move-object/from16 v2, v23

    #@2bf
    move/from16 v3, v25

    #@2c1
    move/from16 v4, v26

    #@2c3
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2c6
    .line 625
    :goto_3
    move-object/from16 v0, p0

    #@2c8
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@2ca
    move-object/from16 v22, v0

    #@2cc
    invoke-virtual/range {v22 .. v22}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@2cf
    move-result-wide v12

    #@2d0
    .line 626
    .local v12, "id":J
    const-wide/16 v22, -0x1

    #@2d2
    cmp-long v22, v12, v22

    #@2d4
    if-nez v22, :cond_c

    #@2d6
    .line 627
    const/16 v22, 0x0

    #@2d8
    move-object/from16 v0, v22

    #@2da
    move-object/from16 v1, v17

    #@2dc
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@2de
    .line 632
    :goto_4
    const/16 v22, 0x0

    #@2e0
    move-object/from16 v0, v17

    #@2e2
    move/from16 v1, v22

    #@2e4
    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@2e7
    move-result-object v10

    #@2e8
    .line 633
    .local v10, "head":[B
    array-length v0, v10

    #@2e9
    move/from16 v22, v0

    #@2eb
    add-int/lit8 v20, v22, 0x7

    #@2ed
    .line 635
    move-object/from16 v0, p0

    #@2ef
    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@2f1
    move/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2f3
    move/from16 v0, v20

    #@2f5
    move/from16 v1, v22

    #@2f7
    if-le v0, v1, :cond_2

    #@2f9
    .line 636
    const/16 v20, 0x7

    #@2fb
    .line 637
    const/4 v10, 0x0

    #@2fc
    .line 638
    .local v10, "head":[B
    const/16 v7, 0xd0

    #@2fe
    goto/16 :goto_0

    #@300
    .line 593
    .end local v12    # "id":J
    :cond_a
    move-object/from16 v0, p0

    #@302
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@304
    move-object/from16 v22, v0

    #@306
    const-wide/16 v24, 0x1

    #@308
    move-object/from16 v0, v22

    #@30a
    move-wide/from16 v1, v24

    #@30c
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@30f
    goto/16 :goto_2

    #@311
    .line 623
    :cond_b
    const/16 v22, 0x0

    #@313
    :try_start_1
    move-object/from16 v0, v22

    #@315
    move-object/from16 v1, p0

    #@317
    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    #@319
    goto :goto_3

    #@31a
    .line 640
    .end local v10    # "head":[B
    :catch_0
    move-exception v8

    #@31b
    .line 642
    .local v8, "e":Ljava/lang/Exception;
    const/16 v20, 0x7

    #@31d
    .line 643
    const/4 v10, 0x0

    #@31e
    .line 644
    .restart local v10    # "head":[B
    const/16 v7, 0xd0

    #@320
    goto/16 :goto_0

    #@322
    .line 629
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "id":J
    :cond_c
    invoke-static {v12, v13}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@325
    move-result-object v22

    #@326
    move-object/from16 v0, v22

    #@328
    move-object/from16 v1, v17

    #@32a
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@32c
    goto :goto_4
.end method

.method private handleDisconnectRequest()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    const/16 v3, 0xa0

    #@2
    .line 427
    .local v3, "code":I
    const/4 v13, 0x3

    #@3
    .line 428
    .local v13, "totalLength":I
    const/4 v5, 0x0

    #@4
    .line 430
    .local v5, "head":[B
    new-instance v12, Ljavax/obex/HeaderSet;

    #@6
    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    #@9
    .line 431
    .local v12, "request":Ljavax/obex/HeaderSet;
    new-instance v10, Ljavax/obex/HeaderSet;

    #@b
    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    #@e
    .line 433
    .local v10, "reply":Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    #@10
    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@12
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    #@15
    move-result v7

    #@16
    .line 434
    .local v7, "length":I
    shl-int/lit8 v14, v7, 0x8

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v15, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@1c
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    #@1f
    move-result v15

    #@20
    add-int v7, v14, v15

    #@22
    .line 436
    move-object/from16 v0, p0

    #@24
    iget-object v14, v0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@26
    invoke-static {v14}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@29
    move-result v14

    #@2a
    if-le v7, v14, :cond_2

    #@2c
    .line 437
    const/16 v3, 0xce

    #@2e
    .line 438
    const/4 v13, 0x3

    #@2f
    .line 502
    .end local v5    # "head":[B
    :cond_0
    :goto_0
    if-eqz v5, :cond_a

    #@31
    .line 503
    array-length v14, v5

    #@32
    add-int/lit8 v14, v14, 0x3

    #@34
    new-array v11, v14, [B

    #@36
    .line 507
    .local v11, "replyData":[B
    :goto_1
    int-to-byte v14, v3

    #@37
    const/4 v15, 0x0

    #@38
    aput-byte v14, v11, v15

    #@3a
    .line 508
    shr-int/lit8 v14, v13, 0x8

    #@3c
    int-to-byte v14, v14

    #@3d
    const/4 v15, 0x1

    #@3e
    aput-byte v14, v11, v15

    #@40
    .line 509
    int-to-byte v14, v13

    #@41
    const/4 v15, 0x2

    #@42
    aput-byte v14, v11, v15

    #@44
    .line 510
    if-eqz v5, :cond_1

    #@46
    .line 511
    array-length v14, v5

    #@47
    const/4 v15, 0x0

    #@48
    const/16 v16, 0x3

    #@4a
    move/from16 v0, v16

    #@4c
    invoke-static {v5, v15, v11, v0, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4f
    .line 517
    :cond_1
    move-object/from16 v0, p0

    #@51
    iget-object v14, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@53
    invoke-virtual {v14, v11}, Ljava/io/OutputStream;->write([B)V

    #@56
    .line 518
    move-object/from16 v0, p0

    #@58
    iget-object v14, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@5a
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    #@5d
    .line 424
    return-void

    #@5e
    .line 440
    .end local v11    # "replyData":[B
    .restart local v5    # "head":[B
    :cond_2
    const/4 v14, 0x3

    #@5f
    if-le v7, v14, :cond_4

    #@61
    .line 441
    add-int/lit8 v14, v7, -0x3

    #@63
    new-array v6, v14, [B

    #@65
    .line 442
    .local v6, "headers":[B
    move-object/from16 v0, p0

    #@67
    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@69
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    #@6c
    move-result v2

    #@6d
    .line 444
    .local v2, "bytesReceived":I
    :goto_2
    array-length v14, v6

    #@6e
    if-eq v2, v14, :cond_3

    #@70
    .line 445
    move-object/from16 v0, p0

    #@72
    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@74
    array-length v15, v6

    #@75
    sub-int/2addr v15, v2

    #@76
    invoke-virtual {v14, v6, v2, v15}, Ljava/io/InputStream;->read([BII)I

    #@79
    move-result v14

    #@7a
    add-int/2addr v2, v14

    #@7b
    goto :goto_2

    #@7c
    .line 449
    :cond_3
    invoke-static {v12, v6}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    #@7f
    .line 452
    .end local v2    # "bytesReceived":I
    .end local v6    # "headers":[B
    :cond_4
    move-object/from16 v0, p0

    #@81
    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@83
    invoke-virtual {v14}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@86
    move-result-wide v14

    #@87
    const-wide/16 v16, -0x1

    #@89
    cmp-long v14, v14, v16

    #@8b
    if-eqz v14, :cond_8

    #@8d
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@8f
    if-eqz v14, :cond_8

    #@91
    .line 453
    move-object/from16 v0, p0

    #@93
    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@95
    iget-object v15, v12, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@97
    invoke-static {v15}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@9a
    move-result-wide v16

    #@9b
    move-wide/from16 v0, v16

    #@9d
    invoke-virtual {v14, v0, v1}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@a0
    .line 458
    :goto_3
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@a2
    if-eqz v14, :cond_6

    #@a4
    .line 459
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@a6
    move-object/from16 v0, p0

    #@a8
    invoke-virtual {v0, v14}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    #@ab
    move-result v14

    #@ac
    if-nez v14, :cond_5

    #@ae
    .line 460
    const/16 v3, 0xc1

    #@b0
    .line 461
    move-object/from16 v0, p0

    #@b2
    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@b4
    .line 462
    iget-object v15, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@b6
    .line 461
    const/16 v16, 0x1

    #@b8
    move/from16 v0, v16

    #@ba
    invoke-static {v0, v15}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@bd
    move-result-object v15

    #@be
    invoke-virtual {v14, v15}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    #@c1
    .line 464
    :cond_5
    const/4 v14, 0x0

    #@c2
    iput-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@c4
    .line 467
    :cond_6
    const/16 v14, 0xc1

    #@c6
    if-eq v3, v14, :cond_0

    #@c8
    .line 469
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@ca
    if-eqz v14, :cond_7

    #@cc
    .line 470
    move-object/from16 v0, p0

    #@ce
    invoke-virtual {v0, v12}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    #@d1
    .line 471
    const/4 v14, 0x0

    #@d2
    iput-object v14, v12, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@d4
    .line 475
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    #@d6
    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@d8
    invoke-virtual {v14, v12, v10}, Ljavax/obex/ServerRequestHandler;->onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@db
    .line 482
    move-object/from16 v0, p0

    #@dd
    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@df
    invoke-virtual {v14}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@e2
    move-result-wide v8

    #@e3
    .line 483
    .local v8, "id":J
    const-wide/16 v14, -0x1

    #@e5
    cmp-long v14, v8, v14

    #@e7
    if-nez v14, :cond_9

    #@e9
    .line 484
    const/4 v14, 0x0

    #@ea
    iput-object v14, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@ec
    .line 489
    :goto_4
    const/4 v14, 0x0

    #@ed
    invoke-static {v10, v14}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@f0
    move-result-object v5

    #@f1
    .line 490
    .local v5, "head":[B
    array-length v14, v5

    #@f2
    add-int/lit8 v13, v14, 0x3

    #@f4
    .line 492
    move-object/from16 v0, p0

    #@f6
    iget v14, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@f8
    if-le v13, v14, :cond_0

    #@fa
    .line 493
    const/4 v13, 0x3

    #@fb
    .line 494
    const/4 v5, 0x0

    #@fc
    .line 495
    .local v5, "head":[B
    const/16 v3, 0xd0

    #@fe
    goto/16 :goto_0

    #@100
    .line 455
    .end local v8    # "id":J
    :cond_8
    move-object/from16 v0, p0

    #@102
    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@104
    const-wide/16 v16, 0x1

    #@106
    move-wide/from16 v0, v16

    #@108
    invoke-virtual {v14, v0, v1}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@10b
    goto :goto_3

    #@10c
    .line 476
    :catch_0
    move-exception v4

    #@10d
    .line 478
    .local v4, "e":Ljava/lang/Exception;
    const/16 v14, 0xd0

    #@10f
    const/4 v15, 0x0

    #@110
    move-object/from16 v0, p0

    #@112
    invoke-virtual {v0, v14, v15}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@115
    .line 479
    return-void

    #@116
    .line 486
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "id":J
    :cond_9
    invoke-static {v8, v9}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@119
    move-result-object v14

    #@11a
    iput-object v14, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@11c
    goto :goto_4

    #@11d
    .line 505
    .end local v5    # "head":[B
    .end local v8    # "id":J
    :cond_a
    const/4 v14, 0x3

    #@11e
    new-array v11, v14, [B

    #@120
    .restart local v11    # "replyData":[B
    goto/16 :goto_1
.end method

.method private handleGetRequest(I)V
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    new-instance v0, Ljavax/obex/ServerOperation;

    #@2
    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@4
    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@6
    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@8
    move-object v1, p0

    #@9
    move v3, p1

    #@a
    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    #@d
    .line 246
    .local v0, "op":Ljavax/obex/ServerOperation;
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@f
    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onGet(Ljavax/obex/Operation;)I

    #@12
    move-result v1

    #@13
    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    #@16
    move-result v7

    #@17
    .line 248
    .local v7, "response":I
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 249
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 243
    .end local v7    # "response":I
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 251
    :catch_0
    move-exception v6

    #@20
    .line 253
    .local v6, "e":Ljava/lang/Exception;
    const/16 v1, 0xd0

    #@22
    const/4 v2, 0x0

    #@23
    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@26
    goto :goto_0
.end method

.method private handlePutRequest(I)V
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    new-instance v0, Ljavax/obex/ServerOperation;

    #@2
    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@4
    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@6
    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@8
    move-object v1, p0

    #@9
    move v3, p1

    #@a
    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    #@d
    .line 200
    .local v0, "op":Ljavax/obex/ServerOperation;
    const/4 v7, -0x1

    #@e
    .line 202
    .local v7, "response":I
    :try_start_0
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    invoke-virtual {v0}, Ljavax/obex/ServerOperation;->isValidBody()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 206
    :cond_0
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@1a
    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onPut(Ljavax/obex/Operation;)I

    #@1d
    move-result v1

    #@1e
    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    #@21
    move-result v7

    #@22
    .line 208
    :goto_0
    const/16 v1, 0xa0

    #@24
    if-eq v7, v1, :cond_1

    #@26
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    #@28
    if-eqz v1, :cond_4

    #@2a
    .line 210
    :cond_1
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 212
    :goto_1
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@30
    if-nez v1, :cond_5

    #@32
    .line 213
    const/16 v1, 0x90

    #@34
    invoke-virtual {v0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    goto :goto_1

    #@38
    .line 217
    :catch_0
    move-exception v6

    #@39
    .line 224
    .local v6, "e":Ljava/lang/Exception;
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    #@3b
    if-nez v1, :cond_2

    #@3d
    .line 225
    const/16 v1, 0xd0

    #@3f
    const/4 v2, 0x0

    #@40
    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@43
    .line 197
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    #@44
    .line 203
    :cond_3
    :try_start_1
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@46
    .line 204
    iget-object v2, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@48
    iget-object v3, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@4a
    .line 203
    invoke-virtual {v1, v2, v3}, Ljavax/obex/ServerRequestHandler;->onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    #@4d
    move-result v1

    #@4e
    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    #@51
    move-result v7

    #@52
    goto :goto_0

    #@53
    .line 209
    :cond_4
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    #@56
    goto :goto_2

    #@57
    .line 215
    :cond_5
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@5a
    goto :goto_2
.end method

.method private handleSetPathRequest()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    const/16 v21, 0x3

    #@2
    .line 303
    .local v21, "totalLength":I
    const/4 v13, 0x0

    #@3
    .line 304
    .local v13, "head":[B
    const/4 v8, -0x1

    #@4
    .line 306
    .local v8, "code":I
    new-instance v20, Ljavax/obex/HeaderSet;

    #@6
    invoke-direct/range {v20 .. v20}, Ljavax/obex/HeaderSet;-><init>()V

    #@9
    .line 307
    .local v20, "request":Ljavax/obex/HeaderSet;
    new-instance v18, Ljavax/obex/HeaderSet;

    #@b
    invoke-direct/range {v18 .. v18}, Ljavax/obex/HeaderSet;-><init>()V

    #@e
    .line 309
    .local v18, "reply":Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@12
    move-object/from16 v22, v0

    #@14
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    #@17
    move-result v15

    #@18
    .line 310
    .local v15, "length":I
    shl-int/lit8 v22, v15, 0x8

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@1e
    move-object/from16 v23, v0

    #@20
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    #@23
    move-result v23

    #@24
    add-int v15, v22, v23

    #@26
    .line 311
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@2a
    move-object/from16 v22, v0

    #@2c
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    #@2f
    move-result v12

    #@30
    .line 312
    .local v12, "flags":I
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@34
    move-object/from16 v22, v0

    #@36
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->read()I

    #@39
    move-result v9

    #@3a
    .line 314
    .local v9, "constants":I
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@3e
    move-object/from16 v22, v0

    #@40
    invoke-static/range {v22 .. v22}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@43
    move-result v22

    #@44
    move/from16 v0, v22

    #@46
    if-le v15, v0, :cond_2

    #@48
    .line 315
    const/16 v8, 0xce

    #@4a
    .line 316
    const/16 v21, 0x3

    #@4c
    .line 401
    .end local v13    # "head":[B
    :cond_0
    :goto_0
    move/from16 v0, v21

    #@4e
    new-array v0, v0, [B

    #@50
    move-object/from16 v19, v0

    #@52
    .line 402
    .local v19, "replyData":[B
    int-to-byte v0, v8

    #@53
    move/from16 v22, v0

    #@55
    const/16 v23, 0x0

    #@57
    aput-byte v22, v19, v23

    #@59
    .line 403
    shr-int/lit8 v22, v21, 0x8

    #@5b
    move/from16 v0, v22

    #@5d
    int-to-byte v0, v0

    #@5e
    move/from16 v22, v0

    #@60
    const/16 v23, 0x1

    #@62
    aput-byte v22, v19, v23

    #@64
    .line 404
    move/from16 v0, v21

    #@66
    int-to-byte v0, v0

    #@67
    move/from16 v22, v0

    #@69
    const/16 v23, 0x2

    #@6b
    aput-byte v22, v19, v23

    #@6d
    .line 405
    if-eqz v13, :cond_1

    #@6f
    .line 406
    array-length v0, v13

    #@70
    move/from16 v22, v0

    #@72
    const/16 v23, 0x0

    #@74
    const/16 v24, 0x3

    #@76
    move/from16 v0, v23

    #@78
    move-object/from16 v1, v19

    #@7a
    move/from16 v2, v24

    #@7c
    move/from16 v3, v22

    #@7e
    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@81
    .line 412
    :cond_1
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@85
    move-object/from16 v22, v0

    #@87
    move-object/from16 v0, v22

    #@89
    move-object/from16 v1, v19

    #@8b
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@8e
    .line 413
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@92
    move-object/from16 v22, v0

    #@94
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->flush()V

    #@97
    .line 297
    return-void

    #@98
    .line 318
    .end local v19    # "replyData":[B
    .restart local v13    # "head":[B
    :cond_2
    const/16 v22, 0x5

    #@9a
    move/from16 v0, v22

    #@9c
    if-le v15, v0, :cond_5

    #@9e
    .line 319
    add-int/lit8 v22, v15, -0x5

    #@a0
    move/from16 v0, v22

    #@a2
    new-array v14, v0, [B

    #@a4
    .line 320
    .local v14, "headers":[B
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@a8
    move-object/from16 v22, v0

    #@aa
    move-object/from16 v0, v22

    #@ac
    invoke-virtual {v0, v14}, Ljava/io/InputStream;->read([B)I

    #@af
    move-result v7

    #@b0
    .line 322
    .local v7, "bytesReceived":I
    :goto_1
    array-length v0, v14

    #@b1
    move/from16 v22, v0

    #@b3
    move/from16 v0, v22

    #@b5
    if-eq v7, v0, :cond_3

    #@b7
    .line 323
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@bb
    move-object/from16 v22, v0

    #@bd
    array-length v0, v14

    #@be
    move/from16 v23, v0

    #@c0
    sub-int v23, v23, v7

    #@c2
    move-object/from16 v0, v22

    #@c4
    move/from16 v1, v23

    #@c6
    invoke-virtual {v0, v14, v7, v1}, Ljava/io/InputStream;->read([BII)I

    #@c9
    move-result v22

    #@ca
    add-int v7, v7, v22

    #@cc
    goto :goto_1

    #@cd
    .line 327
    :cond_3
    move-object/from16 v0, v20

    #@cf
    invoke-static {v0, v14}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    #@d2
    .line 329
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@d6
    move-object/from16 v22, v0

    #@d8
    invoke-virtual/range {v22 .. v22}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@db
    move-result-wide v22

    #@dc
    const-wide/16 v24, -0x1

    #@de
    cmp-long v22, v22, v24

    #@e0
    if-eqz v22, :cond_9

    #@e2
    move-object/from16 v0, v20

    #@e4
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@e6
    move-object/from16 v22, v0

    #@e8
    if-eqz v22, :cond_9

    #@ea
    .line 330
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@ee
    move-object/from16 v22, v0

    #@f0
    move-object/from16 v0, v20

    #@f2
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@f4
    move-object/from16 v23, v0

    #@f6
    invoke-static/range {v23 .. v23}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@f9
    move-result-wide v24

    #@fa
    move-object/from16 v0, v22

    #@fc
    move-wide/from16 v1, v24

    #@fe
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@101
    .line 335
    :goto_2
    move-object/from16 v0, v20

    #@103
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@105
    move-object/from16 v22, v0

    #@107
    if-eqz v22, :cond_5

    #@109
    .line 336
    move-object/from16 v0, v20

    #@10b
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@10d
    move-object/from16 v22, v0

    #@10f
    move-object/from16 v0, p0

    #@111
    move-object/from16 v1, v22

    #@113
    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    #@116
    move-result v22

    #@117
    if-nez v22, :cond_4

    #@119
    .line 337
    const/16 v8, 0xc1

    #@11b
    .line 338
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@11f
    move-object/from16 v22, v0

    #@121
    .line 339
    move-object/from16 v0, v20

    #@123
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@125
    move-object/from16 v23, v0

    #@127
    .line 338
    const/16 v24, 0x1

    #@129
    move/from16 v0, v24

    #@12b
    move-object/from16 v1, v23

    #@12d
    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@130
    move-result-object v23

    #@131
    invoke-virtual/range {v22 .. v23}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    #@134
    .line 341
    :cond_4
    const/16 v22, 0x0

    #@136
    move-object/from16 v0, v22

    #@138
    move-object/from16 v1, v20

    #@13a
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@13c
    .line 345
    .end local v7    # "bytesReceived":I
    .end local v14    # "headers":[B
    :cond_5
    const/16 v22, 0xc1

    #@13e
    move/from16 v0, v22

    #@140
    if-eq v8, v0, :cond_0

    #@142
    .line 348
    move-object/from16 v0, v20

    #@144
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@146
    move-object/from16 v22, v0

    #@148
    if-eqz v22, :cond_6

    #@14a
    .line 349
    move-object/from16 v0, p0

    #@14c
    move-object/from16 v1, v20

    #@14e
    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    #@151
    .line 350
    move-object/from16 v0, v20

    #@153
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@155
    move-object/from16 v22, v0

    #@157
    move-object/from16 v0, v22

    #@159
    array-length v0, v0

    #@15a
    move/from16 v22, v0

    #@15c
    move/from16 v0, v22

    #@15e
    new-array v0, v0, [B

    #@160
    move-object/from16 v22, v0

    #@162
    move-object/from16 v0, v22

    #@164
    move-object/from16 v1, v18

    #@166
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@168
    .line 351
    move-object/from16 v0, v20

    #@16a
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@16c
    move-object/from16 v22, v0

    #@16e
    move-object/from16 v0, v18

    #@170
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@172
    move-object/from16 v23, v0

    #@174
    .line 352
    move-object/from16 v0, v18

    #@176
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@178
    move-object/from16 v24, v0

    #@17a
    move-object/from16 v0, v24

    #@17c
    array-length v0, v0

    #@17d
    move/from16 v24, v0

    #@17f
    .line 351
    const/16 v25, 0x0

    #@181
    const/16 v26, 0x0

    #@183
    move-object/from16 v0, v22

    #@185
    move/from16 v1, v25

    #@187
    move-object/from16 v2, v23

    #@189
    move/from16 v3, v26

    #@18b
    move/from16 v4, v24

    #@18d
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@190
    .line 353
    const/16 v22, 0x0

    #@192
    move-object/from16 v0, v22

    #@194
    move-object/from16 v1, v20

    #@196
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@198
    .line 354
    const/16 v22, 0x0

    #@19a
    move-object/from16 v0, v22

    #@19c
    move-object/from16 v1, v20

    #@19e
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1a0
    .line 356
    :cond_6
    const/4 v6, 0x0

    #@1a1
    .line 357
    .local v6, "backup":Z
    const/4 v10, 0x1

    #@1a2
    .line 358
    .local v10, "create":Z
    and-int/lit8 v22, v12, 0x1

    #@1a4
    if-eqz v22, :cond_7

    #@1a6
    .line 359
    const/4 v6, 0x1

    #@1a7
    .line 361
    :cond_7
    and-int/lit8 v22, v12, 0x2

    #@1a9
    if-eqz v22, :cond_8

    #@1ab
    .line 362
    const/4 v10, 0x0

    #@1ac
    .line 366
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@1b0
    move-object/from16 v22, v0

    #@1b2
    move-object/from16 v0, v22

    #@1b4
    move-object/from16 v1, v20

    #@1b6
    move-object/from16 v2, v18

    #@1b8
    invoke-virtual {v0, v1, v2, v6, v10}, Ljavax/obex/ServerRequestHandler;->onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1bb
    move-result v8

    #@1bc
    .line 373
    move-object/from16 v0, p0

    #@1be
    invoke-direct {v0, v8}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    #@1c1
    move-result v8

    #@1c2
    .line 375
    move-object/from16 v0, v18

    #@1c4
    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@1c6
    move-object/from16 v22, v0

    #@1c8
    if-eqz v22, :cond_a

    #@1ca
    .line 376
    const/16 v22, 0x10

    #@1cc
    move/from16 v0, v22

    #@1ce
    new-array v0, v0, [B

    #@1d0
    move-object/from16 v22, v0

    #@1d2
    move-object/from16 v0, v22

    #@1d4
    move-object/from16 v1, p0

    #@1d6
    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    #@1d8
    .line 377
    move-object/from16 v0, v18

    #@1da
    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@1dc
    move-object/from16 v22, v0

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    #@1e2
    move-object/from16 v23, v0

    #@1e4
    const/16 v24, 0x0

    #@1e6
    const/16 v25, 0x0

    #@1e8
    const/16 v26, 0x10

    #@1ea
    move-object/from16 v0, v22

    #@1ec
    move/from16 v1, v24

    #@1ee
    move-object/from16 v2, v23

    #@1f0
    move/from16 v3, v25

    #@1f2
    move/from16 v4, v26

    #@1f4
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f7
    .line 382
    :goto_3
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@1fb
    move-object/from16 v22, v0

    #@1fd
    invoke-virtual/range {v22 .. v22}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@200
    move-result-wide v16

    #@201
    .line 383
    .local v16, "id":J
    const-wide/16 v22, -0x1

    #@203
    cmp-long v22, v16, v22

    #@205
    if-nez v22, :cond_b

    #@207
    .line 384
    const/16 v22, 0x0

    #@209
    move-object/from16 v0, v22

    #@20b
    move-object/from16 v1, v18

    #@20d
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@20f
    .line 389
    :goto_4
    const/16 v22, 0x0

    #@211
    move-object/from16 v0, v18

    #@213
    move/from16 v1, v22

    #@215
    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@218
    move-result-object v13

    #@219
    .line 390
    .local v13, "head":[B
    array-length v0, v13

    #@21a
    move/from16 v22, v0

    #@21c
    add-int/lit8 v21, v22, 0x3

    #@21e
    .line 392
    move-object/from16 v0, p0

    #@220
    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    #@222
    move/from16 v22, v0

    #@224
    move/from16 v0, v21

    #@226
    move/from16 v1, v22

    #@228
    if-le v0, v1, :cond_0

    #@22a
    .line 393
    const/16 v21, 0x3

    #@22c
    .line 394
    const/4 v13, 0x0

    #@22d
    .line 395
    .local v13, "head":[B
    const/16 v8, 0xd0

    #@22f
    goto/16 :goto_0

    #@231
    .line 332
    .end local v6    # "backup":Z
    .end local v10    # "create":Z
    .end local v16    # "id":J
    .restart local v7    # "bytesReceived":I
    .restart local v14    # "headers":[B
    :cond_9
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@235
    move-object/from16 v22, v0

    #@237
    const-wide/16 v24, 0x1

    #@239
    move-object/from16 v0, v22

    #@23b
    move-wide/from16 v1, v24

    #@23d
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@240
    goto/16 :goto_2

    #@242
    .line 367
    .end local v7    # "bytesReceived":I
    .end local v14    # "headers":[B
    .restart local v6    # "backup":Z
    .restart local v10    # "create":Z
    :catch_0
    move-exception v11

    #@243
    .line 369
    .local v11, "e":Ljava/lang/Exception;
    const/16 v22, 0xd0

    #@245
    const/16 v23, 0x0

    #@247
    move-object/from16 v0, p0

    #@249
    move/from16 v1, v22

    #@24b
    move-object/from16 v2, v23

    #@24d
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@250
    .line 370
    return-void

    #@251
    .line 379
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v22, 0x0

    #@253
    move-object/from16 v0, v22

    #@255
    move-object/from16 v1, p0

    #@257
    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    #@259
    goto :goto_3

    #@25a
    .line 386
    .restart local v16    # "id":J
    :cond_b
    invoke-static/range {v16 .. v17}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@25d
    move-result-object v22

    #@25e
    move-object/from16 v0, v22

    #@260
    move-object/from16 v1, v18

    #@262
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@264
    goto :goto_4
.end method

.method private validateResponseCode(I)I
    .locals 2
    .param p1, "code"    # I

    #@0
    .prologue
    const/16 v1, 0xd0

    #@2
    .line 713
    const/16 v0, 0xa0

    #@4
    if-lt p1, v0, :cond_0

    #@6
    const/16 v0, 0xa6

    #@8
    if-gt p1, v0, :cond_0

    #@a
    .line 714
    return p1

    #@b
    .line 716
    :cond_0
    const/16 v0, 0xb0

    #@d
    if-lt p1, v0, :cond_1

    #@f
    .line 717
    const/16 v0, 0xb5

    #@11
    if-gt p1, v0, :cond_1

    #@13
    .line 718
    return p1

    #@14
    .line 720
    :cond_1
    const/16 v0, 0xc0

    #@16
    if-lt p1, v0, :cond_2

    #@18
    .line 721
    const/16 v0, 0xcf

    #@1a
    if-gt p1, v0, :cond_2

    #@1c
    .line 722
    return p1

    #@1d
    .line 724
    :cond_2
    if-lt p1, v1, :cond_3

    #@1f
    .line 725
    const/16 v0, 0xd5

    #@21
    if-gt p1, v0, :cond_3

    #@23
    .line 726
    return p1

    #@24
    .line 728
    :cond_3
    const/16 v0, 0xe0

    #@26
    if-lt p1, v0, :cond_4

    #@28
    .line 729
    const/16 v0, 0xe1

    #@2a
    if-gt p1, v0, :cond_4

    #@2c
    .line 730
    return p1

    #@2d
    .line 732
    :cond_4
    return v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 683
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 684
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    #@7
    invoke-virtual {v1}, Ljavax/obex/ServerRequestHandler;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 688
    :cond_0
    const/4 v1, 0x1

    #@b
    :try_start_1
    iput-boolean v1, p0, Ljavax/obex/ServerSession;->mClosed:Z

    #@d
    .line 689
    iget-object v1, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 690
    iget-object v1, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@16
    .line 691
    :cond_1
    iget-object v1, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 692
    iget-object v1, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@1c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    #@1f
    .line 693
    :cond_2
    iget-object v1, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@21
    if-eqz v1, :cond_3

    #@23
    .line 694
    iget-object v1, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@25
    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 698
    :cond_3
    :goto_0
    const/4 v1, 0x0

    #@29
    :try_start_2
    iput-object v1, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@2b
    .line 699
    const/4 v1, 0x0

    #@2c
    iput-object v1, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@2e
    .line 700
    const/4 v1, 0x0

    #@2f
    iput-object v1, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@31
    .line 701
    const/4 v1, 0x0

    #@32
    iput-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    monitor-exit p0

    #@35
    .line 682
    return-void

    #@36
    :catchall_0
    move-exception v1

    #@37
    monitor-exit p0

    #@38
    throw v1

    #@39
    .line 695
    :catch_0
    move-exception v0

    #@3a
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getTransport()Ljavax/obex/ObexTransport;
    .locals 1

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    #@2
    return-object v0
.end method

.method public run()V
    .locals 8

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    .line 96
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_0

    #@3
    :try_start_0
    iget-boolean v6, p0, Ljavax/obex/ServerSession;->mClosed:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    if-eqz v6, :cond_1

    #@7
    .line 152
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljavax/obex/ServerSession;->close()V

    #@a
    .line 92
    return-void

    #@b
    .line 98
    :cond_1
    :try_start_1
    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@d
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    #@10
    move-result v5

    #@11
    .line 100
    .local v5, "requestType":I
    sparse-switch v5, :sswitch_data_0

    #@14
    .line 138
    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@16
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    #@19
    move-result v4

    #@1a
    .line 139
    .local v4, "length":I
    shl-int/lit8 v6, v4, 0x8

    #@1c
    iget-object v7, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@1e
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    #@21
    move-result v7

    #@22
    add-int v4, v6, v7

    #@24
    .line 140
    const/4 v3, 0x3

    #@25
    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_2

    #@27
    .line 141
    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    #@29
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    #@2c
    .line 140
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_2

    #@2f
    .line 102
    .end local v3    # "i":I
    .end local v4    # "length":I
    :sswitch_0
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleConnectRequest()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    goto :goto_0

    #@33
    .line 147
    .end local v5    # "requestType":I
    :catch_0
    move-exception v2

    #@34
    .line 148
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "Obex ServerSession"

    #@37
    const-string/jumbo v7, "Exception occured - ignoring"

    #@3a
    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_1

    #@3e
    .line 106
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "requestType":I
    :sswitch_1
    :try_start_2
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleDisconnectRequest()V

    #@41
    .line 107
    const/4 v0, 0x1

    #@42
    .line 108
    goto :goto_0

    #@43
    .line 112
    :sswitch_2
    invoke-direct {p0, v5}, Ljavax/obex/ServerSession;->handleGetRequest(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@46
    goto :goto_0

    #@47
    .line 149
    .end local v5    # "requestType":I
    :catch_1
    move-exception v1

    #@48
    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Obex ServerSession"

    #@4b
    const-string/jumbo v7, "Exception occured - ignoring"

    #@4e
    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_1

    #@52
    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "requestType":I
    :sswitch_3
    :try_start_3
    invoke-direct {p0, v5}, Ljavax/obex/ServerSession;->handlePutRequest(I)V

    #@55
    goto :goto_0

    #@56
    .line 121
    :sswitch_4
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleSetPathRequest()V

    #@59
    goto :goto_0

    #@5a
    .line 124
    :sswitch_5
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleAbortRequest()V

    #@5d
    goto :goto_0

    #@5e
    .line 128
    :sswitch_6
    const/4 v0, 0x1

    #@5f
    .line 129
    goto :goto_0

    #@60
    .line 143
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    :cond_2
    const/16 v6, 0xd1

    #@62
    const/4 v7, 0x0

    #@63
    invoke-virtual {p0, v6, v7}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@66
    goto :goto_0

    #@67
    .line 100
    nop

    #@68
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_6
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_3
        0x83 -> :sswitch_2
        0x85 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method public sendResponse(I[B)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x3

    #@3
    const/4 v4, 0x0

    #@4
    .line 264
    const/4 v2, 0x3

    #@5
    .line 265
    .local v2, "totalLength":I
    const/4 v0, 0x0

    #@6
    .line 266
    .local v0, "data":[B
    iget-object v1, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    #@8
    .line 267
    .local v1, "op":Ljava/io/OutputStream;
    if-nez v1, :cond_0

    #@a
    .line 268
    return-void

    #@b
    .line 271
    :cond_0
    if-eqz p2, :cond_1

    #@d
    .line 272
    array-length v3, p2

    #@e
    add-int/lit8 v2, v3, 0x3

    #@10
    .line 273
    new-array v0, v2, [B

    #@12
    .line 274
    .local v0, "data":[B
    int-to-byte v3, p1

    #@13
    aput-byte v3, v0, v4

    #@15
    .line 275
    shr-int/lit8 v3, v2, 0x8

    #@17
    int-to-byte v3, v3

    #@18
    aput-byte v3, v0, v6

    #@1a
    .line 276
    int-to-byte v3, v2

    #@1b
    aput-byte v3, v0, v7

    #@1d
    .line 277
    array-length v3, p2

    #@1e
    invoke-static {p2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
    .line 284
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    #@24
    .line 285
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    #@27
    .line 263
    return-void

    #@28
    .line 279
    .local v0, "data":[B
    :cond_1
    new-array v0, v2, [B

    #@2a
    .line 280
    .local v0, "data":[B
    int-to-byte v3, p1

    #@2b
    aput-byte v3, v0, v4

    #@2d
    .line 281
    aput-byte v4, v0, v6

    #@2f
    .line 282
    aput-byte v5, v0, v7

    #@31
    goto :goto_0
.end method
