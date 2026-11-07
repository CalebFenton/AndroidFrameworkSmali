.class public Lsun/nio/ch/DatagramSocketAdaptor;
.super Ljava/net/DatagramSocket;
.source "DatagramSocketAdaptor.java"


# static fields
.field private static final blacklist dummyDatagramSocket:Ljava/net/DatagramSocketImpl;


# instance fields
.field private final blacklist dc:Lsun/nio/ch/DatagramChannelImpl;

.field private volatile blacklist timeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 375
    new-instance v0, Lsun/nio/ch/DatagramSocketAdaptor$1;

    invoke-direct {v0}, Lsun/nio/ch/DatagramSocketAdaptor$1;-><init>()V

    sput-object v0, Lsun/nio/ch/DatagramSocketAdaptor;->dummyDatagramSocket:Ljava/net/DatagramSocketImpl;

    return-void
.end method

.method private constructor blacklist <init>(Lsun/nio/ch/DatagramChannelImpl;)V
    .registers 3
    .param p1, "dc"    # Lsun/nio/ch/DatagramChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    sget-object v0, Lsun/nio/ch/DatagramSocketAdaptor;->dummyDatagramSocket:Ljava/net/DatagramSocketImpl;

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    .line 58
    iput-object p1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    .line 59
    return-void
.end method

.method private blacklist connectInternal(Ljava/net/SocketAddress;)V
    .registers 7
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 73
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 74
    .local v1, "port":I
    if-ltz v1, :cond_2b

    const v2, 0xffff

    if-gt v1, v2, :cond_2b

    .line 76
    if-eqz p1, :cond_23

    .line 78
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 79
    return-void

    .line 81
    :cond_18
    :try_start_18
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v2, p1}, Lsun/nio/ch/DatagramChannelImpl;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 84
    goto :goto_22

    .line 82
    :catch_1e
    move-exception v2

    .line 83
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 85
    .end local v2    # "x":Ljava/lang/Exception;
    :goto_22
    return-void

    .line 77
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "connect: null address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;
    .registers 3
    .param p0, "dc"    # Lsun/nio/ch/DatagramChannelImpl;

    .line 63
    :try_start_0
    new-instance v0, Lsun/nio/ch/DatagramSocketAdaptor;

    invoke-direct {v0, p0}, Lsun/nio/ch/DatagramSocketAdaptor;-><init>(Lsun/nio/ch/DatagramChannelImpl;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 64
    :catch_6
    move-exception v0

    .line 65
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getBooleanOption(Ljava/net/SocketOption;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 287
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 288
    :catch_d
    move-exception v0

    .line 289
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 290
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getIntOption(Ljava/net/SocketOption;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 296
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 297
    :catch_d
    move-exception v0

    .line 298
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 299
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .registers 11
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    if-nez v0, :cond_b

    .line 176
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 179
    :cond_b
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 183
    const/4 v0, 0x1

    :try_start_12
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_79

    move-object v2, v1

    .local v2, "sender":Ljava/net/SocketAddress;
    if-eqz v1, :cond_2a

    .line 184
    nop

    .line 202
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 203
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1, v0}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 184
    :cond_29
    return-object v2

    .line 185
    :cond_2a
    :try_start_2a
    iget v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    int-to-long v3, v1

    .line 187
    .local v3, "to":J
    :goto_2d
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 190
    .local v5, "st":J
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    sget-short v7, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v1, v7, v3, v4}, Lsun/nio/ch/DatagramChannelImpl;->poll(IJ)I

    move-result v1

    .line 191
    .local v1, "result":I
    if-lez v1, :cond_60

    sget-short v7, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v7, v1

    if-eqz v7, :cond_60

    .line 193
    iget-object v7, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v7, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v7
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_79

    move-object v2, v7

    if-eqz v7, :cond_60

    .line 194
    nop

    .line 202
    iget-object v7, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 203
    iget-object v7, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v7, v0}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 194
    :cond_5f
    return-object v2

    .line 196
    :cond_60
    :try_start_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    sub-long/2addr v3, v7

    .line 197
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_6d

    .line 200
    .end local v1    # "result":I
    .end local v5    # "st":J
    goto :goto_2d

    .line 198
    .restart local v1    # "result":I
    .restart local v5    # "st":J
    :cond_6d
    new-instance v7, Ljava/net/SocketTimeoutException;

    invoke-direct {v7}, Ljava/net/SocketTimeoutException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v7

    .line 188
    .end local v1    # "result":I
    .end local v5    # "st":J
    .restart local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :cond_73
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v1
    :try_end_79
    .catchall {:try_start_60 .. :try_end_79} :catchall_79

    .line 202
    .end local v2    # "sender":Ljava/net/SocketAddress;
    .end local v3    # "to":J
    .restart local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :catchall_79
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 203
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v2, v0}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 204
    :cond_87
    throw v1
.end method

.method private blacklist setBooleanOption(Ljava/net/SocketOption;Z)V
    .registers 5
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 269
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 272
    goto :goto_e

    .line 270
    :catch_a
    move-exception v0

    .line 271
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 273
    .end local v0    # "x":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method private blacklist setIntOption(Ljava/net/SocketOption;I)V
    .registers 5
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 279
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 282
    goto :goto_e

    .line 280
    :catch_a
    move-exception v0

    .line 281
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 283
    .end local v0    # "x":Ljava/io/IOException;
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 89
    if-nez p1, :cond_9

    .line 90
    :try_start_2
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object p1, v0

    .line 91
    :cond_9
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 94
    goto :goto_13

    .line 92
    :catch_f
    move-exception v0

    .line 93
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 95
    .end local v0    # "x":Ljava/lang/Exception;
    :goto_13
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 350
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 353
    nop

    .line 354
    return-void

    .line 351
    :catch_7
    move-exception v0

    .line 352
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 99
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->connectInternal(Ljava/net/SocketAddress;)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9

    .line 102
    goto :goto_a

    .line 100
    :catch_9
    move-exception v0

    .line 103
    :goto_a
    return-void
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 106
    if-eqz p1, :cond_6

    .line 108
    invoke-direct {p0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->connectInternal(Ljava/net/SocketAddress;)V

    .line 109
    return-void

    .line 107
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api disconnect()V
    .registers 3

    .line 113
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 116
    nop

    .line 117
    return-void

    .line 114
    :catch_7
    move-exception v0

    .line 115
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getBroadcast()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 337
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .line 361
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    return-object v0
.end method

.method public final blacklist test-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 367
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    iget-object v0, v0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 128
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 129
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_16

    .line 130
    :cond_15
    const/4 v0, 0x0

    .line 128
    :goto_16
    return-object v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 7

    .line 227
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_8
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 230
    .local v0, "local":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 231
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object v0, v2

    .line 232
    :cond_17
    move-object v2, v0

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 233
    .local v2, "result":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 234
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_38

    .line 236
    :try_start_24
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2c} :catch_2d

    .line 239
    goto :goto_38

    .line 237
    :catch_2d
    move-exception v4

    .line 238
    .local v4, "x":Ljava/lang/SecurityException;
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 241
    .end local v4    # "x":Ljava/lang/SecurityException;
    :cond_38
    :goto_38
    return-object v2
.end method

.method public whitelist test-api getLocalPort()I
    .registers 3

    .line 245
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    const/4 v0, -0x1

    return v0

    .line 248
    :cond_8
    :try_start_8
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 249
    .local v0, "local":Ljava/net/SocketAddress;
    if-eqz v0, :cond_18

    .line 250
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    return v1

    .line 253
    .end local v0    # "local":Ljava/net/SocketAddress;
    :cond_18
    goto :goto_1a

    .line 252
    :catch_19
    move-exception v0

    .line 254
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getPort()I
    .registers 2

    .line 134
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 135
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_16

    .line 136
    :cond_15
    const/4 v0, -0x1

    .line 134
    :goto_16
    return v0
.end method

.method public whitelist test-api getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 320
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getReuseAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 328
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 310
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 262
    iget v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    return v0
.end method

.method public whitelist test-api getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 345
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 120
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api isClosed()Z
    .registers 2

    .line 357
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isConnected()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api receive(Ljava/net/DatagramPacket;)V
    .registers 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/DatagramChannelImpl;->isBlocking()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_44

    if-eqz v1, :cond_3e

    .line 212
    :try_start_f
    monitor-enter p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_10} :catch_38
    .catchall {:try_start_f .. :try_end_10} :catchall_44

    .line 213
    :try_start_10
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    .line 215
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    .line 213
    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 216
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Lsun/nio/ch/DatagramSocketAdaptor;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v2

    .line 217
    .local v2, "sender":Ljava/net/SocketAddress;
    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 218
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 219
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "sender":Ljava/net/SocketAddress;
    monitor-exit p1

    .line 222
    goto :goto_3c

    .line 219
    :catchall_35
    move-exception v1

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_35

    .end local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :try_start_37
    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_44

    .line 220
    .restart local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catch_38
    move-exception v1

    .line 221
    .local v1, "x":Ljava/io/IOException;
    :try_start_39
    invoke-static {v1}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 223
    .end local v1    # "x":Ljava/io/IOException;
    :goto_3c
    monitor-exit v0

    .line 224
    return-void

    .line 210
    :cond_3e
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1

    .line 223
    .restart local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public whitelist test-api send(Ljava/net/DatagramPacket;)V
    .registers 6
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/DatagramChannelImpl;->isBlocking()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_6f

    if-eqz v1, :cond_69

    .line 144
    :try_start_f
    monitor-enter p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_10} :catch_63
    .catchall {:try_start_f .. :try_end_10} :catchall_6f

    .line 145
    :try_start_10
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    .line 147
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    .line 145
    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 148
    .local v1, "bb":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 149
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_4b

    .line 152
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    .line 153
    invoke-virtual {v2}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 154
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 155
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 156
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3, v1}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    .line 157
    nop

    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_5e

    .line 159
    :cond_4b
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    goto :goto_5e

    .line 163
    :cond_55
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    .line 165
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :goto_5e
    monitor-exit p1

    .line 168
    goto :goto_67

    .line 165
    :catchall_60
    move-exception v1

    monitor-exit p1
    :try_end_62
    .catchall {:try_start_10 .. :try_end_62} :catchall_60

    .end local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :try_start_62
    throw v1
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_63} :catch_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_6f

    .line 166
    .restart local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catch_63
    move-exception v1

    .line 167
    .local v1, "x":Ljava/io/IOException;
    :try_start_64
    invoke-static {v1}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 169
    .end local v1    # "x":Ljava/io/IOException;
    :goto_67
    monitor-exit v0

    .line 170
    return-void

    .line 142
    :cond_69
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1

    .line 169
    .restart local p0    # "this":Lsun/nio/ch/DatagramSocketAdaptor;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public whitelist test-api setBroadcast(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 333
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 334
    return-void
.end method

.method public whitelist test-api setReceiveBufferSize(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 314
    if-lez p1, :cond_8

    .line 316
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 317
    return-void

    .line 315
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setReuseAddress(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 324
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 325
    return-void
.end method

.method public whitelist test-api setSendBufferSize(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 304
    if-lez p1, :cond_8

    .line 306
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 307
    return-void

    .line 305
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setSoTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 258
    iput p1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    .line 259
    return-void
.end method

.method public whitelist test-api setTrafficClass(I)V
    .registers 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 341
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 342
    return-void
.end method
