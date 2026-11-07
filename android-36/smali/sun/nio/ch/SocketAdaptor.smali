.class public Lsun/nio/ch/SocketAdaptor;
.super Ljava/net/Socket;
.source "SocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    }
.end annotation


# instance fields
.field private final blacklist sc:Lsun/nio/ch/SocketChannelImpl;

.field private blacklist socketInputStream:Ljava/io/InputStream;

.field private volatile blacklist timeout:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettimeout(Lsun/nio/ch/SocketAdaptor;)I
    .registers 1

    iget p0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    return p0
.end method

.method private constructor blacklist <init>(Lsun/nio/ch/SocketChannelImpl;)V
    .registers 4
    .param p1, "sc"    # Lsun/nio/ch/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 63
    new-instance v0, Lsun/nio/ch/FileDescriptorHolderSocketImpl;

    invoke-virtual {p1}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/nio/ch/FileDescriptorHolderSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    .line 64
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    .line 65
    return-void
.end method

.method public static blacklist create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;
    .registers 4
    .param p0, "sc"    # Lsun/nio/ch/SocketChannelImpl;

    .line 69
    :try_start_0
    new-instance v0, Lsun/nio/ch/SocketAdaptor;

    invoke-direct {v0, p0}, Lsun/nio/ch/SocketAdaptor;-><init>(Lsun/nio/ch/SocketChannelImpl;)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 70
    :catch_6
    move-exception v0

    .line 71
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "Should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

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

    .line 306
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 307
    :catch_d
    move-exception v0

    .line 308
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 309
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

    .line 315
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 316
    :catch_d
    move-exception v0

    .line 317
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 318
    const/4 v1, -0x1

    return v1
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

    .line 288
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 291
    goto :goto_e

    .line 289
    :catch_a
    move-exception v0

    .line 290
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 292
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

    .line 298
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 301
    goto :goto_e

    .line 299
    :catch_a
    move-exception v0

    .line 300
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 302
    .end local v0    # "x":Ljava/io/IOException;
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 147
    goto :goto_a

    .line 145
    :catch_6
    move-exception v0

    .line 146
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 148
    .end local v0    # "x":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 412
    return-void
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/SocketAdaptor;->connect(Ljava/net/SocketAddress;I)V

    .line 83
    return-void
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .registers 12
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_b5

    .line 88
    if-ltz p2, :cond_ad

    .line 91
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 92
    :try_start_b
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_aa

    if-eqz v1, :cond_a4

    .line 97
    const/4 v1, 0x1

    if-nez p2, :cond_22

    .line 101
    :try_start_16
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2, p1}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_aa

    .line 104
    goto :goto_20

    .line 102
    :catch_1c
    move-exception v2

    .line 103
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1d
    invoke-static {v2}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_9e
    .catchall {:try_start_1d .. :try_end_20} :catchall_aa

    .line 106
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_aa

    return-void

    .line 109
    :cond_22
    :try_start_22
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_9e
    .catchall {:try_start_22 .. :try_end_28} :catchall_aa

    .line 111
    :try_start_28
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2, p1}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z

    move-result v2
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_8e

    if-eqz v2, :cond_3f

    .line 131
    :try_start_30
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 132
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2, v1}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_9e
    .catchall {:try_start_30 .. :try_end_3d} :catchall_aa

    :cond_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_aa

    .line 112
    return-void

    .line 113
    :cond_3f
    int-to-long v2, p2

    .line 115
    .local v2, "to":J
    :goto_40
    :try_start_40
    iget-object v4, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 119
    .local v4, "st":J
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    sget-short v7, Lsun/nio/ch/Net;->POLLCONN:S

    invoke-virtual {v6, v7, v2, v3}, Lsun/nio/ch/SocketChannelImpl;->poll(IJ)I

    move-result v6

    .line 120
    .local v6, "result":I
    if-lez v6, :cond_6d

    iget-object v7, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/SocketChannelImpl;->finishConnect()Z

    move-result v7
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_8e

    if-eqz v7, :cond_6d

    .line 121
    nop

    .line 131
    .end local v2    # "to":J
    .end local v4    # "st":J
    .end local v6    # "result":I
    :try_start_5f
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 132
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2, v1}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6c} :catch_9e
    .catchall {:try_start_5f .. :try_end_6c} :catchall_aa

    .line 137
    :cond_6c
    goto :goto_a2

    .line 122
    .restart local v2    # "to":J
    .restart local v4    # "st":J
    .restart local v6    # "result":I
    :cond_6d
    :try_start_6d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_8e

    sub-long/2addr v7, v4

    sub-long/2addr v2, v7

    .line 123
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_7a

    .line 129
    .end local v4    # "st":J
    .end local v6    # "result":I
    goto :goto_40

    .line 125
    .restart local v4    # "st":J
    .restart local v6    # "result":I
    :cond_7a
    :try_start_7a
    iget-object v7, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v7}, Lsun/nio/ch/SocketChannelImpl;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7f} :catch_80
    .catchall {:try_start_7a .. :try_end_7f} :catchall_8e

    goto :goto_81

    .line 126
    :catch_80
    move-exception v7

    :goto_81
    nop

    .line 127
    :try_start_82
    new-instance v7, Ljava/net/SocketTimeoutException;

    invoke-direct {v7}, Ljava/net/SocketTimeoutException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .end local p1    # "remote":Ljava/net/SocketAddress;
    .end local p2    # "timeout":I
    throw v7

    .line 116
    .end local v4    # "st":J
    .end local v6    # "result":I
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .restart local p1    # "remote":Ljava/net/SocketAddress;
    .restart local p2    # "timeout":I
    :cond_88
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .end local p1    # "remote":Ljava/net/SocketAddress;
    .end local p2    # "timeout":I
    throw v4
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_8e

    .line 131
    .end local v2    # "to":J
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .restart local p1    # "remote":Ljava/net/SocketAddress;
    .restart local p2    # "timeout":I
    :catchall_8e
    move-exception v2

    :try_start_8f
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 132
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v3, v1}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 133
    :cond_9c
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .end local p1    # "remote":Ljava/net/SocketAddress;
    .end local p2    # "timeout":I
    throw v2
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9e} :catch_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_aa

    .line 135
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .restart local p1    # "remote":Ljava/net/SocketAddress;
    .restart local p2    # "timeout":I
    :catch_9e
    move-exception v2

    .line 136
    .local v2, "x":Ljava/lang/Exception;
    :try_start_9f
    invoke-static {v2, v1}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V

    .line 138
    .end local v2    # "x":Ljava/lang/Exception;
    :goto_a2
    monitor-exit v0

    .line 140
    return-void

    .line 93
    :cond_a4
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .end local p1    # "remote":Ljava/net/SocketAddress;
    .end local p2    # "timeout":I
    throw v1

    .line 138
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor;
    .restart local p1    # "remote":Ljava/net/SocketAddress;
    .restart local p2    # "timeout":I
    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_aa

    throw v1

    .line 89
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: The address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .line 76
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    return-object v0
.end method

.method public blacklist test-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 461
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 153
    return-object v1

    .line 155
    :cond_8
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 156
    .local v0, "remote":Ljava/net/SocketAddress;
    if-nez v0, :cond_11

    .line 157
    return-object v1

    .line 159
    :cond_11
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 244
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 246
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 248
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_32

    .line 250
    :try_start_1c
    new-instance v0, Lsun/nio/ch/SocketAdaptor$1;

    invoke-direct {v0, p0}, Lsun/nio/ch/SocketAdaptor$1;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;
    :try_end_29
    .catch Ljava/security/PrivilegedActionException; {:try_start_1c .. :try_end_29} :catch_2a

    .line 258
    goto :goto_32

    .line 256
    :catch_2a
    move-exception v0

    .line 257
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 260
    .end local v0    # "e":Ljava/security/PrivilegedActionException;
    :cond_32
    :goto_32
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    return-object v0

    .line 247
    :cond_35
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_3d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_45
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getKeepAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 391
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 3

    .line 164
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 165
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 166
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_19

    .line 167
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 170
    .end local v0    # "local":Ljava/net/InetSocketAddress;
    :cond_19
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLocalPort()I
    .registers 3

    .line 187
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 188
    .local v0, "local":Ljava/net/SocketAddress;
    if-nez v0, :cond_a

    .line 189
    const/4 v1, -0x1

    return v1

    .line 191
    :cond_a
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method public whitelist test-api getOOBInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 351
    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 266
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 268
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_19
    new-instance v1, Lsun/nio/ch/SocketAdaptor$2;

    invoke-direct {v1, p0}, Lsun/nio/ch/SocketAdaptor$2;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;
    :try_end_24
    .catch Ljava/security/PrivilegedActionException; {:try_start_19 .. :try_end_24} :catch_26

    .line 280
    .end local v0    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    nop

    .line 281
    return-object v1

    .line 278
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    :catch_26
    move-exception v1

    .line 279
    .local v1, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 269
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :cond_2e
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_36
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3e
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPort()I
    .registers 3

    .line 175
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 176
    return v1

    .line 178
    :cond_8
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 179
    .local v0, "remote":Ljava/net/SocketAddress;
    if-nez v0, :cond_11

    .line 180
    return v1

    .line 182
    :cond_11
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method public whitelist test-api getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 383
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

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

    .line 407
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

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

    .line 372
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSoLinger()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 337
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

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

    .line 361
    iget v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    return v0
.end method

.method public whitelist test-api getTcpNoDelay()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 327
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 399
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 443
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

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

    .line 447
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isConnected()Z
    .registers 2

    .line 439
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isInputShutdown()Z
    .registers 2

    .line 451
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isOutputShutdown()Z
    .registers 2

    .line 455
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api sendUrgentData(I)V
    .registers 5
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(B)I

    move-result v0

    .line 342
    .local v0, "n":I
    if-eqz v0, :cond_a

    .line 344
    return-void

    .line 343
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket buffer full"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setKeepAlive(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 387
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 388
    return-void
.end method

.method public whitelist test-api setOOBInline(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 347
    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 348
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

    .line 377
    if-lez p1, :cond_8

    .line 379
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 380
    return-void

    .line 378
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

    .line 403
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 404
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

    .line 366
    if-lez p1, :cond_8

    .line 368
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 369
    return-void

    .line 367
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setSoLinger(ZI)V
    .registers 4
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 331
    if-nez p1, :cond_3

    .line 332
    const/4 p2, -0x1

    .line 333
    :cond_3
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p2}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 334
    return-void
.end method

.method public whitelist test-api setSoTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 355
    if-ltz p1, :cond_5

    .line 357
    iput p1, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    .line 358
    return-void

    .line 356
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTcpNoDelay(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 323
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 324
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

    .line 395
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 396
    return-void
.end method

.method public whitelist test-api shutdownInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->shutdownInput()Ljava/nio/channels/SocketChannel;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 419
    goto :goto_a

    .line 417
    :catch_6
    move-exception v0

    .line 418
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 420
    .end local v0    # "x":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public whitelist test-api shutdownOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->shutdownOutput()Ljava/nio/channels/SocketChannel;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 427
    goto :goto_a

    .line 425
    :catch_6
    move-exception v0

    .line 426
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 428
    .end local v0    # "x":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 431
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    return-object v0

    .line 435
    :cond_42
    const-string v0, "Socket[unconnected]"

    return-object v0
.end method
