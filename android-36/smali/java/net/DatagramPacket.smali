.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field greylist-max-o address:Ljava/net/InetAddress;

.field greylist-max-o buf:[B

.field greylist-max-o bufLength:I

.field greylist-max-o length:I

.field greylist-max-o offset:I

.field greylist-max-o port:I


# direct methods
.method public constructor whitelist test-api <init>([BI)V
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 105
    return-void
.end method

.method public constructor whitelist test-api <init>([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    .line 91
    return-void
.end method

.method public constructor whitelist test-api <init>([BIILjava/net/InetAddress;I)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 126
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 127
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 128
    return-void
.end method

.method public constructor whitelist test-api <init>([BIILjava/net/SocketAddress;)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/SocketAddress;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 154
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 155
    return-void
.end method

.method public constructor whitelist test-api <init>([BILjava/net/InetAddress;I)V
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    .line 177
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "buf":[B
    .end local p2    # "length":I
    .end local p3    # "address":Ljava/net/InetAddress;
    .end local p4    # "port":I
    .local v1, "buf":[B
    .local v3, "length":I
    .local v4, "address":Ljava/net/InetAddress;
    .local v5, "port":I
    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 178
    return-void
.end method

.method public constructor whitelist test-api <init>([BILjava/net/SocketAddress;)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/SocketAddress;

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/SocketAddress;)V

    .line 195
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getAddress()Ljava/net/InetAddress;
    .registers 2

    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 207
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api getData()[B
    .registers 2

    monitor-enter p0

    .line 231
    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->buf:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 231
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api getLength()I
    .registers 2

    monitor-enter p0

    .line 256
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 256
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api getOffset()I
    .registers 2

    monitor-enter p0

    .line 244
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 244
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api getPort()I
    .registers 2

    monitor-enter p0

    .line 219
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 219
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    monitor-enter p0

    .line 356
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 356
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized whitelist test-api setAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "iaddr"    # Ljava/net/InetAddress;

    monitor-enter p0

    .line 299
    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 300
    monitor-exit p0

    return-void

    .line 298
    .end local p0    # "this":Ljava/net/DatagramPacket;
    .end local p1    # "iaddr":Ljava/net/InetAddress;
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized whitelist test-api setData([B)V
    .registers 4
    .param p1, "buf"    # [B

    monitor-enter p0

    .line 374
    if-eqz p1, :cond_12

    .line 377
    :try_start_3
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    .line 379
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 380
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 381
    monitor-exit p0

    return-void

    .line 373
    .end local p0    # "this":Ljava/net/DatagramPacket;
    .end local p1    # "buf":[B
    :catchall_10
    move-exception p1

    goto :goto_1a

    .line 375
    .restart local p1    # "buf":[B
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null packet buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    .end local p1    # "buf":[B
    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api setData([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    monitor-enter p0

    .line 280
    if-ltz p3, :cond_18

    if-ltz p2, :cond_18

    add-int v0, p3, p2

    if-ltz v0, :cond_18

    add-int v0, p3, p2

    :try_start_b
    array-length v1, p1

    if-gt v0, v1, :cond_18

    .line 285
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    .line 286
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    .line 287
    iput p3, p0, Ljava/net/DatagramPacket;->bufLength:I

    .line 288
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_20

    .line 289
    monitor-exit p0

    return-void

    .line 283
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal length or offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist test-api setLength(I)V
    .registers 4
    .param p1, "length"    # I

    monitor-enter p0

    .line 402
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/net/DatagramPacket;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_18

    if-ltz p1, :cond_18

    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_18

    .line 406
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 407
    iget v0, p0, Ljava/net/DatagramPacket;->length:I

    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    .line 408
    monitor-exit p0

    return-void

    .line 404
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    .end local p1    # "length":I
    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist test-api setPort(I)V
    .registers 5
    .param p1, "iport"    # I

    monitor-enter p0

    .line 320
    if-ltz p1, :cond_c

    const v0, 0xffff

    if-gt p1, v0, :cond_c

    .line 323
    :try_start_8
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_25

    .line 324
    monitor-exit p0

    return-void

    .line 321
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    .end local p1    # "iport":I
    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1
.end method

.method public greylist-max-o setReceivedLength(I)V
    .registers 2
    .param p1, "length"    # I

    .line 308
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 309
    return-void
.end method

.method public declared-synchronized whitelist test-api setSocketAddress(Ljava/net/SocketAddress;)V
    .registers 5
    .param p1, "address"    # Ljava/net/SocketAddress;

    monitor-enter p0

    .line 338
    if-eqz p1, :cond_28

    :try_start_3
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_28

    .line 340
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 341
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_20

    .line 343
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 344
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/net/DatagramPacket;->setPort(I)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_30

    .line 345
    monitor-exit p0

    return-void

    .line 342
    .end local p0    # "this":Ljava/net/DatagramPacket;
    :cond_20
    :try_start_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unresolved address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    .end local p1    # "address":Ljava/net/SocketAddress;
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw p1
.end method
