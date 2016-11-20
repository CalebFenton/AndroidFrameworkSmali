.class public final Ljavax/obex/ServerOperation;
.super Ljava/lang/Object;
.source "ServerOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerOperation"

.field private static final V:Z


# instance fields
.field public finalBitSet:Z

.field public isAborted:Z

.field private mClosed:Z

.field private mExceptionString:Ljava/lang/String;

.field private mGetOperation:Z

.field private mHasBody:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mParent:Ljavax/obex/ServerSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mRequestFinished:Z

.field private mResponseSize:I

.field private mSendBodyHeader:Z

.field private mSrmActive:Z

.field private mSrmEnabled:Z

.field private mSrmLocalWait:Z

.field private mSrmResponseSent:Z

.field private mSrmWaitingForRemote:Z

.field private mTransport:Ljavax/obex/ObexTransport;

.field public replyHeader:Ljavax/obex/HeaderSet;

.field public requestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V
    .locals 7
    .param p1, "p"    # Ljavax/obex/ServerSession;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "request"    # I
    .param p4, "maxSize"    # I
    .param p5, "listen"    # Ljavax/obex/ServerRequestHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x83

    #@2
    const/16 v5, 0x90

    #@4
    const/4 v4, 0x3

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@a
    .line 100
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    #@c
    .line 103
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmEnabled:Z

    #@e
    .line 105
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmActive:Z

    #@10
    .line 107
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmResponseSent:Z

    #@12
    .line 111
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->mSrmWaitingForRemote:Z

    #@14
    .line 113
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmLocalWait:Z

    #@16
    .line 128
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->isAborted:Z

    #@18
    .line 129
    iput-object p1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@1a
    .line 130
    iput-object p2, p0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    #@1c
    .line 131
    iput p4, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    #@1e
    .line 132
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    #@20
    .line 133
    new-instance v1, Ljavax/obex/HeaderSet;

    #@22
    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    #@25
    iput-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@27
    .line 134
    new-instance v1, Ljavax/obex/HeaderSet;

    #@29
    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    #@2c
    iput-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@2e
    .line 135
    new-instance v1, Ljavax/obex/PrivateInputStream;

    #@30
    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    #@33
    iput-object v1, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@35
    .line 136
    iput v4, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    #@37
    .line 137
    iput-object p5, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    #@39
    .line 138
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@3b
    .line 139
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    #@3d
    .line 140
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    #@3f
    .line 142
    invoke-virtual {p1}, Ljavax/obex/ServerSession;->getTransport()Ljavax/obex/ObexTransport;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Ljavax/obex/ServerOperation;->mTransport:Ljavax/obex/ObexTransport;

    #@45
    .line 147
    const/4 v1, 0x2

    #@46
    if-eq p3, v1, :cond_0

    #@48
    .line 148
    const/16 v1, 0x82

    #@4a
    if-ne p3, v1, :cond_3

    #@4c
    .line 152
    :cond_0
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@4e
    .line 157
    and-int/lit16 v1, p3, 0x80

    #@50
    if-nez v1, :cond_2

    #@52
    .line 158
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@54
    .line 180
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    #@56
    invoke-static {p3, v1}, Ljavax/obex/ObexPacket;->read(ILjava/io/InputStream;)Ljavax/obex/ObexPacket;

    #@59
    move-result-object v0

    #@5a
    .line 185
    .local v0, "packet":Ljavax/obex/ObexPacket;
    iget v1, v0, Ljavax/obex/ObexPacket;->mLength:I

    #@5c
    iget-object v2, p0, Ljavax/obex/ServerOperation;->mTransport:Ljavax/obex/ObexTransport;

    #@5e
    invoke-static {v2}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@61
    move-result v2

    #@62
    if-le v1, v2, :cond_6

    #@64
    .line 186
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@66
    const/16 v2, 0xce

    #@68
    const/4 v3, 0x0

    #@69
    invoke-virtual {v1, v2, v3}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@6c
    .line 187
    new-instance v1, Ljava/io/IOException;

    #@6e
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, "Packet received was too large. Length: "

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 188
    iget v3, v0, Ljavax/obex/ObexPacket;->mLength:I

    #@7c
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    .line 188
    const-string/jumbo v3, " maxLength: "

    #@83
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    .line 188
    iget-object v3, p0, Ljavax/obex/ServerOperation;->mTransport:Ljavax/obex/ObexTransport;

    #@89
    invoke-static {v3}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@8c
    move-result v3

    #@8d
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@98
    throw v1

    #@99
    .line 160
    .end local v0    # "packet":Ljavax/obex/ObexPacket;
    :cond_2
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@9b
    .line 161
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@9d
    goto :goto_0

    #@9e
    .line 163
    :cond_3
    if-eq p3, v4, :cond_4

    #@a0
    .line 164
    if-ne p3, v6, :cond_5

    #@a2
    .line 168
    :cond_4
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@a4
    .line 171
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@a6
    .line 173
    if-ne p3, v6, :cond_1

    #@a8
    .line 174
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@aa
    goto :goto_0

    #@ab
    .line 177
    :cond_5
    new-instance v1, Ljava/io/IOException;

    #@ad
    const-string/jumbo v2, "ServerOperation can not handle such request"

    #@b0
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v1

    #@b4
    .line 194
    .restart local v0    # "packet":Ljavax/obex/ObexPacket;
    :cond_6
    iget v1, v0, Ljavax/obex/ObexPacket;->mLength:I

    #@b6
    if-le v1, v4, :cond_9

    #@b8
    .line 195
    invoke-direct {p0, v0}, Ljavax/obex/ServerOperation;->handleObexPacket(Ljavax/obex/ObexPacket;)Z

    #@bb
    move-result v1

    #@bc
    if-nez v1, :cond_7

    #@be
    .line 196
    return-void

    #@bf
    .line 198
    :cond_7
    iget-boolean v1, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    #@c1
    if-nez v1, :cond_9

    #@c3
    .line 199
    :cond_8
    iget-boolean v1, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@c5
    if-nez v1, :cond_9

    #@c7
    iget-boolean v1, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@c9
    if-eqz v1, :cond_c

    #@cb
    .line 208
    :cond_9
    :goto_1
    iget-boolean v1, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@cd
    if-nez v1, :cond_a

    #@cf
    iget-boolean v1, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@d1
    if-eqz v1, :cond_d

    #@d3
    .line 216
    :cond_a
    :goto_2
    iget-boolean v1, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@d5
    if-eqz v1, :cond_b

    #@d7
    iget-boolean v1, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@d9
    if-eqz v1, :cond_e

    #@db
    .line 126
    :cond_b
    return-void

    #@dc
    .line 200
    :cond_c
    invoke-virtual {p0, v5}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    #@df
    .line 201
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@e1
    invoke-virtual {v1}, Ljavax/obex/PrivateInputStream;->available()I

    #@e4
    move-result v1

    #@e5
    if-lez v1, :cond_8

    #@e7
    goto :goto_1

    #@e8
    .line 208
    :cond_d
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@ea
    invoke-virtual {v1}, Ljavax/obex/PrivateInputStream;->available()I

    #@ed
    move-result v1

    #@ee
    if-nez v1, :cond_a

    #@f0
    .line 209
    invoke-virtual {p0, v5}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    #@f3
    .line 210
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@f5
    invoke-virtual {v1}, Ljavax/obex/PrivateInputStream;->available()I

    #@f8
    move-result v1

    #@f9
    if-lez v1, :cond_9

    #@fb
    goto :goto_2

    #@fc
    .line 217
    :cond_e
    invoke-virtual {p0, v5}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    #@ff
    goto :goto_2
.end method

.method private checkForSrmWait(I)V
    .locals 5
    .param p1, "headerId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 299
    iget-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmEnabled:Z

    #@3
    if-eqz v2, :cond_1

    #@5
    const/4 v2, 0x3

    #@6
    if-eq p1, v2, :cond_0

    #@8
    .line 300
    const/16 v2, 0x83

    #@a
    if-ne p1, v2, :cond_2

    #@c
    .line 303
    :cond_0
    :goto_0
    const/4 v2, 0x0

    #@d
    :try_start_0
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmWaitingForRemote:Z

    #@f
    .line 304
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@11
    const/16 v3, 0x98

    #@13
    invoke-virtual {v2, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/Byte;

    #@19
    .line 305
    .local v1, "srmp":Ljava/lang/Byte;
    if-eqz v1, :cond_1

    #@1b
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    #@1e
    move-result v2

    #@1f
    if-ne v2, v4, :cond_1

    #@21
    .line 306
    const/4 v2, 0x1

    #@22
    iput-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmWaitingForRemote:Z

    #@24
    .line 309
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@26
    const/16 v3, 0x98

    #@28
    const/4 v4, 0x0

    #@29
    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 298
    .end local v1    # "srmp":Ljava/lang/Byte;
    :cond_1
    :goto_1
    return-void

    #@2d
    .line 301
    :cond_2
    const/4 v2, 0x2

    #@2e
    if-ne p1, v2, :cond_1

    #@30
    goto :goto_0

    #@31
    .line 311
    :catch_0
    move-exception v0

    #@32
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private checkSrmRemoteAbort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    #@5
    move-result v1

    #@6
    if-lez v1, :cond_0

    #@8
    .line 599
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    #@a
    invoke-static {v1}, Ljavax/obex/ObexPacket;->read(Ljava/io/InputStream;)Ljavax/obex/ObexPacket;

    #@d
    move-result-object v0

    #@e
    .line 603
    .local v0, "packet":Ljavax/obex/ObexPacket;
    iget v1, v0, Ljavax/obex/ObexPacket;->mHeaderId:I

    #@10
    const/16 v2, 0xff

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 604
    invoke-direct {p0}, Ljavax/obex/ServerOperation;->handleRemoteAbort()V

    #@17
    .line 597
    .end local v0    # "packet":Ljavax/obex/ObexPacket;
    :cond_0
    :goto_0
    return-void

    #@18
    .line 609
    .restart local v0    # "packet":Ljavax/obex/ObexPacket;
    :cond_1
    const-string/jumbo v1, "ServerOperation"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Received unexpected request from client - discarding...\n   headerId: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 610
    iget v3, v0, Ljavax/obex/ObexPacket;->mHeaderId:I

    #@29
    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 610
    const-string/jumbo v3, " length: "

    #@30
    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 610
    iget v3, v0, Ljavax/obex/ObexPacket;->mLength:I

    #@36
    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method

.method private handleObexPacket(Ljavax/obex/ObexPacket;)Z
    .locals 9
    .param p1, "packet"    # Ljavax/obex/ObexPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 229
    invoke-direct {p0, p1}, Ljavax/obex/ServerOperation;->updateRequestHeaders(Ljavax/obex/ObexPacket;)[B

    #@6
    move-result-object v0

    #@7
    .line 231
    .local v0, "body":[B
    if-eqz v0, :cond_0

    #@9
    .line 232
    iput-boolean v7, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    #@b
    .line 234
    :cond_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    #@d
    invoke-virtual {v1}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@10
    move-result-wide v2

    #@11
    const-wide/16 v4, -0x1

    #@13
    cmp-long v1, v2, v4

    #@15
    if-eqz v1, :cond_1

    #@17
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@19
    iget-object v1, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 235
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    #@1f
    .line 236
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@21
    iget-object v2, v2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@23
    .line 235
    invoke-static {v2}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    #@26
    move-result-wide v2

    #@27
    invoke-virtual {v1, v2, v3}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@2a
    .line 241
    :goto_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@2c
    iget-object v1, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 242
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@32
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@34
    iget-object v2, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@36
    invoke-virtual {v1, v2}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_2

    #@3c
    .line 243
    const-string/jumbo v1, "Authentication Failed"

    #@3f
    iput-object v1, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    #@41
    .line 244
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@43
    const/16 v2, 0xc1

    #@45
    invoke-virtual {v1, v2, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@48
    .line 245
    iput-boolean v7, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    #@4a
    .line 246
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@4c
    iput-object v6, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@4e
    .line 247
    return v8

    #@4f
    .line 238
    :cond_1
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    #@51
    const-wide/16 v2, 0x1

    #@53
    invoke-virtual {v1, v2, v3}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    #@56
    goto :goto_0

    #@57
    .line 249
    :cond_2
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@59
    iput-object v6, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@5b
    .line 252
    :cond_3
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@5d
    iget-object v1, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@5f
    if-eqz v1, :cond_4

    #@61
    .line 253
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@63
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@65
    invoke-virtual {v1, v2}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    #@68
    .line 255
    iget-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@6a
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@6c
    iget-object v2, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@6e
    array-length v2, v2

    #@6f
    new-array v2, v2, [B

    #@71
    iput-object v2, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@73
    .line 256
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@75
    iget-object v1, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@77
    iget-object v2, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@79
    iget-object v2, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@7b
    .line 257
    iget-object v3, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@7d
    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@7f
    array-length v3, v3

    #@80
    .line 256
    invoke-static {v1, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@83
    .line 258
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@85
    iput-object v6, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@87
    .line 259
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@89
    iput-object v6, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@8b
    .line 262
    :cond_4
    if-eqz v0, :cond_5

    #@8d
    .line 263
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@8f
    invoke-virtual {v1, v0, v7}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V

    #@92
    .line 265
    :cond_5
    return v7
.end method

.method private handleRemoteAbort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 621
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@3
    const/16 v1, 0xa0

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@9
    .line 622
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    #@b
    .line 623
    iput-boolean v3, p0, Ljavax/obex/ServerOperation;->isAborted:Z

    #@d
    .line 624
    const-string/jumbo v0, "Abort Received"

    #@10
    iput-object v0, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    #@12
    .line 625
    new-instance v0, Ljava/io/IOException;

    #@14
    const-string/jumbo v1, "Abort Received"

    #@17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method private updateRequestHeaders(Ljavax/obex/ObexPacket;)[B
    .locals 5
    .param p1, "packet"    # Ljavax/obex/ObexPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 275
    const/4 v0, 0x0

    #@2
    .line 276
    .local v0, "body":[B
    iget-object v2, p1, Ljavax/obex/ObexPacket;->mPayload:[B

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 277
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@8
    iget-object v3, p1, Ljavax/obex/ObexPacket;->mPayload:[B

    #@a
    invoke-static {v2, v3}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    #@d
    move-result-object v0

    #@e
    .line 279
    .end local v0    # "body":[B
    :cond_0
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@10
    const/16 v3, 0x97

    #@12
    invoke-virtual {v2, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Byte;

    #@18
    .line 280
    .local v1, "srmMode":Ljava/lang/Byte;
    iget-object v2, p0, Ljavax/obex/ServerOperation;->mTransport:Ljavax/obex/ObexTransport;

    #@1a
    invoke-interface {v2}, Ljavax/obex/ObexTransport;->isSrmSupported()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 281
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    #@25
    move-result v2

    #@26
    if-ne v2, v4, :cond_1

    #@28
    .line 282
    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mSrmEnabled:Z

    #@2a
    .line 285
    :cond_1
    iget v2, p1, Ljavax/obex/ObexPacket;->mHeaderId:I

    #@2c
    invoke-direct {p0, v2}, Ljavax/obex/ServerOperation;->checkForSrmWait(I)V

    #@2f
    .line 286
    iget-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmWaitingForRemote:Z

    #@31
    if-nez v2, :cond_2

    #@33
    iget-boolean v2, p0, Ljavax/obex/ServerOperation;->mSrmEnabled:Z

    #@35
    if-eqz v2, :cond_2

    #@37
    .line 288
    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mSrmActive:Z

    #@39
    .line 290
    :cond_2
    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 636
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "Called from a server"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 807
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    #@3
    .line 808
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    #@6
    .line 806
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 4
    .param p1, "sendEmpty"    # Z
    .param p2, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 333
    :try_start_0
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@5
    if-nez v0, :cond_4

    #@7
    .line 334
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@9
    if-nez v0, :cond_3

    #@b
    .line 335
    if-eqz p1, :cond_0

    #@d
    .line 336
    const/16 v0, 0x90

    #@f
    invoke-virtual {p0, v0}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 337
    return v3

    #@14
    .line 339
    :cond_0
    :try_start_1
    iget v0, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    #@16
    const/4 v1, 0x3

    #@17
    if-gt v0, v1, :cond_1

    #@19
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@1b
    invoke-virtual {v0}, Ljavax/obex/PrivateOutputStream;->size()I

    #@1e
    move-result v0

    #@1f
    if-lez v0, :cond_2

    #@21
    .line 340
    :cond_1
    const/16 v0, 0x90

    #@23
    invoke-virtual {p0, v0}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 341
    return v3

    #@28
    :cond_2
    monitor-exit p0

    #@29
    .line 343
    return v2

    #@2a
    :cond_3
    monitor-exit p0

    #@2b
    .line 347
    return v2

    #@2c
    .line 350
    :cond_4
    const/16 v0, 0x90

    #@2e
    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    monitor-exit p0

    #@32
    .line 351
    return v3

    #@33
    :catchall_0
    move-exception v0

    #@34
    monitor-exit p0

    #@35
    throw v0
.end method

.method public ensureNotDone()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 833
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
    .line 816
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 817
    new-instance v0, Ljava/io/IOException;

    #@6
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    #@8
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 819
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 820
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Operation has already ended"

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 815
    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 695
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderLength()I
    .locals 6

    #@0
    .prologue
    .line 739
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    #@2
    invoke-virtual {v1}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@5
    move-result-wide v2

    #@6
    .line 740
    .local v2, "id":J
    const-wide/16 v4, -0x1

    #@8
    cmp-long v1, v2, v4

    #@a
    if-nez v1, :cond_0

    #@c
    .line 741
    iget-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@e
    const/4 v4, 0x0

    #@f
    iput-object v4, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@11
    .line 746
    :goto_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-static {v1, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@17
    move-result-object v0

    #@18
    .line 748
    .local v0, "headerArray":[B
    array-length v1, v0

    #@19
    return v1

    #@1a
    .line 743
    .end local v0    # "headerArray":[B
    :cond_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@1c
    invoke-static {v2, v3}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@1f
    move-result-object v4

    #@20
    iput-object v4, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@22
    goto :goto_0
.end method

.method public getLength()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 722
    :try_start_0
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@4
    const/16 v3, 0xc3

    #@6
    invoke-virtual {v2, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/Long;

    #@c
    .line 724
    .local v1, "temp":Ljava/lang/Long;
    if-nez v1, :cond_0

    #@e
    .line 725
    return-wide v4

    #@f
    .line 727
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-wide v2

    #@13
    return-wide v2

    #@14
    .line 729
    .end local v1    # "temp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    #@15
    .line 730
    .local v0, "e":Ljava/io/IOException;
    return-wide v4
.end method

.method public getMaxPacketSize()I
    .locals 2

    #@0
    .prologue
    .line 735
    iget v0, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    #@2
    add-int/lit8 v0, v0, -0x6

    #@4
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getHeaderLength()I

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
    .line 647
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    #@3
    .line 648
    iget-object v0, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    #@5
    return-object v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 687
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "Called from a server"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 707
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

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
    .line 708
    :catch_0
    move-exception v0

    #@c
    .line 709
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public isValidBody()Z
    .locals 1

    #@0
    .prologue
    .line 316
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    #@2
    return v0
.end method

.method public noBodyHeader()V
    .locals 1

    #@0
    .prologue
    .line 849
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    #@3
    .line 848
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
    .line 767
    new-instance v0, Ljava/io/DataInputStream;

    #@2
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openInputStream()Ljava/io/InputStream;

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
    .line 799
    new-instance v0, Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openOutputStream()Ljava/io/OutputStream;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@9
    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 757
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    #@3
    .line 758
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@5
    return-object v0
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
    .line 776
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    #@3
    .line 778
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 779
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v1, "no more input streams available, stream already opened"

    #@c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 782
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@12
    if-nez v0, :cond_1

    #@14
    .line 783
    new-instance v0, Ljava/io/IOException;

    #@16
    const-string/jumbo v1, "no  output streams available ,request not finished"

    #@19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 786
    :cond_1
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 787
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    #@23
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getMaxPacketSize()I

    #@26
    move-result v1

    #@27
    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    #@2a
    iput-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@2c
    .line 789
    :cond_2
    const/4 v0, 0x1

    #@2d
    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    #@2f
    .line 790
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@31
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
    .line 661
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    #@3
    .line 663
    if-nez p1, :cond_0

    #@5
    .line 664
    new-instance v2, Ljava/io/IOException;

    #@7
    const-string/jumbo v3, "Headers may not be null"

    #@a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 667
    :cond_0
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    #@11
    move-result-object v0

    #@12
    .line 668
    .local v0, "headerList":[I
    if-eqz v0, :cond_1

    #@14
    .line 669
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@16
    if-ge v1, v2, :cond_1

    #@18
    .line 670
    iget-object v2, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@1a
    aget v3, v0, v1

    #@1c
    aget v4, v0, v1

    #@1e
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@25
    .line 669
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 660
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized sendReply(I)Z
    .locals 22
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 366
    :try_start_0
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@6
    .line 367
    .local v12, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    #@8
    .line 368
    .local v16, "skipSend":Z
    const/4 v15, 0x0

    #@9
    .line 369
    .local v15, "skipReceive":Z
    const/16 v17, 0x0

    #@b
    .line 371
    .local v17, "srmRespSendPending":Z
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    #@f
    move-object/from16 v19, v0

    #@11
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    #@14
    move-result-wide v10

    #@15
    .line 372
    .local v10, "id":J
    const-wide/16 v20, -0x1

    #@17
    cmp-long v19, v10, v20

    #@19
    if-nez v19, :cond_5

    #@1b
    .line 373
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@1f
    move-object/from16 v19, v0

    #@21
    const/16 v20, 0x0

    #@23
    move-object/from16 v0, v20

    #@25
    move-object/from16 v1, v19

    #@27
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@29
    .line 378
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmEnabled:Z

    #@2d
    move/from16 v19, v0

    #@2f
    if-eqz v19, :cond_0

    #@31
    move-object/from16 v0, p0

    #@33
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmResponseSent:Z

    #@35
    move/from16 v19, v0

    #@37
    if-eqz v19, :cond_6

    #@39
    .line 386
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@3b
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmEnabled:Z

    #@3d
    move/from16 v19, v0

    #@3f
    if-eqz v19, :cond_1

    #@41
    move-object/from16 v0, p0

    #@43
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@45
    move/from16 v19, v0

    #@47
    if-eqz v19, :cond_7

    #@49
    .line 390
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@4d
    move-object/from16 v19, v0

    #@4f
    const/16 v20, 0x1

    #@51
    invoke-static/range {v19 .. v20}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    #@54
    move-result-object v7

    #@55
    .line 391
    .local v7, "headerArray":[B
    const/4 v5, -0x1

    #@56
    .line 392
    .local v5, "bodyLength":I
    const/4 v9, -0x1

    #@57
    .line 394
    .local v9, "orginalBodyLength":I
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@5b
    move-object/from16 v19, v0

    #@5d
    if-eqz v19, :cond_2

    #@5f
    .line 395
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@63
    move-object/from16 v19, v0

    #@65
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateOutputStream;->size()I

    #@68
    move-result v5

    #@69
    .line 396
    move v9, v5

    #@6a
    .line 399
    :cond_2
    array-length v0, v7

    #@6b
    move/from16 v19, v0

    #@6d
    add-int/lit8 v19, v19, 0x3

    #@6f
    move-object/from16 v0, p0

    #@71
    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    #@73
    move/from16 v20, v0

    #@75
    move/from16 v0, v19

    #@77
    move/from16 v1, v20

    #@79
    if-le v0, v1, :cond_b

    #@7b
    .line 401
    const/4 v6, 0x0

    #@7c
    .line 402
    .local v6, "end":I
    const/16 v18, 0x0

    #@7e
    .line 404
    .local v18, "start":I
    :goto_3
    array-length v0, v7

    #@7f
    move/from16 v19, v0

    #@81
    move/from16 v0, v19

    #@83
    if-eq v6, v0, :cond_9

    #@85
    .line 405
    move-object/from16 v0, p0

    #@87
    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    #@89
    move/from16 v19, v0

    #@8b
    add-int/lit8 v19, v19, -0x3

    #@8d
    move/from16 v0, v18

    #@8f
    move/from16 v1, v19

    #@91
    invoke-static {v7, v0, v1}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    #@94
    move-result v6

    #@95
    .line 407
    const/16 v19, -0x1

    #@97
    move/from16 v0, v19

    #@99
    if-ne v6, v0, :cond_8

    #@9b
    .line 409
    const/16 v19, 0x1

    #@9d
    move/from16 v0, v19

    #@9f
    move-object/from16 v1, p0

    #@a1
    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    #@a3
    .line 411
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@a7
    move-object/from16 v19, v0

    #@a9
    if-eqz v19, :cond_3

    #@ab
    .line 412
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    #@af
    move-object/from16 v19, v0

    #@b1
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateInputStream;->close()V

    #@b4
    .line 415
    :cond_3
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@b8
    move-object/from16 v19, v0

    #@ba
    if-eqz v19, :cond_4

    #@bc
    .line 416
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@c0
    move-object/from16 v19, v0

    #@c2
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateOutputStream;->close()V

    #@c5
    .line 418
    :cond_4
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@c9
    move-object/from16 v19, v0

    #@cb
    const/16 v20, 0xd0

    #@cd
    const/16 v21, 0x0

    #@cf
    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@d2
    .line 419
    new-instance v19, Ljava/io/IOException;

    #@d4
    const-string/jumbo v20, "OBEX Packet exceeds max packet size"

    #@d7
    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@da
    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@db
    .end local v5    # "bodyLength":I
    .end local v6    # "end":I
    .end local v7    # "headerArray":[B
    .end local v9    # "orginalBodyLength":I
    .end local v10    # "id":J
    .end local v12    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "skipReceive":Z
    .end local v16    # "skipSend":Z
    .end local v17    # "srmRespSendPending":Z
    .end local v18    # "start":I
    :catchall_0
    move-exception v19

    #@dc
    monitor-exit p0

    #@dd
    throw v19

    #@de
    .line 375
    .restart local v10    # "id":J
    .restart local v12    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "skipReceive":Z
    .restart local v16    # "skipSend":Z
    .restart local v17    # "srmRespSendPending":Z
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@e2
    move-object/from16 v19, v0

    #@e4
    invoke-static {v10, v11}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    #@e7
    move-result-object v20

    #@e8
    move-object/from16 v0, v20

    #@ea
    move-object/from16 v1, v19

    #@ec
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@ee
    goto/16 :goto_0

    #@f0
    .line 382
    :cond_6
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@f4
    move-object/from16 v19, v0

    #@f6
    const/16 v20, 0x1

    #@f8
    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@fb
    move-result-object v20

    #@fc
    const/16 v21, 0x97

    #@fe
    move-object/from16 v0, v19

    #@100
    move/from16 v1, v21

    #@102
    move-object/from16 v2, v20

    #@104
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@107
    .line 383
    const/16 v17, 0x1

    #@109
    goto/16 :goto_1

    #@10b
    .line 386
    :cond_7
    move-object/from16 v0, p0

    #@10d
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmLocalWait:Z

    #@10f
    move/from16 v19, v0

    #@111
    if-eqz v19, :cond_1

    #@113
    .line 387
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    #@117
    move-object/from16 v19, v0

    #@119
    const/16 v20, 0x1

    #@11b
    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@11e
    move-result-object v20

    #@11f
    const/16 v21, 0x97

    #@121
    move-object/from16 v0, v19

    #@123
    move/from16 v1, v21

    #@125
    move-object/from16 v2, v20

    #@127
    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    #@12a
    goto/16 :goto_2

    #@12c
    .line 421
    .restart local v5    # "bodyLength":I
    .restart local v6    # "end":I
    .restart local v7    # "headerArray":[B
    .restart local v9    # "orginalBodyLength":I
    .restart local v18    # "start":I
    :cond_8
    sub-int v19, v6, v18

    #@12e
    move/from16 v0, v19

    #@130
    new-array v14, v0, [B

    #@132
    .line 422
    .local v14, "sendHeader":[B
    array-length v0, v14

    #@133
    move/from16 v19, v0

    #@135
    const/16 v20, 0x0

    #@137
    move/from16 v0, v18

    #@139
    move/from16 v1, v20

    #@13b
    move/from16 v2, v19

    #@13d
    invoke-static {v7, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@140
    .line 424
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@144
    move-object/from16 v19, v0

    #@146
    move-object/from16 v0, v19

    #@148
    move/from16 v1, p1

    #@14a
    invoke-virtual {v0, v1, v14}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14d
    .line 425
    move/from16 v18, v6

    #@14f
    goto/16 :goto_3

    #@151
    .line 428
    .end local v14    # "sendHeader":[B
    :cond_9
    if-lez v5, :cond_a

    #@153
    .line 429
    const/16 v19, 0x1

    #@155
    monitor-exit p0

    #@156
    return v19

    #@157
    .line 431
    :cond_a
    const/16 v19, 0x0

    #@159
    monitor-exit p0

    #@15a
    return v19

    #@15b
    .line 435
    .end local v6    # "end":I
    .end local v18    # "start":I
    :cond_b
    :try_start_2
    invoke-virtual {v12, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@15e
    .line 440
    move-object/from16 v0, p0

    #@160
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@162
    move/from16 v19, v0

    #@164
    if-eqz v19, :cond_c

    #@166
    const/16 v19, 0xa0

    #@168
    move/from16 v0, p1

    #@16a
    move/from16 v1, v19

    #@16c
    if-ne v0, v1, :cond_c

    #@16e
    .line 441
    const/16 v19, 0x1

    #@170
    move/from16 v0, v19

    #@172
    move-object/from16 v1, p0

    #@174
    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@176
    .line 444
    :cond_c
    move-object/from16 v0, p0

    #@178
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmActive:Z

    #@17a
    move/from16 v19, v0

    #@17c
    if-eqz v19, :cond_d

    #@17e
    .line 445
    move-object/from16 v0, p0

    #@180
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@182
    move/from16 v19, v0

    #@184
    if-nez v19, :cond_16

    #@186
    const/16 v19, 0x90

    #@188
    move/from16 v0, p1

    #@18a
    move/from16 v1, v19

    #@18c
    if-ne v0, v1, :cond_16

    #@18e
    .line 446
    move-object/from16 v0, p0

    #@190
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmResponseSent:Z

    #@192
    move/from16 v19, v0

    #@194
    if-eqz v19, :cond_16

    #@196
    .line 448
    const/16 v16, 0x1

    #@198
    .line 460
    :cond_d
    :goto_4
    if-eqz v17, :cond_e

    #@19a
    .line 463
    const/16 v19, 0x1

    #@19c
    move/from16 v0, v19

    #@19e
    move-object/from16 v1, p0

    #@1a0
    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mSrmResponseSent:Z

    #@1a2
    .line 466
    :cond_e
    move-object/from16 v0, p0

    #@1a4
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@1a6
    move/from16 v19, v0

    #@1a8
    if-nez v19, :cond_f

    #@1aa
    array-length v0, v7

    #@1ab
    move/from16 v19, v0

    #@1ad
    move-object/from16 v0, p0

    #@1af
    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    #@1b1
    move/from16 v20, v0

    #@1b3
    add-int/lit8 v20, v20, -0x14

    #@1b5
    move/from16 v0, v19

    #@1b7
    move/from16 v1, v20

    #@1b9
    if-ge v0, v1, :cond_12

    #@1bb
    .line 467
    :cond_f
    if-lez v5, :cond_12

    #@1bd
    .line 473
    move-object/from16 v0, p0

    #@1bf
    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    #@1c1
    move/from16 v19, v0

    #@1c3
    array-length v0, v7

    #@1c4
    move/from16 v20, v0

    #@1c6
    sub-int v19, v19, v20

    #@1c8
    add-int/lit8 v19, v19, -0x6

    #@1ca
    move/from16 v0, v19

    #@1cc
    if-le v5, v0, :cond_10

    #@1ce
    .line 474
    move-object/from16 v0, p0

    #@1d0
    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    #@1d2
    move/from16 v19, v0

    #@1d4
    array-length v0, v7

    #@1d5
    move/from16 v20, v0

    #@1d7
    sub-int v19, v19, v20

    #@1d9
    add-int/lit8 v5, v19, -0x6

    #@1db
    .line 477
    :cond_10
    move-object/from16 v0, p0

    #@1dd
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@1df
    move-object/from16 v19, v0

    #@1e1
    move-object/from16 v0, v19

    #@1e3
    invoke-virtual {v0, v5}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    #@1e6
    move-result-object v4

    #@1e7
    .line 484
    .local v4, "body":[B
    move-object/from16 v0, p0

    #@1e9
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@1eb
    move/from16 v19, v0

    #@1ed
    if-nez v19, :cond_11

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    #@1f3
    move-object/from16 v19, v0

    #@1f5
    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    #@1f8
    move-result v19

    #@1f9
    if-eqz v19, :cond_18

    #@1fb
    .line 485
    :cond_11
    move-object/from16 v0, p0

    #@1fd
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    #@1ff
    move/from16 v19, v0

    #@201
    if-eqz v19, :cond_12

    #@203
    .line 486
    const/16 v19, 0x49

    #@205
    move/from16 v0, v19

    #@207
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@20a
    .line 487
    add-int/lit8 v5, v5, 0x3

    #@20c
    .line 488
    shr-int/lit8 v19, v5, 0x8

    #@20e
    move/from16 v0, v19

    #@210
    int-to-byte v0, v0

    #@211
    move/from16 v19, v0

    #@213
    move/from16 v0, v19

    #@215
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@218
    .line 489
    int-to-byte v0, v5

    #@219
    move/from16 v19, v0

    #@21b
    move/from16 v0, v19

    #@21d
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@220
    .line 490
    invoke-virtual {v12, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@223
    .line 505
    .end local v4    # "body":[B
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    #@225
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@227
    move/from16 v19, v0

    #@229
    if-eqz v19, :cond_13

    #@22b
    const/16 v19, 0xa0

    #@22d
    move/from16 v0, p1

    #@22f
    move/from16 v1, v19

    #@231
    if-ne v0, v1, :cond_13

    #@233
    if-gtz v9, :cond_13

    #@235
    .line 506
    move-object/from16 v0, p0

    #@237
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    #@239
    move/from16 v19, v0

    #@23b
    if-eqz v19, :cond_13

    #@23d
    .line 507
    const/16 v19, 0x49

    #@23f
    move/from16 v0, v19

    #@241
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@244
    .line 509
    const/16 v19, 0x0

    #@246
    move/from16 v0, v19

    #@248
    int-to-byte v0, v0

    #@249
    move/from16 v19, v0

    #@24b
    move/from16 v0, v19

    #@24d
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@250
    .line 510
    const/16 v19, 0x3

    #@252
    move/from16 v0, v19

    #@254
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@257
    .line 514
    :cond_13
    if-nez v16, :cond_14

    #@259
    .line 515
    const/16 v19, 0x3

    #@25b
    move/from16 v0, v19

    #@25d
    move-object/from16 v1, p0

    #@25f
    iput v0, v1, Ljavax/obex/ServerOperation;->mResponseSize:I

    #@261
    .line 516
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@265
    move-object/from16 v19, v0

    #@267
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@26a
    move-result-object v20

    #@26b
    move-object/from16 v0, v19

    #@26d
    move/from16 v1, p1

    #@26f
    move-object/from16 v2, v20

    #@271
    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@274
    .line 519
    :cond_14
    const/16 v19, 0x90

    #@276
    move/from16 v0, p1

    #@278
    move/from16 v1, v19

    #@27a
    if-ne v0, v1, :cond_20

    #@27c
    .line 521
    move-object/from16 v0, p0

    #@27e
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@280
    move/from16 v19, v0

    #@282
    if-eqz v19, :cond_19

    #@284
    if-eqz v15, :cond_19

    #@286
    .line 524
    invoke-direct/range {p0 .. p0}, Ljavax/obex/ServerOperation;->checkSrmRemoteAbort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@289
    .line 575
    :cond_15
    :goto_6
    const/16 v19, 0x1

    #@28b
    monitor-exit p0

    #@28c
    return v19

    #@28d
    .line 449
    :cond_16
    :try_start_3
    move-object/from16 v0, p0

    #@28f
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@291
    move/from16 v19, v0

    #@293
    if-eqz v19, :cond_17

    #@295
    move-object/from16 v0, p0

    #@297
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@299
    move/from16 v19, v0

    #@29b
    if-nez v19, :cond_17

    #@29d
    move-object/from16 v0, p0

    #@29f
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmResponseSent:Z

    #@2a1
    move/from16 v19, v0

    #@2a3
    if-eqz v19, :cond_17

    #@2a5
    .line 451
    const/16 v16, 0x1

    #@2a7
    .line 449
    goto/16 :goto_4

    #@2a9
    .line 452
    :cond_17
    move-object/from16 v0, p0

    #@2ab
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    #@2ad
    move/from16 v19, v0

    #@2af
    if-eqz v19, :cond_d

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@2b5
    move/from16 v19, v0

    #@2b7
    if-eqz v19, :cond_d

    #@2b9
    .line 455
    const/4 v15, 0x1

    #@2ba
    goto/16 :goto_4

    #@2bc
    .line 493
    .restart local v4    # "body":[B
    :cond_18
    move-object/from16 v0, p0

    #@2be
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    #@2c0
    move/from16 v19, v0

    #@2c2
    if-eqz v19, :cond_12

    #@2c4
    .line 494
    const/16 v19, 0x48

    #@2c6
    move/from16 v0, v19

    #@2c8
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2cb
    .line 495
    add-int/lit8 v5, v5, 0x3

    #@2cd
    .line 496
    shr-int/lit8 v19, v5, 0x8

    #@2cf
    move/from16 v0, v19

    #@2d1
    int-to-byte v0, v0

    #@2d2
    move/from16 v19, v0

    #@2d4
    move/from16 v0, v19

    #@2d6
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2d9
    .line 497
    int-to-byte v0, v5

    #@2da
    move/from16 v19, v0

    #@2dc
    move/from16 v0, v19

    #@2de
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2e1
    .line 498
    invoke-virtual {v12, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2e4
    goto/16 :goto_5

    #@2e6
    .line 528
    .end local v4    # "body":[B
    :cond_19
    move-object/from16 v0, p0

    #@2e8
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    #@2ea
    move-object/from16 v19, v0

    #@2ec
    invoke-static/range {v19 .. v19}, Ljavax/obex/ObexPacket;->read(Ljava/io/InputStream;)Ljavax/obex/ObexPacket;

    #@2ef
    move-result-object v13

    #@2f0
    .line 530
    .local v13, "packet":Ljavax/obex/ObexPacket;
    iget v8, v13, Ljavax/obex/ObexPacket;->mHeaderId:I

    #@2f2
    .line 531
    .local v8, "headerId":I
    const/16 v19, 0x2

    #@2f4
    move/from16 v0, v19

    #@2f6
    if-eq v8, v0, :cond_1b

    #@2f8
    .line 532
    const/16 v19, 0x82

    #@2fa
    move/from16 v0, v19

    #@2fc
    if-eq v8, v0, :cond_1b

    #@2fe
    .line 533
    const/16 v19, 0x3

    #@300
    move/from16 v0, v19

    #@302
    if-eq v8, v0, :cond_1b

    #@304
    .line 534
    const/16 v19, 0x83

    #@306
    move/from16 v0, v19

    #@308
    if-eq v8, v0, :cond_1b

    #@30a
    .line 539
    const/16 v19, 0xff

    #@30c
    move/from16 v0, v19

    #@30e
    if-ne v8, v0, :cond_1a

    #@310
    .line 540
    invoke-direct/range {p0 .. p0}, Ljavax/obex/ServerOperation;->handleRemoteAbort()V

    #@313
    goto/16 :goto_6

    #@315
    .line 543
    :cond_1a
    move-object/from16 v0, p0

    #@317
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@319
    move-object/from16 v19, v0

    #@31b
    const/16 v20, 0xc0

    #@31d
    const/16 v21, 0x0

    #@31f
    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@322
    .line 544
    const/16 v19, 0x1

    #@324
    move/from16 v0, v19

    #@326
    move-object/from16 v1, p0

    #@328
    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    #@32a
    .line 545
    const-string/jumbo v19, "Bad Request Received"

    #@32d
    move-object/from16 v0, v19

    #@32f
    move-object/from16 v1, p0

    #@331
    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    #@333
    .line 546
    new-instance v19, Ljava/io/IOException;

    #@335
    const-string/jumbo v20, "Bad Request Received"

    #@338
    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33b
    throw v19

    #@33c
    .line 550
    :cond_1b
    const/16 v19, 0x82

    #@33e
    move/from16 v0, v19

    #@340
    if-ne v8, v0, :cond_1d

    #@342
    .line 551
    const/16 v19, 0x1

    #@344
    move/from16 v0, v19

    #@346
    move-object/from16 v1, p0

    #@348
    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    #@34a
    .line 559
    :cond_1c
    :goto_7
    iget v0, v13, Ljavax/obex/ObexPacket;->mLength:I

    #@34c
    move/from16 v19, v0

    #@34e
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mTransport:Ljavax/obex/ObexTransport;

    #@352
    move-object/from16 v20, v0

    #@354
    invoke-static/range {v20 .. v20}, Ljavax/obex/ObexHelper;->getMaxRxPacketSize(Ljavax/obex/ObexTransport;)I

    #@357
    move-result v20

    #@358
    move/from16 v0, v19

    #@35a
    move/from16 v1, v20

    #@35c
    if-le v0, v1, :cond_1e

    #@35e
    .line 560
    move-object/from16 v0, p0

    #@360
    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    #@362
    move-object/from16 v19, v0

    #@364
    const/16 v20, 0xce

    #@366
    const/16 v21, 0x0

    #@368
    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    #@36b
    .line 561
    new-instance v19, Ljava/io/IOException;

    #@36d
    const-string/jumbo v20, "Packet received was too large"

    #@370
    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@373
    throw v19

    #@374
    .line 552
    :cond_1d
    const/16 v19, 0x83

    #@376
    move/from16 v0, v19

    #@378
    if-ne v8, v0, :cond_1c

    #@37a
    .line 553
    const/16 v19, 0x1

    #@37c
    move/from16 v0, v19

    #@37e
    move-object/from16 v1, p0

    #@380
    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    #@382
    goto :goto_7

    #@383
    .line 567
    :cond_1e
    iget v0, v13, Ljavax/obex/ObexPacket;->mLength:I

    #@385
    move/from16 v19, v0

    #@387
    const/16 v20, 0x3

    #@389
    move/from16 v0, v19

    #@38b
    move/from16 v1, v20

    #@38d
    if-gt v0, v1, :cond_1f

    #@38f
    move-object/from16 v0, p0

    #@391
    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSrmEnabled:Z

    #@393
    move/from16 v19, v0

    #@395
    if-eqz v19, :cond_15

    #@397
    iget v0, v13, Ljavax/obex/ObexPacket;->mLength:I

    #@399
    move/from16 v19, v0

    #@39b
    const/16 v20, 0x3

    #@39d
    move/from16 v0, v19

    #@39f
    move/from16 v1, v20

    #@3a1
    if-ne v0, v1, :cond_15

    #@3a3
    .line 568
    :cond_1f
    move-object/from16 v0, p0

    #@3a5
    invoke-direct {v0, v13}, Ljavax/obex/ServerOperation;->handleObexPacket(Ljavax/obex/ObexPacket;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a8
    move-result v19

    #@3a9
    if-nez v19, :cond_15

    #@3ab
    .line 569
    const/16 v19, 0x0

    #@3ad
    monitor-exit p0

    #@3ae
    return v19

    #@3af
    .line 577
    .end local v8    # "headerId":I
    .end local v13    # "packet":Ljavax/obex/ObexPacket;
    :cond_20
    const/16 v19, 0x0

    #@3b1
    monitor-exit p0

    #@3b2
    return v19
.end method

.method public streamClosed(Z)V
    .locals 0
    .param p1, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 844
    return-void
.end method
