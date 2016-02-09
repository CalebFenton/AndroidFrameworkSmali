.class public final Ljavax/obex/ClientSession;
.super Ljavax/obex/ObexSession;
.source "ClientSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientSession"


# instance fields
.field private mConnectionId:[B

.field private final mInput:Ljava/io/InputStream;

.field private final mLocalSrmSupported:Z

.field private mMaxTxPacketSize:I

.field private mObexConnected:Z

.field private mOpen:Z

.field private final mOutput:Ljava/io/OutputStream;

.field private mRequestActive:Z

.field private final mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method public constructor <init>(Ljavax/obex/ObexTransport;)V
    .locals 1
    .param p1, "trans"    # Ljavax/obex/ObexTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@6
    .line 63
    const/16 v0, 0xff

    #@8
    iput v0, p0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@a
    .line 76
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@10
    .line 77
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    #@16
    .line 78
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    #@19
    .line 79
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z

    #@1c
    .line 80
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->isSrmSupported()Z

    #@1f
    move-result v0

    #@20
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mLocalSrmSupported:Z

    #@22
    .line 81
    iput-object p1, p0, Ljavax/obex/ClientSession;->mTransport:Ljavax/obex/ObexTransport;

    #@24
    .line 75
    return-void
.end method

.method public constructor <init>(Ljavax/obex/ObexTransport;Z)V
    .locals 1
    .param p1, "trans"    # Ljavax/obex/ObexTransport;
    .param p2, "supportsSrm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@6
    .line 63
    const/16 v0, 0xff

    #@8
    iput v0, p0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@a
    .line 92
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@10
    .line 93
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    #@16
    .line 94
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    #@19
    .line 95
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z

    #@1c
    .line 96
    iput-boolean p2, p0, Ljavax/obex/ClientSession;->mLocalSrmSupported:Z

    #@1e
    .line 97
    iput-object p1, p0, Ljavax/obex/ClientSession;->mTransport:Ljavax/obex/ObexTransport;

    #@20
    .line 91
    return-void
.end method

.method private declared-synchronized setRequestActive()V
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
    .line 438
    :try_start_0
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 439
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "OBEX request is already being performed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 441
    :cond_0
    const/4 v0, 0x1

    #@12
    :try_start_1
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 437
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 608
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    #@3
    .line 609
    iget-object v0, p0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@8
    .line 610
    iget-object v0, p0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@d
    .line 607
    return-void
.end method

.method public connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 12
    .param p1, "header"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, 0x1

    #@2
    const/16 v9, 0x10

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    .line 101
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    #@9
    .line 102
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 103
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Already connected to server"

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 105
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    #@19
    .line 107
    const/4 v8, 0x4

    #@1a
    .line 108
    .local v8, "totalLength":I
    const/4 v6, 0x0

    #@1b
    .line 111
    .local v6, "head":[B
    if-eqz p1, :cond_2

    #@1d
    .line 112
    iget-object v0, p1, Ljavax/obex/HeaderSet;->nonce:[B

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 113
    new-array v0, v9, [B

    #@23
    iput-object v0, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@25
    .line 114
    iget-object v0, p1, Ljavax/obex/HeaderSet;->nonce:[B

    #@27
    iget-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@29
    invoke-static {v0, v5, v1, v5, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2c
    .line 116
    :cond_1
    invoke-static {p1, v5}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@2f
    move-result-object v6

    #@30
    .line 117
    .local v6, "head":[B
    array-length v0, v6

    #@31
    add-int/lit8 v8, v0, 0x4

    #@33
    .line 128
    .end local v6    # "head":[B
    :cond_2
    new-array v2, v8, [B

    #@35
    .line 129
    .local v2, "requestPacket":[B
    iget-object v0, p0, Ljavax/obex/ClientSession;->mTransport:Ljavax/obex/ObexTransport;

    #@37
    invoke-static {v0}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@3a
    move-result v7

    #@3b
    .line 132
    .local v7, "maxRxPacketSize":I
    aput-byte v9, v2, v5

    #@3d
    .line 133
    aput-byte v5, v2, v10

    #@3f
    .line 134
    shr-int/lit8 v0, v7, 0x8

    #@41
    int-to-byte v0, v0

    #@42
    const/4 v1, 0x2

    #@43
    aput-byte v0, v2, v1

    #@45
    .line 135
    and-int/lit16 v0, v7, 0xff

    #@47
    int-to-byte v0, v0

    #@48
    const/4 v1, 0x3

    #@49
    aput-byte v0, v2, v1

    #@4b
    .line 136
    if-eqz v6, :cond_3

    #@4d
    .line 137
    array-length v0, v6

    #@4e
    invoke-static {v6, v5, v2, v11, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@51
    .line 142
    :cond_3
    array-length v0, v2

    #@52
    add-int/lit8 v0, v0, 0x3

    #@54
    const v1, 0xfffe

    #@57
    if-le v0, v1, :cond_4

    #@59
    .line 143
    new-instance v0, Ljava/io/IOException;

    #@5b
    const-string/jumbo v1, "Packet size exceeds max packet size for connect"

    #@5e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@61
    throw v0

    #@62
    .line 146
    :cond_4
    new-instance v3, Ljavax/obex/HeaderSet;

    #@64
    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    #@67
    .line 147
    .local v3, "returnHeaderSet":Ljavax/obex/HeaderSet;
    const/16 v1, 0x80

    #@69
    move-object v0, p0

    #@6a
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@6d
    .line 158
    iget v0, v3, Ljavax/obex/HeaderSet;->responseCode:I

    #@6f
    const/16 v1, 0xa0

    #@71
    if-ne v0, v1, :cond_5

    #@73
    .line 159
    iput-boolean v10, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    #@75
    .line 161
    :cond_5
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    #@78
    .line 163
    return-object v3
.end method

.method public delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 2
    .param p1, "header"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-virtual {p0, p1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    #@3
    move-result-object v0

    #@4
    .line 218
    .local v0, "op":Ljavax/obex/Operation;
    invoke-interface {v0}, Ljavax/obex/Operation;->getResponseCode()I

    #@7
    .line 219
    invoke-interface {v0}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    #@a
    move-result-object v1

    #@b
    .line 220
    .local v1, "returnValue":Ljavax/obex/HeaderSet;
    invoke-interface {v0}, Ljavax/obex/Operation;->close()V

    #@e
    .line 222
    return-object v1
.end method

.method public disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 8
    .param p1, "header"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x10

    #@2
    const/4 v6, 0x4

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    .line 226
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 227
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "Not connected to the server"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 229
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    #@15
    .line 231
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    #@18
    .line 233
    const/4 v2, 0x0

    #@19
    .line 234
    .local v2, "head":[B
    if-eqz p1, :cond_3

    #@1b
    .line 235
    iget-object v0, p1, Ljavax/obex/HeaderSet;->nonce:[B

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 236
    new-array v0, v7, [B

    #@21
    iput-object v0, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@23
    .line 237
    iget-object v0, p1, Ljavax/obex/HeaderSet;->nonce:[B

    #@25
    iget-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@27
    invoke-static {v0, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2a
    .line 240
    :cond_1
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 241
    new-array v0, v6, [B

    #@30
    iput-object v0, p1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@32
    .line 242
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@34
    iget-object v1, p1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@36
    invoke-static {v0, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@39
    .line 244
    :cond_2
    invoke-static {p1, v5}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@3c
    move-result-object v2

    #@3d
    .line 246
    .local v2, "head":[B
    array-length v0, v2

    #@3e
    add-int/lit8 v0, v0, 0x3

    #@40
    iget v1, p0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@42
    if-le v0, v1, :cond_4

    #@44
    .line 247
    new-instance v0, Ljava/io/IOException;

    #@46
    const-string/jumbo v1, "Packet size exceeds max packet size"

    #@49
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 251
    .local v2, "head":[B
    :cond_3
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 252
    const/4 v0, 0x5

    #@52
    new-array v2, v0, [B

    #@54
    .line 253
    .local v2, "head":[B
    const/16 v0, -0x35

    #@56
    aput-byte v0, v2, v5

    #@58
    .line 254
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@5a
    const/4 v1, 0x1

    #@5b
    invoke-static {v0, v5, v2, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5e
    .line 258
    .end local v2    # "head":[B
    :cond_4
    new-instance v3, Ljavax/obex/HeaderSet;

    #@60
    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    #@63
    .line 259
    .local v3, "returnHeaderSet":Ljavax/obex/HeaderSet;
    const/16 v1, 0x81

    #@65
    move-object v0, p0

    #@66
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@69
    .line 271
    monitor-enter p0

    #@6a
    .line 272
    const/4 v0, 0x0

    #@6b
    :try_start_0
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    #@6d
    .line 273
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    monitor-exit p0

    #@71
    .line 276
    return-object v3

    #@72
    .line 271
    :catchall_0
    move-exception v0

    #@73
    monitor-exit p0

    #@74
    throw v0
.end method

.method public declared-synchronized ensureOpen()V
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
    .line 420
    :try_start_0
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 421
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "Connection closed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 419
    return-void
.end method

.method public get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .locals 7
    .param p1, "header"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    const/4 v5, 0x4

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 168
    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    #@7
    if-nez v1, :cond_0

    #@9
    .line 169
    new-instance v1, Ljava/io/IOException;

    #@b
    const-string/jumbo v2, "Not connected to the server"

    #@e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 171
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    #@15
    .line 173
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    #@18
    .line 176
    if-nez p1, :cond_4

    #@1a
    .line 177
    new-instance v0, Ljavax/obex/HeaderSet;

    #@1c
    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    #@1f
    .line 186
    .local v0, "head":Ljavax/obex/HeaderSet;
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 187
    new-array v1, v5, [B

    #@25
    iput-object v1, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@27
    .line 188
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@29
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@2b
    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 191
    :cond_2
    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mLocalSrmSupported:Z

    #@30
    if-eqz v1, :cond_3

    #@32
    .line 192
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@35
    move-result-object v1

    #@36
    const/16 v2, 0x97

    #@38
    invoke-virtual {v0, v2, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@3b
    .line 202
    :cond_3
    new-instance v1, Ljavax/obex/ClientOperation;

    #@3d
    iget v2, p0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@3f
    invoke-direct {v1, v2, p0, v0, v4}, Ljavax/obex/ClientOperation;-><init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V

    #@42
    return-object v1

    #@43
    .line 179
    .end local v0    # "head":Ljavax/obex/HeaderSet;
    :cond_4
    move-object v0, p1

    #@44
    .line 180
    .restart local v0    # "head":Ljavax/obex/HeaderSet;
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 181
    new-array v1, v6, [B

    #@4a
    iput-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@4c
    .line 182
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@4e
    iget-object v2, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@50
    invoke-static {v1, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@53
    goto :goto_0
.end method

.method public getConnectionID()J
    .locals 2

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 282
    const-wide/16 v0, -0x1

    #@6
    return-wide v0

    #@7
    .line 284
    :cond_0
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@9
    invoke-static {v0}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public isSrmSupported()Z
    .locals 1

    #@0
    .prologue
    .line 614
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mLocalSrmSupported:Z

    #@2
    return v0
.end method

.method public put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .locals 6
    .param p1, "header"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x10

    #@2
    const/4 v4, 0x4

    #@3
    const/4 v3, 0x0

    #@4
    .line 288
    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    #@6
    if-nez v1, :cond_0

    #@8
    .line 289
    new-instance v1, Ljava/io/IOException;

    #@a
    const-string/jumbo v2, "Not connected to the server"

    #@d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 291
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    #@14
    .line 293
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    #@17
    .line 295
    if-nez p1, :cond_4

    #@19
    .line 296
    new-instance v0, Ljavax/obex/HeaderSet;

    #@1b
    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    #@1e
    .line 307
    .local v0, "head":Ljavax/obex/HeaderSet;
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 309
    new-array v1, v4, [B

    #@24
    iput-object v1, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@26
    .line 310
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@28
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@2a
    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2d
    .line 313
    :cond_2
    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mLocalSrmSupported:Z

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 314
    const/4 v1, 0x1

    #@32
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@35
    move-result-object v1

    #@36
    const/16 v2, 0x97

    #@38
    invoke-virtual {v0, v2, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@3b
    .line 322
    :cond_3
    new-instance v1, Ljavax/obex/ClientOperation;

    #@3d
    iget v2, p0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@3f
    invoke-direct {v1, v2, p0, v0, v3}, Ljavax/obex/ClientOperation;-><init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V

    #@42
    return-object v1

    #@43
    .line 298
    .end local v0    # "head":Ljavax/obex/HeaderSet;
    :cond_4
    move-object v0, p1

    #@44
    .line 300
    .restart local v0    # "head":Ljavax/obex/HeaderSet;
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 301
    new-array v1, v5, [B

    #@4a
    iput-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@4c
    .line 302
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    #@4e
    iget-object v2, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@50
    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@53
    goto :goto_0
.end method

.method public sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z
    .locals 17
    .param p1, "opCode"    # I
    .param p2, "head"    # [B
    .param p3, "header"    # Ljavax/obex/HeaderSet;
    .param p4, "privateInput"    # Ljavax/obex/PrivateInputStream;
    .param p5, "srmActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    if-eqz p2, :cond_0

    #@2
    .line 463
    move-object/from16 v0, p2

    #@4
    array-length v2, v0

    #@5
    add-int/lit8 v2, v2, 0x3

    #@7
    const v3, 0xfffe

    #@a
    if-le v2, v3, :cond_0

    #@c
    .line 465
    new-instance v2, Ljava/io/IOException;

    #@e
    const-string/jumbo v3, "header too large "

    #@11
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 469
    :cond_0
    const/4 v15, 0x0

    #@16
    .line 470
    .local v15, "skipSend":Z
    const/4 v14, 0x0

    #@17
    .line 471
    .local v14, "skipReceive":Z
    if-eqz p5, :cond_1

    #@19
    .line 472
    const/4 v2, 0x2

    #@1a
    move/from16 v0, p1

    #@1c
    if-ne v0, v2, :cond_3

    #@1e
    .line 474
    const/4 v14, 0x1

    #@1f
    .line 488
    :cond_1
    :goto_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    #@21
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@24
    .line 489
    .local v13, "out":Ljava/io/ByteArrayOutputStream;
    move/from16 v0, p1

    #@26
    int-to-byte v2, v0

    #@27
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2a
    .line 492
    if-nez p2, :cond_5

    #@2c
    .line 493
    const/4 v2, 0x0

    #@2d
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@30
    .line 494
    const/4 v2, 0x3

    #@31
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@34
    .line 501
    :goto_1
    if-nez v15, :cond_2

    #@36
    .line 503
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    #@3a
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    #@41
    .line 508
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    #@45
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    #@48
    .line 511
    :cond_2
    if-nez v14, :cond_10

    #@4a
    .line 512
    move-object/from16 v0, p0

    #@4c
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@4e
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@51
    move-result v2

    #@52
    move-object/from16 v0, p3

    #@54
    iput v2, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@56
    .line 514
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@5a
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@5d
    move-result v2

    #@5e
    shl-int/lit8 v2, v2, 0x8

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@64
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    #@67
    move-result v3

    #@68
    or-int v12, v2, v3

    #@6a
    .line 516
    .local v12, "length":I
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Ljavax/obex/ClientSession;->mTransport:Ljavax/obex/ObexTransport;

    #@6e
    invoke-static {v2}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@71
    move-result v2

    #@72
    if-le v12, v2, :cond_6

    #@74
    .line 517
    new-instance v2, Ljava/io/IOException;

    #@76
    const-string/jumbo v3, "Packet received exceeds packet size limit"

    #@79
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v2

    #@7d
    .line 475
    .end local v12    # "length":I
    .end local v13    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    const/4 v2, 0x3

    #@7e
    move/from16 v0, p1

    #@80
    if-ne v0, v2, :cond_4

    #@82
    .line 478
    const/4 v14, 0x1

    #@83
    goto :goto_0

    #@84
    .line 479
    :cond_4
    const/16 v2, 0x83

    #@86
    move/from16 v0, p1

    #@88
    if-ne v0, v2, :cond_1

    #@8a
    .line 482
    const/4 v15, 0x1

    #@8b
    goto :goto_0

    #@8c
    .line 496
    .restart local v13    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_5
    move-object/from16 v0, p2

    #@8e
    array-length v2, v0

    #@8f
    add-int/lit8 v2, v2, 0x3

    #@91
    shr-int/lit8 v2, v2, 0x8

    #@93
    int-to-byte v2, v2

    #@94
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@97
    .line 497
    move-object/from16 v0, p2

    #@99
    array-length v2, v0

    #@9a
    add-int/lit8 v2, v2, 0x3

    #@9c
    int-to-byte v2, v2

    #@9d
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@a0
    .line 498
    move-object/from16 v0, p2

    #@a2
    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@a5
    goto :goto_1

    #@a6
    .line 519
    .restart local v12    # "length":I
    :cond_6
    const/4 v2, 0x3

    #@a7
    if-le v12, v2, :cond_10

    #@a9
    .line 520
    const/4 v10, 0x0

    #@aa
    .line 521
    .local v10, "data":[B
    const/16 v2, 0x80

    #@ac
    move/from16 v0, p1

    #@ae
    if-ne v0, v2, :cond_a

    #@b0
    .line 523
    move-object/from16 v0, p0

    #@b2
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@b4
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@b7
    move-result v16

    #@b8
    .line 525
    .local v16, "version":I
    move-object/from16 v0, p0

    #@ba
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@bc
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@bf
    move-result v11

    #@c0
    .line 526
    .local v11, "flags":I
    move-object/from16 v0, p0

    #@c2
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@c4
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@c7
    move-result v2

    #@c8
    shl-int/lit8 v2, v2, 0x8

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-object v3, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@ce
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    #@d1
    move-result v3

    #@d2
    add-int/2addr v2, v3

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput v2, v0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@d7
    .line 529
    move-object/from16 v0, p0

    #@d9
    iget v2, v0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@db
    const v3, 0xfc00

    #@de
    if-le v2, v3, :cond_7

    #@e0
    .line 530
    const v2, 0xfc00

    #@e3
    move-object/from16 v0, p0

    #@e5
    iput v2, v0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@e7
    .line 534
    :cond_7
    move-object/from16 v0, p0

    #@e9
    iget v2, v0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v3, v0, Ljavax/obex/ClientSession;->mTransport:Ljavax/obex/ObexTransport;

    #@ef
    invoke-static {v3}, Ljavax/obex/ObexHelper;->getMaxTxPacketSize(Ljavax/obex/ObexTransport;)I

    #@f2
    move-result v3

    #@f3
    if-le v2, v3, :cond_8

    #@f5
    .line 537
    const-string/jumbo v2, "ClientSession"

    #@f8
    new-instance v3, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v5, "An OBEX packet size of "

    #@100
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v3

    #@104
    move-object/from16 v0, p0

    #@106
    iget v5, v0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@108
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v3

    #@10c
    const-string/jumbo v5, "was"

    #@10f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v3

    #@113
    .line 538
    const-string/jumbo v5, " requested. Transport only allows: "

    #@116
    .line 537
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v3

    #@11a
    .line 539
    move-object/from16 v0, p0

    #@11c
    iget-object v5, v0, Ljavax/obex/ClientSession;->mTransport:Ljavax/obex/ObexTransport;

    #@11e
    invoke-static {v5}, Ljavax/obex/ObexHelper;->getMaxTxPacketSize(Ljavax/obex/ObexTransport;)I

    #@121
    move-result v5

    #@122
    .line 537
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    move-result-object v3

    #@126
    .line 540
    const-string/jumbo v5, " Lowering limit to this value."

    #@129
    .line 537
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v3

    #@12d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v3

    #@131
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@134
    .line 541
    move-object/from16 v0, p0

    #@136
    iget-object v2, v0, Ljavax/obex/ClientSession;->mTransport:Ljavax/obex/ObexTransport;

    #@138
    invoke-static {v2}, Ljavax/obex/ObexHelper;->getMaxTxPacketSize(Ljavax/obex/ObexTransport;)I

    #@13b
    move-result v2

    #@13c
    move-object/from16 v0, p0

    #@13e
    iput v2, v0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@140
    .line 544
    :cond_8
    const/4 v2, 0x7

    #@141
    if-le v12, v2, :cond_9

    #@143
    .line 545
    add-int/lit8 v2, v12, -0x7

    #@145
    new-array v10, v2, [B

    #@147
    .line 547
    .local v10, "data":[B
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@14b
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->read([B)I

    #@14e
    move-result v9

    #@14f
    .line 548
    .local v9, "bytesReceived":I
    :goto_2
    add-int/lit8 v2, v12, -0x7

    #@151
    if-eq v9, v2, :cond_c

    #@153
    .line 549
    move-object/from16 v0, p0

    #@155
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@157
    array-length v3, v10

    #@158
    sub-int/2addr v3, v9

    #@159
    invoke-virtual {v2, v10, v9, v3}, Ljava/io/InputStream;->read([BII)I

    #@15c
    move-result v2

    #@15d
    add-int/2addr v9, v2

    #@15e
    goto :goto_2

    #@15f
    .line 553
    .end local v9    # "bytesReceived":I
    .local v10, "data":[B
    :cond_9
    const/4 v2, 0x1

    #@160
    return v2

    #@161
    .line 556
    .end local v11    # "flags":I
    .end local v16    # "version":I
    :cond_a
    add-int/lit8 v2, v12, -0x3

    #@163
    new-array v10, v2, [B

    #@165
    .line 557
    .local v10, "data":[B
    move-object/from16 v0, p0

    #@167
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@169
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->read([B)I

    #@16c
    move-result v9

    #@16d
    .line 559
    .restart local v9    # "bytesReceived":I
    :goto_3
    add-int/lit8 v2, v12, -0x3

    #@16f
    if-eq v9, v2, :cond_b

    #@171
    .line 560
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    #@175
    array-length v3, v10

    #@176
    sub-int/2addr v3, v9

    #@177
    invoke-virtual {v2, v10, v9, v3}, Ljava/io/InputStream;->read([BII)I

    #@17a
    move-result v2

    #@17b
    add-int/2addr v9, v2

    #@17c
    goto :goto_3

    #@17d
    .line 562
    :cond_b
    const/16 v2, 0xff

    #@17f
    move/from16 v0, p1

    #@181
    if-ne v0, v2, :cond_c

    #@183
    .line 563
    const/4 v2, 0x1

    #@184
    return v2

    #@185
    .line 567
    :cond_c
    move-object/from16 v0, p3

    #@187
    invoke-static {v0, v10}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    #@18a
    move-result-object v8

    #@18b
    .line 568
    .local v8, "body":[B
    if-eqz p4, :cond_d

    #@18d
    if-eqz v8, :cond_d

    #@18f
    .line 569
    const/4 v2, 0x1

    #@190
    move-object/from16 v0, p4

    #@192
    invoke-virtual {v0, v8, v2}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V

    #@195
    .line 572
    :cond_d
    move-object/from16 v0, p3

    #@197
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@199
    if-eqz v2, :cond_e

    #@19b
    .line 573
    const/4 v2, 0x4

    #@19c
    new-array v2, v2, [B

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iput-object v2, v0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@1a2
    .line 574
    move-object/from16 v0, p3

    #@1a4
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-object v3, v0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@1aa
    const/4 v5, 0x0

    #@1ab
    const/4 v6, 0x0

    #@1ac
    const/4 v7, 0x4

    #@1ad
    invoke-static {v2, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b0
    .line 577
    :cond_e
    move-object/from16 v0, p3

    #@1b2
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1b4
    if-eqz v2, :cond_f

    #@1b6
    .line 578
    move-object/from16 v0, p3

    #@1b8
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    invoke-virtual {v0, v2}, Ljavax/obex/ClientSession;->handleAuthResp([B)Z

    #@1bf
    move-result v2

    #@1c0
    if-nez v2, :cond_f

    #@1c2
    .line 579
    invoke-virtual/range {p0 .. p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    #@1c5
    .line 580
    new-instance v2, Ljava/io/IOException;

    #@1c7
    const-string/jumbo v3, "Authentication Failed"

    #@1ca
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1cd
    throw v2

    #@1ce
    .line 584
    :cond_f
    move-object/from16 v0, p3

    #@1d0
    iget v2, v0, Ljavax/obex/HeaderSet;->responseCode:I

    #@1d2
    const/16 v3, 0xc1

    #@1d4
    if-ne v2, v3, :cond_10

    #@1d6
    .line 585
    move-object/from16 v0, p3

    #@1d8
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@1da
    if-eqz v2, :cond_10

    #@1dc
    .line 587
    move-object/from16 v0, p0

    #@1de
    move-object/from16 v1, p3

    #@1e0
    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    #@1e3
    move-result v2

    #@1e4
    if-eqz v2, :cond_10

    #@1e6
    .line 588
    const/16 v2, 0x4e

    #@1e8
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1eb
    .line 589
    move-object/from16 v0, p3

    #@1ed
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1ef
    array-length v2, v2

    #@1f0
    add-int/lit8 v2, v2, 0x3

    #@1f2
    shr-int/lit8 v2, v2, 0x8

    #@1f4
    int-to-byte v2, v2

    #@1f5
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1f8
    .line 590
    move-object/from16 v0, p3

    #@1fa
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1fc
    array-length v2, v2

    #@1fd
    add-int/lit8 v2, v2, 0x3

    #@1ff
    int-to-byte v2, v2

    #@200
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@203
    .line 591
    move-object/from16 v0, p3

    #@205
    iget-object v2, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@207
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@20a
    .line 592
    const/4 v2, 0x0

    #@20b
    move-object/from16 v0, p3

    #@20d
    iput-object v2, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@20f
    .line 593
    const/4 v2, 0x0

    #@210
    move-object/from16 v0, p3

    #@212
    iput-object v2, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@214
    .line 595
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    #@217
    move-result v2

    #@218
    add-int/lit8 v2, v2, -0x3

    #@21a
    new-array v4, v2, [B

    #@21c
    .line 596
    .local v4, "sendHeaders":[B
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@21f
    move-result-object v2

    #@220
    array-length v3, v4

    #@221
    const/4 v5, 0x3

    #@222
    const/4 v6, 0x0

    #@223
    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@226
    .line 598
    const/4 v7, 0x0

    #@227
    move-object/from16 v2, p0

    #@229
    move/from16 v3, p1

    #@22b
    move-object/from16 v5, p3

    #@22d
    move-object/from16 v6, p4

    #@22f
    invoke-virtual/range {v2 .. v7}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@232
    move-result v2

    #@233
    return v2

    #@234
    .line 604
    .end local v4    # "sendHeaders":[B
    .end local v8    # "body":[B
    .end local v9    # "bytesReceived":I
    .end local v10    # "data":[B
    .end local v12    # "length":I
    :cond_10
    const/4 v2, 0x1

    #@235
    return v2
.end method

.method public setAuthenticator(Ljavax/obex/Authenticator;)V
    .locals 2
    .param p1, "auth"    # Ljavax/obex/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    if-nez p1, :cond_0

    #@2
    .line 327
    new-instance v0, Ljava/io/IOException;

    #@4
    const-string/jumbo v1, "Authenticator may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 329
    :cond_0
    iput-object p1, p0, Ljavax/obex/ClientSession;->mAuthenticator:Ljavax/obex/Authenticator;

    #@d
    .line 325
    return-void
.end method

.method public setConnectionID(J)V
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    .line 209
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide v0, 0xffffffffL

    #@b
    cmp-long v0, p1, v0

    #@d
    if-lez v0, :cond_1

    #@f
    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Connection ID is not in a valid range"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 212
    :cond_1
    invoke-static {p1, p2}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@1e
    .line 208
    return-void
.end method

.method public setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;
    .locals 11
    .param p1, "header"    # Ljavax/obex/HeaderSet;
    .param p2, "backup"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 334
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Not connected to the server"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 336
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    #@10
    .line 337
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    #@13
    .line 340
    const/4 v7, 0x0

    #@14
    .line 342
    .local v7, "head":[B
    if-nez p1, :cond_4

    #@16
    .line 343
    new-instance v8, Ljavax/obex/HeaderSet;

    #@18
    invoke-direct {v8}, Ljavax/obex/HeaderSet;-><init>()V

    #@1b
    .line 353
    .local v8, "headset":Ljavax/obex/HeaderSet;
    :cond_1
    :goto_0
    iget-object v0, v8, Ljavax/obex/HeaderSet;->nonce:[B

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 354
    const/16 v0, 0x10

    #@21
    new-array v0, v0, [B

    #@23
    iput-object v0, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@25
    .line 355
    iget-object v0, v8, Ljavax/obex/HeaderSet;->nonce:[B

    #@27
    iget-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@29
    const/4 v4, 0x0

    #@2a
    const/4 v5, 0x0

    #@2b
    const/16 v10, 0x10

    #@2d
    invoke-static {v0, v4, v1, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@30
    .line 359
    :cond_2
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 360
    const/4 v0, 0x4

    #@35
    new-array v0, v0, [B

    #@37
    iput-object v0, v8, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@39
    .line 361
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    #@3b
    iget-object v1, v8, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@3d
    const/4 v4, 0x0

    #@3e
    const/4 v5, 0x0

    #@3f
    const/4 v10, 0x4

    #@40
    invoke-static {v0, v4, v1, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@43
    .line 364
    :cond_3
    const/4 v0, 0x0

    #@44
    invoke-static {v8, v0}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@47
    move-result-object v7

    #@48
    .line 365
    .local v7, "head":[B
    array-length v0, v7

    #@49
    add-int/lit8 v9, v0, 0x2

    #@4b
    .line 367
    .local v9, "totalLength":I
    iget v0, p0, Ljavax/obex/ClientSession;->mMaxTxPacketSize:I

    #@4d
    if-le v9, v0, :cond_5

    #@4f
    .line 368
    new-instance v0, Ljava/io/IOException;

    #@51
    const-string/jumbo v1, "Packet size exceeds max packet size"

    #@54
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 345
    .end local v8    # "headset":Ljavax/obex/HeaderSet;
    .end local v9    # "totalLength":I
    .local v7, "head":[B
    :cond_4
    move-object v8, p1

    #@59
    .line 346
    .restart local v8    # "headset":Ljavax/obex/HeaderSet;
    iget-object v0, v8, Ljavax/obex/HeaderSet;->nonce:[B

    #@5b
    if-eqz v0, :cond_1

    #@5d
    .line 347
    const/16 v0, 0x10

    #@5f
    new-array v0, v0, [B

    #@61
    iput-object v0, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@63
    .line 348
    iget-object v0, v8, Ljavax/obex/HeaderSet;->nonce:[B

    #@65
    iget-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    #@67
    const/4 v4, 0x0

    #@68
    const/4 v5, 0x0

    #@69
    const/16 v10, 0x10

    #@6b
    invoke-static {v0, v4, v1, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6e
    goto :goto_0

    #@6f
    .line 371
    .local v7, "head":[B
    .restart local v9    # "totalLength":I
    :cond_5
    const/4 v6, 0x0

    #@70
    .line 375
    .local v6, "flags":I
    if-eqz p2, :cond_6

    #@72
    .line 376
    const/4 v6, 0x1

    #@73
    .line 381
    :cond_6
    if-nez p3, :cond_7

    #@75
    .line 382
    or-int/lit8 v6, v6, 0x2

    #@77
    .line 393
    :cond_7
    new-array v2, v9, [B

    #@79
    .line 394
    .local v2, "packet":[B
    int-to-byte v0, v6

    #@7a
    const/4 v1, 0x0

    #@7b
    aput-byte v0, v2, v1

    #@7d
    .line 395
    const/4 v0, 0x0

    #@7e
    const/4 v1, 0x1

    #@7f
    aput-byte v0, v2, v1

    #@81
    .line 396
    if-eqz v8, :cond_8

    #@83
    .line 397
    array-length v0, v7

    #@84
    const/4 v1, 0x0

    #@85
    const/4 v4, 0x2

    #@86
    invoke-static {v7, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@89
    .line 400
    :cond_8
    new-instance v3, Ljavax/obex/HeaderSet;

    #@8b
    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    #@8e
    .line 401
    .local v3, "returnHeaderSet":Ljavax/obex/HeaderSet;
    const/16 v1, 0x85

    #@90
    const/4 v4, 0x0

    #@91
    const/4 v5, 0x0

    #@92
    move-object v0, p0

    #@93
    invoke-virtual/range {v0 .. v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;Z)Z

    #@96
    .line 410
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    #@99
    .line 412
    return-object v3
.end method

.method declared-synchronized setRequestInactive()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 430
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 429
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
