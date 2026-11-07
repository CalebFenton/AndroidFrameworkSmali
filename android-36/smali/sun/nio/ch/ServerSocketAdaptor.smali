.class public Lsun/nio/ch/ServerSocketAdaptor;
.super Ljava/net/ServerSocket;
.source "ServerSocketAdaptor.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist ssc:Lsun/nio/ch/ServerSocketChannelImpl;

.field private volatile blacklist timeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    .registers 3
    .param p1, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    .line 62
    iput-object p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    .line 63
    return-void
.end method

.method public static blacklist create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;
    .registers 3
    .param p0, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;

    .line 52
    :try_start_0
    new-instance v0, Lsun/nio/ch/ServerSocketAdaptor;

    invoke-direct {v0, p0}, Lsun/nio/ch/ServerSocketAdaptor;-><init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 53
    :catch_6
    move-exception v0

    .line 54
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api accept()Ljava/net/Socket;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 96
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_bf

    if-eqz v1, :cond_b9

    .line 99
    :try_start_f
    iget v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    if-nez v1, :cond_30

    .line 100
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 101
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_2a

    iget-object v2, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/ServerSocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_2a

    .line 102
    :cond_24
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    throw v2

    .line 103
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_b1
    .catchall {:try_start_f .. :try_end_2e} :catchall_bf

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_bf

    return-object v2

    .line 106
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :cond_30
    :try_start_30
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_b1
    .catchall {:try_start_30 .. :try_end_36} :catchall_bf

    .line 109
    const/4 v1, 0x1

    :try_start_37
    iget-object v2, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    move-object v3, v2

    .local v3, "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v2, :cond_53

    .line 110
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_a1

    .line 124
    :try_start_44
    iget-object v4, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 125
    iget-object v4, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v4, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_b1
    .catchall {:try_start_44 .. :try_end_51} :catchall_bf

    :cond_51
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_bf

    .line 110
    return-object v2

    .line 111
    :cond_53
    :try_start_53
    iget v2, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    int-to-long v4, v2

    .line 113
    .local v4, "to":J
    :goto_56
    iget-object v2, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 116
    .local v6, "st":J
    iget-object v2, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-short v8, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v2, v8, v4, v5}, Lsun/nio/ch/ServerSocketChannelImpl;->poll(IJ)I

    move-result v2

    .line 117
    .local v2, "result":I
    if-lez v2, :cond_88

    iget-object v8, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v8

    move-object v3, v8

    if-eqz v8, :cond_88

    .line 118
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_a1

    .line 124
    :try_start_79
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 125
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_86} :catch_b1
    .catchall {:try_start_79 .. :try_end_86} :catchall_bf

    :cond_86
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_bf

    .line 118
    return-object v8

    .line 119
    :cond_88
    :try_start_88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 120
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_95

    .line 122
    .end local v2    # "result":I
    .end local v6    # "st":J
    goto :goto_56

    .line 121
    .restart local v2    # "result":I
    .restart local v6    # "st":J
    :cond_95
    new-instance v8, Ljava/net/SocketTimeoutException;

    invoke-direct {v8}, Ljava/net/SocketTimeoutException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    throw v8

    .line 114
    .end local v2    # "result":I
    .end local v6    # "st":J
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    :cond_9b
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    throw v2
    :try_end_a1
    .catchall {:try_start_88 .. :try_end_a1} :catchall_a1

    .line 124
    .end local v3    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v4    # "to":J
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    :catchall_a1
    move-exception v2

    :try_start_a2
    iget-object v3, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 125
    iget-object v3, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v3, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 126
    :cond_af
    nop

    .end local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    throw v2
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b1} :catch_b1
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_bf

    .line 128
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    :catch_b1
    move-exception v1

    .line 129
    .local v1, "x":Ljava/lang/Exception;
    :try_start_b2
    invoke-static {v1}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 130
    nop

    .line 131
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 97
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_b9
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    throw v1

    .line 133
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketAdaptor;
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_b2 .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/ServerSocketAdaptor;->bind(Ljava/net/SocketAddress;I)V

    .line 68
    return-void
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;I)V
    .registers 5
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    if-nez p1, :cond_9

    .line 72
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object p1, v0

    .line 74
    :cond_9
    :try_start_9
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 77
    goto :goto_13

    .line 75
    :catch_f
    move-exception v0

    .line 76
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 78
    .end local v0    # "x":Ljava/lang/Exception;
    :goto_13
    return-void
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->close()V

    .line 138
    return-void
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .line 141
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 81
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_a

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_a
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLocalPort()I
    .registers 2

    .line 88
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_a

    .line 89
    const/4 v0, -0x1

    return v0

    .line 90
    :cond_a
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 198
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 199
    :catch_f
    move-exception v0

    .line 200
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 201
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 171
    :catch_f
    move-exception v0

    .line 172
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 173
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 157
    iget v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    return v0
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 145
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isClosed()Z
    .registers 2

    .line 149
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 187
    if-lez p1, :cond_13

    .line 190
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_e

    .line 193
    goto :goto_12

    .line 191
    :catch_e
    move-exception v0

    .line 192
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 194
    .end local v0    # "x":Ljava/io/IOException;
    :goto_12
    return-void

    .line 188
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be 0 or negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setReuseAddress(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 162
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 165
    goto :goto_10

    .line 163
    :catch_c
    move-exception v0

    .line 164
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 166
    .end local v0    # "x":Ljava/io/IOException;
    :goto_10
    return-void
.end method

.method public whitelist test-api setSoTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 153
    iput p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    .line 154
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 178
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->isBound()Z

    move-result v0

    if-nez v0, :cond_9

    .line 179
    const-string v0, "ServerSocket[unbound]"

    return-object v0

    .line 180
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerSocket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method
