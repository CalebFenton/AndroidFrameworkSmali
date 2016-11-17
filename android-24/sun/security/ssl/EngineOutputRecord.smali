.class final Lsun/security/ssl/EngineOutputRecord;
.super Lsun/security/ssl/OutputRecord;
.source "EngineOutputRecord.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private engine:Lsun/security/ssl/SSLEngineImpl;

.field private finishedMsg:Z

.field private writer:Lsun/security/ssl/EngineWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/security/ssl/EngineOutputRecord;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineOutputRecord;->-assertionsDisabled:Z

    #@b
    .line 47
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(BLsun/security/ssl/SSLEngineImpl;)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "engine"    # Lsun/security/ssl/SSLEngineImpl;

    #@0
    .prologue
    .line 65
    invoke-static {p1}, Lsun/security/ssl/EngineOutputRecord;->recordSize(B)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/OutputRecord;-><init>(BI)V

    #@7
    .line 52
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    #@a
    .line 66
    iput-object p2, p0, Lsun/security/ssl/EngineOutputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@c
    .line 67
    iget-object v0, p2, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@e
    iput-object v0, p0, Lsun/security/ssl/EngineOutputRecord;->writer:Lsun/security/ssl/EngineWriter;

    #@10
    .line 64
    return-void
.end method

.method private addMAC(Lsun/security/ssl/MAC;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "signer"    # Lsun/security/ssl/MAC;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->MAClen()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 123
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@a
    move-result v1

    #@b
    invoke-virtual {p1, v1, p2, v2}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;Z)[B

    #@e
    move-result-object v0

    #@f
    .line 132
    .local v0, "hash":[B
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    #@12
    move-result v1

    #@13
    array-length v2, v0

    #@14
    add-int/2addr v1, v2

    #@15
    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@18
    .line 133
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@1b
    .line 120
    .end local v0    # "hash":[B
    :cond_0
    return-void
.end method

.method private static recordSize(B)I
    .locals 3
    .param p0, "type"    # B

    #@0
    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    #@3
    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown record type: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 82
    :pswitch_0
    const/16 v0, 0x21b

    #@1f
    return v0

    #@20
    .line 85
    :pswitch_1
    const/16 v0, 0x4219

    #@22
    return v0

    #@23
    .line 88
    :pswitch_2
    const/4 v0, 0x0

    #@24
    return v0

    #@25
    .line 78
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method encrypt(Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "box"    # Lsun/security/ssl/CipherBox;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 148
    invoke-virtual {p1, p2}, Lsun/security/ssl/CipherBox;->encrypt(Ljava/nio/ByteBuffer;)I

    #@3
    .line 147
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    #@3
    .line 98
    return-void
.end method

.method isFinishedMsg()Z
    .locals 1

    #@0
    .prologue
    .line 103
    iget-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    #@2
    return v0
.end method

.method setFinishedMsg()V
    .locals 1

    #@0
    .prologue
    .line 95
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    #@3
    .line 94
    return-void
.end method

.method write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 5
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .param p2, "writeMAC"    # Lsun/security/ssl/MAC;
    .param p3, "writeCipher"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 216
    sget-boolean v3, Lsun/security/ssl/EngineOutputRecord;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@9
    move-result v3

    #@a
    const/16 v4, 0x17

    #@c
    if-ne v3, v4, :cond_0

    #@e
    move v1, v2

    #@f
    :cond_0
    if-nez v1, :cond_1

    #@11
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v1

    #@17
    .line 222
    :cond_1
    sget-object v1, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@19
    if-ne p2, v1, :cond_2

    #@1b
    .line 223
    return-void

    #@1c
    .line 234
    :cond_2
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_3

    #@22
    .line 235
    return-void

    #@23
    .line 259
    :cond_3
    iget-object v1, p0, Lsun/security/ssl/EngineOutputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    #@25
    iget-object v3, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@27
    invoke-virtual {v1, p3, v3}, Lsun/security/ssl/SSLEngineImpl;->needToSplitPayload(Lsun/security/ssl/CipherBox;Lsun/security/ssl/ProtocolVersion;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_5

    #@2d
    .line 260
    invoke-virtual {p0, p1, p2, p3, v2}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;I)V

    #@30
    .line 261
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    #@33
    .line 262
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    #@36
    move-result v1

    #@37
    .line 263
    const/16 v2, 0x3de6

    #@39
    .line 262
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v0

    #@3d
    .line 269
    .local v0, "length":I
    :goto_0
    if-lez v0, :cond_4

    #@3f
    .line 270
    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;I)V

    #@42
    .line 273
    :cond_4
    return-void

    #@43
    .line 265
    .end local v0    # "length":I
    :cond_5
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    #@46
    move-result v1

    #@47
    const/16 v2, 0x4000

    #@49
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@4c
    move-result v0

    #@4d
    .restart local v0    # "length":I
    goto :goto_0
.end method

.method write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;I)V
    .locals 8
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .param p2, "writeMAC"    # Lsun/security/ssl/MAC;
    .param p3, "writeCipher"    # Lsun/security/ssl/CipherBox;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    iget-object v0, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@2
    .line 282
    .local v0, "dstBB":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    #@5
    move-result v3

    #@6
    .line 283
    .local v3, "dstPos":I
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    #@9
    move-result v2

    #@a
    .line 291
    .local v2, "dstLim":I
    add-int/lit8 v1, v3, 0x5

    #@c
    .line 292
    .local v1, "dstData":I
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@f
    .line 294
    invoke-virtual {p1, p4}, Lsun/security/ssl/EngineArgs;->gather(I)V

    #@12
    .line 301
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    #@15
    move-result v5

    #@16
    invoke-virtual {v0, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@19
    .line 302
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@1c
    .line 303
    invoke-direct {p0, p2, v0}, Lsun/security/ssl/EngineOutputRecord;->addMAC(Lsun/security/ssl/MAC;Ljava/nio/ByteBuffer;)V

    #@1f
    .line 308
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    #@22
    move-result v5

    #@23
    invoke-virtual {v0, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@26
    .line 309
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 310
    invoke-virtual {p0, p3, v0}, Lsun/security/ssl/EngineOutputRecord;->encrypt(Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)V

    #@2c
    .line 312
    sget-object v5, Lsun/security/ssl/EngineOutputRecord;->debug:Lsun/security/ssl/Debug;

    #@2e
    if-eqz v5, :cond_3

    #@30
    .line 313
    const-string/jumbo v5, "record"

    #@33
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@36
    move-result v5

    #@37
    if-nez v5, :cond_0

    #@39
    const-string/jumbo v5, "handshake"

    #@3c
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@3f
    move-result v5

    #@40
    .line 312
    if-eqz v5, :cond_3

    #@42
    .line 314
    :cond_0
    sget-object v5, Lsun/security/ssl/EngineOutputRecord;->debug:Lsun/security/ssl/Debug;

    #@44
    if-eqz v5, :cond_1

    #@46
    const-string/jumbo v5, "record"

    #@49
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@4c
    move-result v5

    #@4d
    if-nez v5, :cond_2

    #@4f
    .line 315
    :cond_1
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@52
    move-result v5

    #@53
    const/16 v6, 0x14

    #@55
    if-ne v5, v6, :cond_3

    #@57
    .line 316
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@59
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    .line 318
    const-string/jumbo v7, ", WRITE: "

    #@6d
    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 318
    iget-object v7, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@73
    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    .line 319
    const-string/jumbo v7, " "

    #@7a
    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 319
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@81
    move-result v7

    #@82
    invoke-static {v7}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    #@85
    move-result-object v7

    #@86
    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    .line 320
    const-string/jumbo v7, ", length = "

    #@8d
    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    .line 323
    :cond_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    #@9f
    move-result v5

    #@a0
    sub-int v4, v5, v1

    #@a2
    .line 328
    .local v4, "packetLength":I
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@a5
    move-result v5

    #@a6
    invoke-virtual {v0, v3, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@a9
    .line 329
    add-int/lit8 v5, v3, 0x1

    #@ab
    iget-object v6, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@ad
    iget-byte v6, v6, Lsun/security/ssl/ProtocolVersion;->major:B

    #@af
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@b2
    .line 330
    add-int/lit8 v5, v3, 0x2

    #@b4
    iget-object v6, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@b6
    iget-byte v6, v6, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@b8
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@bb
    .line 331
    add-int/lit8 v5, v3, 0x3

    #@bd
    shr-int/lit8 v6, v4, 0x8

    #@bf
    int-to-byte v6, v6

    #@c0
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@c3
    .line 332
    add-int/lit8 v5, v3, 0x4

    #@c5
    int-to-byte v6, v4

    #@c6
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@c9
    .line 337
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@cc
    .line 339
    return-void
.end method

.method write(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 3
    .param p1, "writeMAC"    # Lsun/security/ssl/MAC;
    .param p2, "writeCipher"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 177
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@4
    move-result v0

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "unexpected byte buffers"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 196
    :pswitch_0
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->isEmpty()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_0

    #@17
    .line 198
    invoke-virtual {p0, p1}, Lsun/security/ssl/OutputRecord;->addMAC(Lsun/security/ssl/MAC;)V

    #@1a
    .line 199
    invoke-virtual {p0, p2}, Lsun/security/ssl/OutputRecord;->encrypt(Lsun/security/ssl/CipherBox;)V

    #@1d
    move-object v0, v1

    #@1e
    .line 200
    nop

    #@1f
    nop

    #@20
    .line 201
    nop

    #@21
    nop

    #@22
    .line 200
    const/4 v2, 0x0

    #@23
    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/OutputRecord;->write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V

    #@26
    .line 203
    :cond_0
    return-void

    #@27
    .line 177
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method writeBuffer(Ljava/io/OutputStream;[BIII)V
    .locals 3
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "debugOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v1, p2, v2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    #@c
    move-result-object v0

    #@d
    .line 164
    check-cast v0, Ljava/nio/ByteBuffer;

    #@f
    .line 166
    .local v0, "netBB":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lsun/security/ssl/EngineOutputRecord;->writer:Lsun/security/ssl/EngineWriter;

    #@11
    invoke-virtual {v1, v0}, Lsun/security/ssl/EngineWriter;->putOutboundData(Ljava/nio/ByteBuffer;)V

    #@14
    .line 160
    return-void
.end method
