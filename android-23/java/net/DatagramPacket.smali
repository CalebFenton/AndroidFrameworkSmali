.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private data:[B

.field private length:I

.field private offset:I

.field private port:I

.field private userSuppliedLength:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    #@4
    .line 59
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    #@6
    .line 48
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    #@9
    .line 75
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    #@c
    .line 74
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "aPort"    # I

    #@0
    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    #@3
    .line 97
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    #@6
    .line 98
    iput-object p4, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    #@8
    .line 95
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "sockAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    #@3
    .line 289
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    #@6
    .line 287
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "host"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    #@0
    .prologue
    .line 117
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, p2

    #@4
    move-object v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    #@9
    .line 116
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "sockAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    #@4
    .line 266
    invoke-virtual {p0, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    #@7
    .line 264
    return-void
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 127
    :try_start_0
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getData()[B
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 136
    :try_start_0
    iget-object v0, p0, Ljava/net/DatagramPacket;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getLength()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 145
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getOffset()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 154
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 164
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 299
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@3
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    #@a
    move-result v2

    #@b
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public resetLengthForReceive()V
    .locals 1

    #@0
    .prologue
    .line 225
    iget v0, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I

    #@2
    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    #@4
    .line 224
    return-void
.end method

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 174
    :try_start_0
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 173
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setData([B)V
    .locals 1
    .param p1, "buf"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 198
    :try_start_0
    array-length v0, p1

    #@2
    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    #@4
    .line 199
    iget v0, p0, Ljava/net/DatagramPacket;->length:I

    #@6
    iput v0, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I

    #@8
    .line 200
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    #@a
    .line 201
    const/4 v0, 0x0

    #@b
    iput v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 197
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized setData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 181
    or-int v0, p2, p3

    #@3
    if-ltz v0, :cond_0

    #@5
    :try_start_0
    array-length v0, p1

    #@6
    if-le p2, v0, :cond_1

    #@8
    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

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
    .line 181
    :cond_1
    :try_start_1
    array-length v0, p1

    #@12
    sub-int/2addr v0, p2

    #@13
    if-gt p3, v0, :cond_0

    #@15
    .line 184
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    #@17
    .line 185
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I

    #@19
    .line 186
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    #@1b
    .line 187
    iput p3, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    .line 180
    return-void
.end method

.method public declared-synchronized setLength(I)V
    .locals 3
    .param p1, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 212
    if-ltz p1, :cond_0

    #@3
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    #@5
    add-int/2addr v0, p1

    #@6
    iget-object v1, p0, Ljava/net/DatagramPacket;->data:[B

    #@8
    array-length v1, v1

    #@9
    if-le v0, v1, :cond_1

    #@b
    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "length="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ", offset="

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Ljava/net/DatagramPacket;->offset:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 214
    const-string/jumbo v2, ", buffer size="

    #@2d
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 214
    iget-object v2, p0, Ljava/net/DatagramPacket;->data:[B

    #@33
    array-length v2, v2

    #@34
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    :catchall_0
    move-exception v0

    #@41
    monitor-exit p0

    #@42
    throw v0

    #@43
    .line 216
    :cond_1
    :try_start_1
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    #@45
    .line 217
    iput p1, p0, Ljava/net/DatagramPacket;->userSuppliedLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit p0

    #@48
    .line 211
    return-void
.end method

.method public declared-synchronized setPort(I)V
    .locals 3
    .param p1, "aPort"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 243
    if-ltz p1, :cond_0

    #@3
    const v0, 0xffff

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 244
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Port out of range: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0

    #@25
    .line 246
    :cond_1
    :try_start_1
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 242
    return-void
.end method

.method public setReceivedLength(I)V
    .locals 0
    .param p1, "length"    # I

    #@0
    .prologue
    .line 233
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    #@2
    .line 232
    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .locals 6
    .param p1, "sockAddr"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 309
    :try_start_0
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    #@4
    if-nez v3, :cond_1

    #@6
    .line 310
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "Socket address not an InetSocketAddress: "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    .line 311
    if-nez p1, :cond_0

    #@16
    .line 310
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2

    #@25
    .line 311
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    goto :goto_0

    #@2a
    .line 313
    :cond_1
    move-object v0, p1

    #@2b
    check-cast v0, Ljava/net/InetSocketAddress;

    #@2d
    move-object v1, v0

    #@2e
    .line 314
    .local v1, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "Socket address unresolved: "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2

    #@4e
    .line 317
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@51
    move-result v2

    #@52
    iput v2, p0, Ljava/net/DatagramPacket;->port:I

    #@54
    .line 318
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@57
    move-result-object v2

    #@58
    iput-object v2, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    monitor-exit p0

    #@5b
    .line 308
    return-void
.end method
