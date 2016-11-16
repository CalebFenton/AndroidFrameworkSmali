.class public Lsun/nio/ch/SocketAdaptor;
.super Ljava/net/Socket;
.source "SocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final sc:Lsun/nio/ch/SocketChannelImpl;

.field private socketInputStream:Ljava/io/InputStream;

.field private volatile timeout:I


# direct methods
.method static synthetic -get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/SocketAdaptor;)I
    .locals 1

    #@0
    iget v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/SocketAdaptor;

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
    sput-boolean v0, Lsun/nio/ch/SocketAdaptor;->-assertionsDisabled:Z

    #@b
    .line 53
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Lsun/nio/ch/SocketChannelImpl;)V
    .locals 2
    .param p1, "sc"    # Lsun/nio/ch/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    new-instance v0, Lsun/nio/ch/FileDescriptorHolderSocketImpl;

    #@2
    invoke-virtual {p1}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lsun/nio/ch/FileDescriptorHolderSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    #@9
    invoke-direct {p0, v0}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    #@c
    .line 61
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    #@f
    .line 263
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    #@12
    .line 65
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@14
    .line 63
    return-void
.end method

.method public static create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;
    .locals 3
    .param p0, "sc"    # Lsun/nio/ch/SocketChannelImpl;

    #@0
    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lsun/nio/ch/SocketAdaptor;

    #@2
    invoke-direct {v1, p0}, Lsun/nio/ch/SocketAdaptor;-><init>(Lsun/nio/ch/SocketChannelImpl;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 71
    :catch_0
    move-exception v0

    #@7
    .line 72
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/InternalError;

    #@9
    const-string/jumbo v2, "Should not reach here"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@f
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
    .line 330
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

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
    .line 331
    :catch_0
    move-exception v0

    #@e
    .line 332
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@11
    .line 333
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
    .line 339
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

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
    .line 340
    :catch_0
    move-exception v0

    #@e
    .line 341
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@11
    .line 342
    const/4 v1, -0x1

    #@12
    return v1
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
    .line 312
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 309
    :goto_0
    return-void

    #@a
    .line 313
    :catch_0
    move-exception v0

    #@b
    .line 314
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
    .line 322
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 319
    :goto_0
    return-void

    #@a
    .line 323
    :catch_0
    move-exception v0

    #@b
    .line 324
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 152
    :goto_0
    return-void

    #@6
    .line 155
    :catch_0
    move-exception v0

    #@7
    .line 156
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    #@a
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
    .line 438
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    #@5
    .line 437
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/SocketAdaptor;->connect(Ljava/net/SocketAddress;I)V

    #@4
    .line 82
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 16
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    if-nez p1, :cond_0

    #@2
    .line 88
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v13, "connect: The address can\'t be null"

    #@7
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v12

    #@b
    .line 89
    :cond_0
    if-gez p2, :cond_1

    #@d
    .line 90
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v13, "connect: timeout can\'t be negative"

    #@12
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v12

    #@16
    .line 92
    :cond_1
    move-object/from16 v0, p0

    #@18
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@1a
    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    #@1d
    move-result-object v13

    #@1e
    monitor-enter v13

    #@1f
    .line 93
    :try_start_0
    move-object/from16 v0, p0

    #@21
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@23
    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@26
    move-result v12

    #@27
    if-nez v12, :cond_2

    #@29
    .line 94
    new-instance v12, Ljava/nio/channels/IllegalBlockingModeException;

    #@2b
    invoke-direct {v12}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@2e
    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 92
    :catchall_0
    move-exception v12

    #@30
    monitor-exit v13

    #@31
    throw v12

    #@32
    .line 98
    :cond_2
    if-nez p2, :cond_4

    #@34
    .line 101
    :try_start_1
    move-object/from16 v0, p0

    #@36
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-virtual {v12, v0}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    :goto_0
    monitor-exit v13

    #@3e
    .line 106
    return-void

    #@3f
    .line 102
    :catch_0
    move-exception v2

    #@40
    .line 103
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 145
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    #@45
    .line 146
    .local v11, "x":Ljava/lang/Exception;
    const/4 v12, 0x1

    #@46
    :try_start_3
    invoke-static {v11, v12}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    .end local v11    # "x":Ljava/lang/Exception;
    :cond_3
    :goto_1
    monitor-exit v13

    #@4a
    .line 86
    return-void

    #@4b
    .line 110
    :cond_4
    const/4 v5, 0x0

    #@4c
    .line 111
    .local v5, "sk":Ljava/nio/channels/SelectionKey;
    const/4 v4, 0x0

    #@4d
    .line 112
    .local v4, "sel":Ljava/nio/channels/Selector;
    :try_start_4
    move-object/from16 v0, p0

    #@4f
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@51
    const/4 v14, 0x0

    #@52
    invoke-virtual {v12, v14}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    .line 114
    :try_start_5
    move-object/from16 v0, p0

    #@57
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v12, v0}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5e
    move-result v12

    #@5f
    if-eqz v12, :cond_6

    #@61
    .line 139
    :try_start_6
    move-object/from16 v0, p0

    #@63
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@65
    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@68
    move-result v12

    #@69
    if-eqz v12, :cond_5

    #@6b
    .line 140
    move-object/from16 v0, p0

    #@6d
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@6f
    const/4 v14, 0x1

    #@70
    invoke-virtual {v12, v14}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@73
    :cond_5
    monitor-exit v13

    #@74
    .line 115
    return-void

    #@75
    .line 116
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    #@77
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@79
    invoke-static {v12}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    #@7c
    move-result-object v4

    #@7d
    .line 117
    .local v4, "sel":Ljava/nio/channels/Selector;
    move-object/from16 v0, p0

    #@7f
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@81
    const/16 v14, 0x8

    #@83
    invoke-virtual {v12, v4, v14}, Lsun/nio/ch/SocketChannelImpl;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    #@86
    move-result-object v5

    #@87
    .line 118
    .local v5, "sk":Ljava/nio/channels/SelectionKey;
    move/from16 v0, p2

    #@89
    int-to-long v8, v0

    #@8a
    .line 120
    .local v8, "to":J
    :cond_7
    move-object/from16 v0, p0

    #@8c
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@8e
    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@91
    move-result v12

    #@92
    if-nez v12, :cond_b

    #@94
    .line 121
    new-instance v12, Ljava/nio/channels/ClosedChannelException;

    #@96
    invoke-direct {v12}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@99
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@9a
    .line 136
    .end local v4    # "sel":Ljava/nio/channels/Selector;
    .end local v5    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v8    # "to":J
    :catchall_1
    move-exception v12

    #@9b
    .line 137
    if-eqz v5, :cond_8

    #@9d
    .line 138
    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@a0
    .line 139
    :cond_8
    move-object/from16 v0, p0

    #@a2
    iget-object v14, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@a4
    invoke-virtual {v14}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@a7
    move-result v14

    #@a8
    if-eqz v14, :cond_9

    #@aa
    .line 140
    move-object/from16 v0, p0

    #@ac
    iget-object v14, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@ae
    const/4 v15, 0x1

    #@af
    invoke-virtual {v14, v15}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@b2
    .line 141
    :cond_9
    if-eqz v4, :cond_a

    #@b4
    .line 142
    invoke-static {v4}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    #@b7
    .line 136
    :cond_a
    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@b8
    .line 122
    .restart local v4    # "sel":Ljava/nio/channels/Selector;
    .restart local v5    # "sk":Ljava/nio/channels/SelectionKey;
    .restart local v8    # "to":J
    :cond_b
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@bb
    move-result-wide v6

    #@bc
    .line 123
    .local v6, "st":J
    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/Selector;->select(J)I

    #@bf
    move-result v3

    #@c0
    .line 124
    .local v3, "ns":I
    if-lez v3, :cond_e

    #@c2
    .line 125
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    #@c5
    move-result v12

    #@c6
    .line 124
    if-eqz v12, :cond_e

    #@c8
    .line 125
    move-object/from16 v0, p0

    #@ca
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@cc
    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->finishConnect()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@cf
    move-result v12

    #@d0
    .line 124
    if-eqz v12, :cond_e

    #@d2
    .line 137
    if-eqz v5, :cond_c

    #@d4
    .line 138
    :try_start_a
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@d7
    .line 139
    :cond_c
    move-object/from16 v0, p0

    #@d9
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@db
    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@de
    move-result v12

    #@df
    if-eqz v12, :cond_d

    #@e1
    .line 140
    move-object/from16 v0, p0

    #@e3
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@e5
    const/4 v14, 0x1

    #@e6
    invoke-virtual {v12, v14}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@e9
    .line 141
    :cond_d
    if-eqz v4, :cond_3

    #@eb
    .line 142
    invoke-static {v4}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@ee
    goto/16 :goto_1

    #@f0
    .line 127
    :cond_e
    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    #@f3
    move-result-object v12

    #@f4
    invoke-interface {v12, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@f7
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@fa
    move-result-wide v14

    #@fb
    sub-long/2addr v14, v6

    #@fc
    sub-long/2addr v8, v14

    #@fd
    .line 129
    const-wide/16 v14, 0x0

    #@ff
    cmp-long v12, v8, v14

    #@101
    if-gtz v12, :cond_7

    #@103
    .line 131
    :try_start_c
    move-object/from16 v0, p0

    #@105
    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@107
    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@10a
    .line 133
    :goto_2
    :try_start_d
    new-instance v12, Ljava/net/SocketTimeoutException;

    #@10c
    invoke-direct {v12}, Ljava/net/SocketTimeoutException;-><init>()V

    #@10f
    throw v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@110
    .line 132
    :catch_2
    move-exception v10

    #@111
    .local v10, "x":Ljava/io/IOException;
    goto :goto_2
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 163
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 164
    return-object v2

    #@8
    .line 166
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@a
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@d
    move-result-object v0

    #@e
    .line 167
    .local v0, "remote":Ljava/net/SocketAddress;
    if-nez v0, :cond_1

    #@10
    .line 168
    return-object v2

    #@11
    .line 170
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    #@13
    .end local v0    # "remote":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 267
    new-instance v1, Ljava/net/SocketException;

    #@a
    const-string/jumbo v2, "Socket is closed"

    #@d
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 268
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@13
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 269
    new-instance v1, Ljava/net/SocketException;

    #@1b
    const-string/jumbo v2, "Socket is not connected"

    #@1e
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 270
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@24
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_2

    #@2a
    .line 271
    new-instance v1, Ljava/net/SocketException;

    #@2c
    const-string/jumbo v2, "Socket input is shutdown"

    #@2f
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 272
    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    #@35
    if-nez v1, :cond_3

    #@37
    .line 275
    :try_start_0
    new-instance v1, Lsun/nio/ch/SocketAdaptor$1;

    #@39
    invoke-direct {v1, p0}, Lsun/nio/ch/SocketAdaptor$1;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    #@3c
    .line 274
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Ljava/io/InputStream;

    #@42
    iput-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 284
    :cond_3
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    #@46
    return-object v1

    #@47
    .line 280
    :catch_0
    move-exception v0

    #@48
    .line 281
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Ljava/io/IOException;

    #@4e
    throw v1
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 418
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 3

    #@0
    .prologue
    .line 175
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 176
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@a
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    #@d
    move-result-object v0

    #@e
    .line 177
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_0

    #@10
    .line 178
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 180
    .end local v0    # "local":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@1f
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@22
    move-result-object v1

    #@23
    return-object v1
.end method

.method public getLocalPort()I
    .locals 2

    #@0
    .prologue
    .line 198
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    #@5
    move-result-object v0

    #@6
    .line 199
    .local v0, "local":Ljava/net/SocketAddress;
    if-nez v0, :cond_0

    #@8
    .line 200
    const/4 v1, -0x1

    #@9
    return v1

    #@a
    .line 202
    :cond_0
    check-cast v0, Ljava/net/InetSocketAddress;

    #@c
    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 289
    new-instance v2, Ljava/net/SocketException;

    #@a
    const-string/jumbo v3, "Socket is closed"

    #@d
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 290
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@13
    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 291
    new-instance v2, Ljava/net/SocketException;

    #@1b
    const-string/jumbo v3, "Socket is not connected"

    #@1e
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 292
    :cond_1
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@24
    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 293
    new-instance v2, Ljava/net/SocketException;

    #@2c
    const-string/jumbo v3, "Socket output is shutdown"

    #@2f
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 294
    :cond_2
    const/4 v1, 0x0

    #@34
    .line 297
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Lsun/nio/ch/SocketAdaptor$2;

    #@36
    invoke-direct {v2, p0}, Lsun/nio/ch/SocketAdaptor$2;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    #@39
    .line 296
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    .end local v1    # "os":Ljava/io/OutputStream;
    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 305
    .local v1, "os":Ljava/io/OutputStream;
    return-object v1

    #@40
    .line 302
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    #@41
    .line 303
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Ljava/io/IOException;

    #@47
    throw v2
.end method

.method public getPort()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 186
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 187
    return v2

    #@8
    .line 189
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@a
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@d
    move-result-object v0

    #@e
    .line 190
    .local v0, "remote":Ljava/net/SocketAddress;
    if-nez v0, :cond_1

    #@10
    .line 191
    return v2

    #@11
    .line 193
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    #@13
    .end local v0    # "remote":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@16
    move-result v1

    #@17
    return v1
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
    .line 410
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

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
    .line 434
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

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
    .line 399
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

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
    .line 388
    iget v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    #@2
    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    #@5
    move-result v0

    #@6
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
    .line 426
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

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
    .line 474
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

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
    .line 466
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

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

.method public isOutputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

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

.method public sendUrgentData(I)V
    .locals 5
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 365
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@3
    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    monitor-enter v2

    #@8
    .line 366
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@a
    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 367
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@12
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@15
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 365
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 368
    :cond_0
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@1b
    int-to-byte v4, p1

    #@1c
    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(B)I

    #@1f
    move-result v0

    #@20
    .line 369
    .local v0, "n":I
    sget-boolean v3, Lsun/nio/ch/SocketAdaptor;->-assertionsDisabled:Z

    #@22
    if-nez v3, :cond_2

    #@24
    if-ne v0, v1, :cond_1

    #@26
    :goto_0
    if-nez v1, :cond_2

    #@28
    new-instance v1, Ljava/lang/AssertionError;

    #@2a
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@2d
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    :cond_1
    const/4 v1, 0x0

    #@2f
    goto :goto_0

    #@30
    :cond_2
    monitor-exit v2

    #@31
    .line 364
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    #@5
    .line 413
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    #@5
    .line 373
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
    .line 404
    if-gtz p1, :cond_0

    #@2
    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid receive size"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 406
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@d
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    #@10
    .line 402
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
    .line 430
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    #@5
    .line 429
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
    .line 393
    if-gtz p1, :cond_0

    #@2
    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid send size"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 395
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    #@d
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    #@10
    .line 391
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    if-nez p1, :cond_0

    #@2
    .line 356
    const/4 p2, -0x1

    #@3
    .line 357
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    #@5
    invoke-direct {p0, v0, p2}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    #@8
    .line 354
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    if-gez p1, :cond_0

    #@2
    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeout can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 384
    :cond_0
    iput p1, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    #@d
    .line 381
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    #@5
    .line 346
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
    .line 422
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    #@5
    .line 421
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->shutdownInput()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 441
    :goto_0
    return-void

    #@6
    .line 444
    :catch_0
    move-exception v0

    #@7
    .line 445
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->shutdownOutput()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 449
    :goto_0
    return-void

    #@6
    .line 452
    :catch_0
    move-exception v0

    #@7
    .line 453
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "Socket[addr="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 460
    const-string/jumbo v1, ",port="

    #@1f
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 460
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    #@26
    move-result v1

    #@27
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 461
    const-string/jumbo v1, ",localport="

    #@2e
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 461
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getLocalPort()I

    #@35
    move-result v1

    #@36
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 461
    const-string/jumbo v1, "]"

    #@3d
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0

    #@46
    .line 462
    :cond_0
    const-string/jumbo v0, "Socket[unconnected]"

    #@49
    return-object v0
.end method
