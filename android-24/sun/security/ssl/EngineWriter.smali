.class final Lsun/security/ssl/EngineWriter;
.super Ljava/lang/Object;
.source "EngineWriter.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private outboundClosed:Z

.field private outboundList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/security/ssl/EngineWriter;

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
    sput-boolean v0, Lsun/security/ssl/EngineWriter;->-assertionsDisabled:Z

    #@b
    .line 58
    const-string/jumbo v0, "ssl"

    #@e
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lsun/security/ssl/EngineWriter;->debug:Lsun/security/ssl/Debug;

    #@14
    .line 38
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    #@6
    .line 61
    new-instance v0, Ljava/util/LinkedList;

    #@8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@b
    iput-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@d
    .line 60
    return-void
.end method

.method private dumpPacket(Lsun/security/ssl/EngineArgs;Z)V
    .locals 7
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .param p2, "hsData"    # Z

    #@0
    .prologue
    .line 130
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@2
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@5
    .line 132
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    iget-object v4, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    .line 134
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    #@e
    move-result v3

    #@f
    .line 135
    .local v3, "pos":I
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    #@12
    move-result v4

    #@13
    sub-int v4, v3, v4

    #@15
    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@18
    .line 136
    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@1b
    .line 138
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "[Raw write"

    #@25
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    .line 139
    if-eqz p2, :cond_0

    #@2b
    const-string/jumbo v4, ""

    #@2e
    .line 138
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 139
    const-string/jumbo v6, "]: length = "

    #@35
    .line 138
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 140
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@3c
    move-result v6

    #@3d
    .line 138
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 141
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4a
    invoke-virtual {v2, v0, v4}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    #@4d
    .line 128
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    .end local v3    # "pos":I
    :goto_1
    return-void

    #@4e
    .line 139
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "hd":Lsun/misc/HexDumpEncoder;
    .restart local v3    # "pos":I
    :cond_0
    const-string/jumbo v4, " (bb)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    goto :goto_0

    #@52
    .line 142
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    .end local v3    # "pos":I
    :catch_0
    move-exception v1

    #@53
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private getOutboundData(Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4
    .param p1, "dstBB"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 71
    iget-object v2, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 72
    .local v1, "msg":Ljava/lang/Object;
    sget-boolean v2, Lsun/security/ssl/EngineWriter;->-assertionsDisabled:Z

    #@8
    if-nez v2, :cond_0

    #@a
    instance-of v2, v1, Ljava/nio/ByteBuffer;

    #@c
    if-nez v2, :cond_0

    #@e
    new-instance v2, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v2

    #@14
    :cond_0
    move-object v0, v1

    #@15
    .line 74
    check-cast v0, Ljava/nio/ByteBuffer;

    #@17
    .line 75
    .local v0, "bbIn":Ljava/nio/ByteBuffer;
    sget-boolean v2, Lsun/security/ssl/EngineWriter;->-assertionsDisabled:Z

    #@19
    if-nez v2, :cond_2

    #@1b
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@22
    move-result v3

    #@23
    if-lt v2, v3, :cond_1

    #@25
    const/4 v2, 0x1

    #@26
    :goto_0
    if-nez v2, :cond_2

    #@28
    new-instance v2, Ljava/lang/AssertionError;

    #@2a
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2d
    throw v2

    #@2e
    :cond_1
    const/4 v2, 0x0

    #@2f
    goto :goto_0

    #@30
    .line 77
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@33
    .line 84
    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 85
    iget-object v2, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@3b
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    .line 86
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@41
    if-ne v1, v2, :cond_3

    #@43
    .line 87
    iget-object v2, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@45
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@48
    .line 88
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@4a
    return-object v2

    #@4b
    .line 90
    :cond_3
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@4d
    return-object v2

    #@4e
    .line 93
    :cond_4
    const/4 v2, 0x0

    #@4f
    return-object v2
.end method

.method private hasOutboundDataInternal()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 228
    iget-object v1, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method


# virtual methods
.method declared-synchronized closeOutbound()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 240
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 239
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method declared-synchronized hasOutboundData()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 232
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method declared-synchronized isOutboundDone()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 236
    :try_start_0
    iget-boolean v1, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    :cond_0
    :goto_0
    monitor-exit p0

    #@d
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method putOutboundData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@5
    .line 206
    return-void
.end method

.method declared-synchronized putOutboundDataSync(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 217
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 218
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "Write side already closed"

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
    .line 221
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 215
    return-void
.end method

.method declared-synchronized writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3
    .param p1, "outputRecord"    # Lsun/security/ssl/EngineOutputRecord;
    .param p2, "ea"    # Lsun/security/ssl/EngineArgs;
    .param p3, "writeMAC"    # Lsun/security/ssl/MAC;
    .param p4, "writeCipher"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 162
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 163
    iget-object v1, p2, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@a
    invoke-direct {p0, v1}, Lsun/security/ssl/EngineWriter;->getOutboundData(Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@d
    move-result-object v0

    #@e
    .line 165
    .local v0, "hss":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v1, Lsun/security/ssl/EngineWriter;->debug:Lsun/security/ssl/Debug;

    #@10
    if-eqz v1, :cond_0

    #@12
    const-string/jumbo v1, "packet"

    #@15
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 171
    const/4 v1, 0x1

    #@1c
    invoke-direct {p0, p2, v1}, Lsun/security/ssl/EngineWriter;->dumpPacket(Lsun/security/ssl/EngineArgs;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit p0

    #@20
    .line 174
    return-object v0

    #@21
    .line 181
    .end local v0    # "hss":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 182
    new-instance v1, Ljava/io/IOException;

    #@27
    const-string/jumbo v2, "The write side was already closed"

    #@2a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit p0

    #@30
    throw v1

    #@31
    .line 185
    :cond_2
    :try_start_2
    invoke-virtual {p1, p2, p3, p4}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    #@34
    .line 187
    sget-object v1, Lsun/security/ssl/EngineWriter;->debug:Lsun/security/ssl/Debug;

    #@36
    if-eqz v1, :cond_3

    #@38
    const-string/jumbo v1, "packet"

    #@3b
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 188
    const/4 v1, 0x0

    #@42
    invoke-direct {p0, p2, v1}, Lsun/security/ssl/EngineWriter;->dumpPacket(Lsun/security/ssl/EngineArgs;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    :cond_3
    monitor-exit p0

    #@46
    .line 197
    return-object v2
.end method

.method declared-synchronized writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 2
    .param p1, "outputRecord"    # Lsun/security/ssl/EngineOutputRecord;
    .param p2, "writeMAC"    # Lsun/security/ssl/MAC;
    .param p3, "writeCipher"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 108
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 109
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "writer side was already closed."

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
    .line 112
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    #@14
    .line 120
    invoke-virtual {p1}, Lsun/security/ssl/EngineOutputRecord;->isFinishedMsg()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 121
    iget-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    #@1c
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@1e
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    :cond_1
    monitor-exit p0

    #@22
    .line 103
    return-void
.end method
