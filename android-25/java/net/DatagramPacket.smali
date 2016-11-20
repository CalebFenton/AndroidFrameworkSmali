.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field address:Ljava/net/InetAddress;

.field buf:[B

.field bufLength:I

.field length:I

.field offset:I

.field port:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-static {}, Ljava/net/DatagramPacket;->init()V

    #@3
    .line 44
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    .line 94
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    #@4
    .line 93
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    #@6
    .line 79
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    #@9
    .line 80
    const/4 v0, -0x1

    #@a
    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    #@c
    .line 77
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    #@6
    .line 116
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@9
    .line 117
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    #@c
    .line 114
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    #@6
    .line 139
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    #@9
    .line 137
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    #@0
    .prologue
    .line 156
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
    .line 155
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2, p3}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/SocketAddress;)V

    #@4
    .line 173
    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 187
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
    .line 211
    :try_start_0
    iget-object v0, p0, Ljava/net/DatagramPacket;->buf:[B
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
    .line 236
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
    .line 224
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
    .line 199
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
    .line 336
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

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "iaddr"    # Ljava/net/InetAddress;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 279
    :try_start_0
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 278
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
    .locals 2
    .param p1, "buf"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 354
    if-nez p1, :cond_0

    #@3
    .line 355
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "null packet buffer"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 357
    :cond_0
    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    #@11
    .line 358
    const/4 v0, 0x0

    #@12
    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    #@14
    .line 359
    array-length v0, p1

    #@15
    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    #@17
    .line 360
    array-length v0, p1

    #@18
    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 353
    return-void
.end method

.method public declared-synchronized setData([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 260
    if-ltz p3, :cond_0

    #@3
    if-gez p2, :cond_1

    #@5
    .line 263
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "illegal length or offset"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    .line 261
    :cond_1
    add-int v0, p3, p2

    #@13
    if-ltz v0, :cond_0

    #@15
    .line 262
    add-int v0, p3, p2

    #@17
    :try_start_1
    array-length v1, p1

    #@18
    if-gt v0, v1, :cond_0

    #@1a
    .line 265
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    #@1c
    .line 266
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    #@1e
    .line 267
    iput p3, p0, Ljava/net/DatagramPacket;->bufLength:I

    #@20
    .line 268
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 258
    return-void
.end method

.method public declared-synchronized setLength(I)V
    .locals 2
    .param p1, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 382
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    #@3
    add-int/2addr v0, p1

    #@4
    iget-object v1, p0, Ljava/net/DatagramPacket;->buf:[B

    #@6
    array-length v1, v1

    #@7
    if-gt v0, v1, :cond_0

    #@9
    if-gez p1, :cond_1

    #@b
    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "illegal length"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0

    #@17
    .line 383
    :cond_1
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    #@19
    add-int/2addr v0, p1

    #@1a
    if-ltz v0, :cond_0

    #@1c
    .line 386
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    #@1e
    .line 387
    iget v0, p0, Ljava/net/DatagramPacket;->length:I

    #@20
    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 381
    return-void
.end method

.method public declared-synchronized setPort(I)V
    .locals 3
    .param p1, "iport"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 300
    if-ltz p1, :cond_0

    #@3
    const v0, 0xffff

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 301
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Port out of range:"

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
    .line 303
    :cond_1
    :try_start_1
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 299
    return-void
.end method

.method public setReceivedLength(I)V
    .locals 0
    .param p1, "length"    # I

    #@0
    .prologue
    .line 288
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    #@2
    .line 287
    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "address"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 318
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 320
    move-object v0, p1

    #@8
    check-cast v0, Ljava/net/InetSocketAddress;

    #@a
    move-object v1, v0

    #@b
    .line 321
    .local v1, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "unresolved address"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit p0

    #@1c
    throw v2

    #@1d
    .line 319
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v3, "unsupported address type"

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 323
    .restart local v1    # "addr":Ljava/net/InetSocketAddress;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p0, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@2d
    .line 324
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@30
    move-result v2

    #@31
    invoke-virtual {p0, v2}, Ljava/net/DatagramPacket;->setPort(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit p0

    #@35
    .line 317
    return-void
.end method
