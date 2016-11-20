.class public Lsun/nio/ch/ServerSocketAdaptor;
.super Ljava/net/ServerSocket;
.source "ServerSocketAdaptor.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final ssc:Lsun/nio/ch/ServerSocketChannelImpl;

.field private volatile timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/ServerSocketAdaptor;

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
    sput-boolean v0, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    #@b
    .line 40
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    .locals 1
    .param p1, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    #@6
    .line 62
    iput-object p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@8
    .line 60
    return-void
.end method

.method public static create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;
    .locals 2
    .param p0, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;

    #@0
    .prologue
    .line 52
    :try_start_0
    new-instance v1, Lsun/nio/ch/ServerSocketAdaptor;

    #@2
    invoke-direct {v1, p0}, Lsun/nio/ch/ServerSocketAdaptor;-><init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 53
    :catch_0
    move-exception v0

    #@7
    .line 54
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 95
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@3
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    #@6
    move-result-object v10

    #@7
    monitor-enter v10

    #@8
    .line 96
    :try_start_0
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@a
    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    #@d
    move-result v9

    #@e
    if-nez v9, :cond_0

    #@10
    .line 97
    new-instance v9, Ljava/nio/channels/IllegalBlockingModeException;

    #@12
    invoke-direct {v9}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@15
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 95
    :catchall_0
    move-exception v9

    #@17
    monitor-exit v10

    #@18
    throw v9

    #@19
    .line 99
    :cond_0
    :try_start_1
    iget v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    #@1b
    if-nez v9, :cond_3

    #@1d
    .line 100
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@1f
    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    #@22
    move-result-object v1

    #@23
    .line 101
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_1

    #@25
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@27
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_2

    #@2d
    .line 103
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-object v9

    #@31
    monitor-exit v10

    #@32
    return-object v9

    #@33
    .line 102
    :cond_2
    :try_start_2
    new-instance v9, Ljava/nio/channels/IllegalBlockingModeException;

    #@35
    invoke-direct {v9}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@38
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    .line 139
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :catch_0
    move-exception v8

    #@3a
    .line 140
    .local v8, "x":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v8}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    #@3d
    .line 141
    sget-boolean v9, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    #@3f
    if-nez v9, :cond_f

    #@41
    new-instance v9, Ljava/lang/AssertionError;

    #@43
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@46
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@47
    .line 107
    .end local v8    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    #@48
    .line 108
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    const/4 v2, 0x0

    #@49
    .line 109
    .local v2, "sel":Ljava/nio/channels/Selector;
    :try_start_4
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@4b
    const/4 v11, 0x0

    #@4c
    invoke-virtual {v9, v11}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4f
    .line 112
    :try_start_5
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@51
    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    #@54
    move-result-object v1

    #@55
    .restart local v1    # "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v1, :cond_5

    #@57
    .line 113
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5a
    move-result-object v9

    #@5b
    .line 133
    :try_start_6
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@5d
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@60
    move-result v11

    #@61
    if-eqz v11, :cond_4

    #@63
    .line 134
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@65
    const/4 v12, 0x1

    #@66
    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@69
    :cond_4
    monitor-exit v10

    #@6a
    .line 113
    return-object v9

    #@6b
    .line 114
    :cond_5
    :try_start_7
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@6d
    invoke-static {v9}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    #@70
    move-result-object v2

    #@71
    .line 115
    .local v2, "sel":Ljava/nio/channels/Selector;
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@73
    const/16 v11, 0x10

    #@75
    invoke-virtual {v9, v2, v11}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    #@78
    move-result-object v3

    #@79
    .line 116
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    iget v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    #@7b
    int-to-long v6, v9

    #@7c
    .line 118
    .local v6, "to":J
    :cond_6
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@7e
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@81
    move-result v9

    #@82
    if-nez v9, :cond_a

    #@84
    .line 119
    new-instance v9, Ljava/nio/channels/ClosedChannelException;

    #@86
    invoke-direct {v9}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@89
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@8a
    .line 130
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "sel":Ljava/nio/channels/Selector;
    .end local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v6    # "to":J
    :catchall_1
    move-exception v9

    #@8b
    .line 131
    if-eqz v3, :cond_7

    #@8d
    .line 132
    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@90
    .line 133
    :cond_7
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@92
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@95
    move-result v11

    #@96
    if-eqz v11, :cond_8

    #@98
    .line 134
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@9a
    const/4 v12, 0x1

    #@9b
    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@9e
    .line 135
    :cond_8
    if-eqz v2, :cond_9

    #@a0
    .line 136
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    #@a3
    .line 130
    :cond_9
    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@a4
    .line 120
    .restart local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .restart local v2    # "sel":Ljava/nio/channels/Selector;
    .restart local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .restart local v6    # "to":J
    :cond_a
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a7
    move-result-wide v4

    #@a8
    .line 121
    .local v4, "st":J
    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    #@ab
    move-result v0

    #@ac
    .line 122
    .local v0, "ns":I
    if-lez v0, :cond_e

    #@ae
    .line 123
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    #@b1
    move-result v9

    #@b2
    .line 122
    if-eqz v9, :cond_e

    #@b4
    .line 123
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@b6
    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    #@b9
    move-result-object v1

    #@ba
    if-eqz v1, :cond_e

    #@bc
    .line 124
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@bf
    move-result-object v9

    #@c0
    .line 131
    if-eqz v3, :cond_b

    #@c2
    .line 132
    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@c5
    .line 133
    :cond_b
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@c7
    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@ca
    move-result v11

    #@cb
    if-eqz v11, :cond_c

    #@cd
    .line 134
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@cf
    const/4 v12, 0x1

    #@d0
    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@d3
    .line 135
    :cond_c
    if-eqz v2, :cond_d

    #@d5
    .line 136
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@d8
    :cond_d
    monitor-exit v10

    #@d9
    .line 124
    return-object v9

    #@da
    .line 125
    :cond_e
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    #@dd
    move-result-object v9

    #@de
    invoke-interface {v9, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@e1
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e4
    move-result-wide v12

    #@e5
    sub-long/2addr v12, v4

    #@e6
    sub-long/2addr v6, v12

    #@e7
    .line 127
    const-wide/16 v12, 0x0

    #@e9
    cmp-long v9, v6, v12

    #@eb
    if-gtz v9, :cond_6

    #@ed
    .line 128
    new-instance v9, Ljava/net/SocketTimeoutException;

    #@ef
    invoke-direct {v9}, Ljava/net/SocketTimeoutException;-><init>()V

    #@f2
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@f3
    .end local v0    # "ns":I
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "sel":Ljava/nio/channels/Selector;
    .end local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v4    # "st":J
    .end local v6    # "to":J
    .restart local v8    # "x":Ljava/lang/Exception;
    :cond_f
    monitor-exit v10

    #@f4
    .line 142
    return-object v14
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    const/16 v0, 0x32

    #@2
    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/ServerSocketAdaptor;->bind(Ljava/net/SocketAddress;I)V

    #@5
    .line 66
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 2
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    if-nez p1, :cond_0

    #@2
    .line 72
    new-instance p1, Ljava/net/InetSocketAddress;

    #@4
    .end local p1    # "local":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    #@5
    invoke-direct {p1, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@8
    .line 74
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@a
    invoke-virtual {v1, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 70
    :goto_0
    return-void

    #@e
    .line 75
    :catch_0
    move-exception v0

    #@f
    .line 76
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    #@12
    goto :goto_0
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
    .line 148
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    #@5
    .line 147
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 82
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 83
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@c
    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 89
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 90
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@c
    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@4
    invoke-virtual {v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/lang/Integer;

    #@a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 210
    :catch_0
    move-exception v0

    #@10
    .line 211
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@13
    .line 212
    const/4 v1, -0x1

    #@14
    return v1
.end method

.method public getReuseAddress()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@4
    invoke-virtual {v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/lang/Boolean;

    #@a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 182
    :catch_0
    move-exception v0

    #@10
    .line 183
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@13
    .line 184
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    #@2
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public setReceiveBufferSize(I)V
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    if-gtz p1, :cond_0

    #@2
    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "size cannot be 0 or negative"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@d
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 196
    :goto_0
    return-void

    #@17
    .line 202
    :catch_0
    move-exception v0

    #@18
    .line 203
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@1b
    goto :goto_0
.end method

.method public setReuseAddress(Z)V
    .locals 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 171
    :goto_0
    return-void

    #@c
    .line 174
    :catch_0
    move-exception v0

    #@d
    .line 175
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@10
    goto :goto_0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    iput p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    #@2
    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 190
    const-string/jumbo v0, "ServerSocket[unbound]"

    #@9
    return-object v0

    #@a
    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "ServerSocket[addr="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 193
    const-string/jumbo v1, ",localport="

    #@21
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 193
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getLocalPort()I

    #@28
    move-result v1

    #@29
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 193
    const-string/jumbo v1, "]"

    #@30
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method
