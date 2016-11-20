.class public Lsun/nio/ch/DatagramSocketAdaptor;
.super Ljava/net/DatagramSocket;
.source "DatagramSocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/DatagramSocketAdaptor$1;
    }
.end annotation


# static fields
.field private static final dummyDatagramSocket:Ljava/net/DatagramSocketImpl;


# instance fields
.field private final dc:Lsun/nio/ch/DatagramChannelImpl;

.field private volatile timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 385
    new-instance v0, Lsun/nio/ch/DatagramSocketAdaptor$1;

    #@2
    invoke-direct {v0}, Lsun/nio/ch/DatagramSocketAdaptor$1;-><init>()V

    #@5
    .line 384
    sput-object v0, Lsun/nio/ch/DatagramSocketAdaptor;->dummyDatagramSocket:Ljava/net/DatagramSocketImpl;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Lsun/nio/ch/DatagramChannelImpl;)V
    .locals 1
    .param p1, "dc"    # Lsun/nio/ch/DatagramChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    sget-object v0, Lsun/nio/ch/DatagramSocketAdaptor;->dummyDatagramSocket:Ljava/net/DatagramSocketImpl;

    #@2
    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    #@5
    .line 49
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    #@8
    .line 58
    iput-object p1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@a
    .line 52
    return-void
.end method

.method private connectInternal(Ljava/net/SocketAddress;)V
    .locals 6
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    invoke-static {p1}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@3
    move-result-object v0

    #@4
    .line 73
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@7
    move-result v1

    #@8
    .line 74
    .local v1, "port":I
    if-ltz v1, :cond_0

    #@a
    const v3, 0xffff

    #@d
    if-le v1, v3, :cond_1

    #@f
    .line 75
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "connect: "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 76
    :cond_1
    if-nez p1, :cond_2

    #@2b
    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v4, "connect: null address"

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 78
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_3

    #@3a
    .line 79
    return-void

    #@3b
    .line 81
    :cond_3
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@3d
    invoke-virtual {v3, p1}, Lsun/nio/ch/DatagramChannelImpl;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 70
    :goto_0
    return-void

    #@41
    .line 82
    :catch_0
    move-exception v2

    #@42
    .line 83
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@45
    goto :goto_0
.end method

.method public static create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;
    .locals 2
    .param p0, "dc"    # Lsun/nio/ch/DatagramChannelImpl;

    #@0
    .prologue
    .line 63
    :try_start_0
    new-instance v1, Lsun/nio/ch/DatagramSocketAdaptor;

    #@2
    invoke-direct {v1, p0}, Lsun/nio/ch/DatagramSocketAdaptor;-><init>(Lsun/nio/ch/DatagramChannelImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 64
    :catch_0
    move-exception v0

    #@7
    .line 65
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method private getBooleanOption(Ljava/net/SocketOption;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v1, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/Boolean;

    #@8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 297
    :catch_0
    move-exception v0

    #@e
    .line 298
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@11
    .line 299
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method private getIntOption(Ljava/net/SocketOption;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v1, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/Integer;

    #@8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 306
    :catch_0
    move-exception v0

    #@e
    .line 307
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@11
    .line 308
    const/4 v1, -0x1

    #@12
    return v1
.end method

.method private receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 11
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 175
    iget v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    #@4
    if-nez v8, :cond_0

    #@6
    .line 176
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@8
    invoke-virtual {v8, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    #@b
    move-result-object v8

    #@c
    return-object v8

    #@d
    .line 180
    :cond_0
    const/4 v3, 0x0

    #@e
    .line 181
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    const/4 v1, 0x0

    #@f
    .line 182
    .local v1, "sel":Ljava/nio/channels/Selector;
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@11
    invoke-virtual {v8, v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@14
    .line 186
    :try_start_0
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@16
    invoke-virtual {v8, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v2

    #@1a
    .local v2, "sender":Ljava/net/SocketAddress;
    if-eqz v2, :cond_2

    #@1c
    .line 209
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@1e
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_1

    #@24
    .line 210
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@26
    invoke-virtual {v8, v10}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@29
    .line 187
    :cond_1
    return-object v2

    #@2a
    .line 188
    :cond_2
    :try_start_1
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2c
    invoke-static {v8}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    #@2f
    move-result-object v1

    #@30
    .line 189
    .local v1, "sel":Ljava/nio/channels/Selector;
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@32
    const/4 v9, 0x1

    #@33
    invoke-virtual {v8, v1, v9}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    #@36
    move-result-object v3

    #@37
    .line 190
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    iget v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    #@39
    int-to-long v6, v8

    #@3a
    .line 192
    .local v6, "to":J
    :cond_3
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@3c
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@3f
    move-result v8

    #@40
    if-nez v8, :cond_7

    #@42
    .line 193
    new-instance v8, Ljava/nio/channels/ClosedChannelException;

    #@44
    invoke-direct {v8}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@47
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 206
    .end local v1    # "sel":Ljava/nio/channels/Selector;
    .end local v2    # "sender":Ljava/net/SocketAddress;
    .end local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v6    # "to":J
    :catchall_0
    move-exception v8

    #@49
    .line 207
    if-eqz v3, :cond_4

    #@4b
    .line 208
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@4e
    .line 209
    :cond_4
    iget-object v9, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@50
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_5

    #@56
    .line 210
    iget-object v9, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@58
    invoke-virtual {v9, v10}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@5b
    .line 211
    :cond_5
    if-eqz v1, :cond_6

    #@5d
    .line 212
    invoke-static {v1}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    #@60
    .line 206
    :cond_6
    throw v8

    #@61
    .line 194
    .restart local v1    # "sel":Ljava/nio/channels/Selector;
    .restart local v2    # "sender":Ljava/net/SocketAddress;
    .restart local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .restart local v6    # "to":J
    :cond_7
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@64
    move-result-wide v4

    #@65
    .line 195
    .local v4, "st":J
    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    #@68
    move-result v0

    #@69
    .line 196
    .local v0, "ns":I
    if-lez v0, :cond_b

    #@6b
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    #@6e
    move-result v8

    #@6f
    if-eqz v8, :cond_b

    #@71
    .line 197
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@73
    invoke-virtual {v8, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    move-result-object v2

    #@77
    if-eqz v2, :cond_b

    #@79
    .line 207
    if-eqz v3, :cond_8

    #@7b
    .line 208
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@7e
    .line 209
    :cond_8
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@80
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@83
    move-result v8

    #@84
    if-eqz v8, :cond_9

    #@86
    .line 210
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@88
    invoke-virtual {v8, v10}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@8b
    .line 211
    :cond_9
    if-eqz v1, :cond_a

    #@8d
    .line 212
    invoke-static {v1}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    #@90
    .line 198
    :cond_a
    return-object v2

    #@91
    .line 200
    :cond_b
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    #@94
    move-result-object v8

    #@95
    invoke-interface {v8, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@98
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9b
    move-result-wide v8

    #@9c
    sub-long/2addr v8, v4

    #@9d
    sub-long/2addr v6, v8

    #@9e
    .line 202
    const-wide/16 v8, 0x0

    #@a0
    cmp-long v8, v6, v8

    #@a2
    if-gtz v8, :cond_3

    #@a4
    .line 203
    new-instance v8, Ljava/net/SocketTimeoutException;

    #@a6
    invoke-direct {v8}, Ljava/net/SocketTimeoutException;-><init>()V

    #@a9
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private setBooleanOption(Ljava/net/SocketOption;Z)V
    .locals 3
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 275
    :goto_0
    return-void

    #@a
    .line 279
    :catch_0
    move-exception v0

    #@b
    .line 280
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method

.method private setIntOption(Ljava/net/SocketOption;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 285
    :goto_0
    return-void

    #@a
    .line 289
    :catch_0
    move-exception v0

    #@b
    .line 290
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    if-nez p1, :cond_0

    #@2
    .line 90
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@8
    .end local p1    # "local":Ljava/net/SocketAddress;
    .local v0, "local":Ljava/net/SocketAddress;
    move-object p1, v0

    #@9
    .line 91
    .end local v0    # "local":Ljava/net/SocketAddress;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@b
    invoke-virtual {v2, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 87
    :goto_0
    return-void

    #@f
    .line 92
    :catch_0
    move-exception v1

    #@10
    .line 93
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@13
    goto :goto_0
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 357
    return-void

    #@6
    .line 360
    :catch_0
    move-exception v0

    #@7
    .line 361
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 99
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    #@2
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@5
    invoke-direct {p0, v1}, Lsun/nio/ch/DatagramSocketAdaptor;->connectInternal(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 97
    :goto_0
    return-void

    #@9
    .line 100
    :catch_0
    move-exception v0

    #@a
    .local v0, "x":Ljava/net/SocketException;
    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    if-nez p1, :cond_0

    #@2
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Address can\'t be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->connectInternal(Ljava/net/SocketAddress;)V

    #@e
    .line 105
    return-void
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v1}, Lsun/nio/ch/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 111
    return-void

    #@6
    .line 114
    :catch_0
    move-exception v0

    #@7
    .line 115
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public getBroadcast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    return-object v0
.end method

.method public final getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    iget-object v0, v0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 129
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@8
    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@13
    move-result-object v0

    #@14
    .line 128
    :goto_0
    return-object v0

    #@15
    .line 130
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 236
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 237
    return-object v5

    #@9
    .line 238
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@b
    invoke-virtual {v4}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    #@e
    move-result-object v0

    #@f
    .line 239
    .local v0, "local":Ljava/net/SocketAddress;
    if-nez v0, :cond_1

    #@11
    .line 240
    new-instance v0, Ljava/net/InetSocketAddress;

    #@13
    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-direct {v0, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@16
    .line 241
    .restart local v0    # "local":Ljava/net/SocketAddress;
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    #@18
    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@1b
    move-result-object v1

    #@1c
    .line 242
    .local v1, "result":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@1f
    move-result-object v2

    #@20
    .line 243
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2

    #@22
    .line 245
    :try_start_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    const/4 v5, -0x1

    #@27
    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 250
    :cond_2
    return-object v1

    #@2b
    .line 246
    :catch_0
    move-exception v3

    #@2c
    .line 247
    .local v3, "x":Ljava/lang/SecurityException;
    new-instance v4, Ljava/net/InetSocketAddress;

    #@2e
    invoke-direct {v4, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@31
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v4

    #@35
    return-object v4
.end method

.method public getLocalPort()I
    .locals 3

    #@0
    .prologue
    .line 254
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 255
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 257
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@a
    invoke-virtual {v2}, Lsun/nio/ch/DatagramChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

    #@d
    move-result-object v0

    #@e
    .line 258
    .local v0, "local":Ljava/net/SocketAddress;
    if-eqz v0, :cond_1

    #@10
    .line 259
    check-cast v0, Ljava/net/InetSocketAddress;

    #@12
    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 261
    :catch_0
    move-exception v1

    #@18
    .line 263
    :cond_1
    const/4 v2, 0x0

    #@19
    return v2
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 134
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 135
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@8
    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@13
    move-result v0

    #@14
    .line 134
    :goto_0
    return v0

    #@15
    .line 136
    :cond_0
    const/4 v0, -0x1

    #@16
    goto :goto_0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    #@5
    move-result v0

    #@6
    return v0
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
    .line 271
    iget v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    #@2
    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 354
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

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

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 218
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@9
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 219
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    #@11
    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@14
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 217
    :catchall_0
    move-exception v3

    #@16
    monitor-exit v4

    #@17
    throw v3

    #@18
    .line 221
    :cond_0
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 222
    :try_start_2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    #@1c
    move-result-object v3

    #@1d
    .line 223
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    #@20
    move-result v5

    #@21
    .line 224
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    #@24
    move-result v6

    #@25
    .line 222
    invoke-static {v3, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@28
    move-result-object v0

    #@29
    .line 225
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    #@2c
    move-result-object v1

    #@2d
    .line 226
    .local v1, "sender":Ljava/net/SocketAddress;
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    #@30
    .line 227
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    #@33
    move-result v3

    #@34
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v3, v5

    #@39
    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setLength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "sender":Ljava/net/SocketAddress;
    :goto_0
    monitor-exit v4

    #@3e
    .line 216
    return-void

    #@3f
    .line 221
    :catchall_1
    move-exception v3

    #@40
    :try_start_4
    monitor-exit p1

    #@41
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@42
    .line 229
    :catch_0
    move-exception v2

    #@43
    .line 230
    .local v2, "x":Ljava/io/IOException;
    :try_start_5
    invoke-static {v2}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@46
    goto :goto_0
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 141
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@9
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 142
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    #@11
    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@14
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 140
    :catchall_0
    move-exception v3

    #@16
    monitor-exit v4

    #@17
    throw v3

    #@18
    .line 144
    :cond_0
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 145
    :try_start_2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    #@1c
    move-result-object v3

    #@1d
    .line 146
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    #@20
    move-result v5

    #@21
    .line 147
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    #@24
    move-result v6

    #@25
    .line 145
    invoke-static {v3, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@28
    move-result-object v0

    #@29
    .line 148
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@2b
    invoke-virtual {v3}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 149
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v3

    #@35
    if-nez v3, :cond_1

    #@37
    .line 153
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@39
    invoke-virtual {v3}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@3c
    move-result-object v1

    #@3d
    .line 152
    check-cast v1, Ljava/net/InetSocketAddress;

    #@3f
    .line 154
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@42
    move-result v3

    #@43
    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setPort(I)V

    #@46
    .line 155
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@4d
    .line 156
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@4f
    invoke-virtual {v3, v0}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@52
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :goto_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-exit v4

    #@54
    .line 139
    return-void

    #@55
    .line 159
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_4
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@57
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v3, v0, v5}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5e
    goto :goto_0

    #@5f
    .line 144
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v3

    #@60
    :try_start_5
    monitor-exit p1

    #@61
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@62
    .line 166
    :catch_0
    move-exception v2

    #@63
    .line 167
    .local v2, "x":Ljava/io/IOException;
    :try_start_6
    invoke-static {v2}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@66
    goto :goto_1

    #@67
    .line 163
    .end local v2    # "x":Ljava/io/IOException;
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_7
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    #@69
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v3, v0, v5}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@70
    goto :goto_0
.end method

.method public setBroadcast(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    #@5
    .line 341
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    if-gtz p1, :cond_0

    #@2
    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid receive size"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 325
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@d
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    #@10
    .line 322
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    #@5
    .line 332
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    if-gtz p1, :cond_0

    #@2
    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid send size"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 315
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    #@d
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    #@10
    .line 312
    return-void
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
    .line 267
    iput p1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    #@2
    .line 266
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    #@5
    .line 349
    return-void
.end method
