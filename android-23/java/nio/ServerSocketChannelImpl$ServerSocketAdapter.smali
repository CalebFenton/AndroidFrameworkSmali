.class Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
.super Ljava/net/ServerSocket;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/ServerSocketChannelImpl;


# direct methods
.method static synthetic -wrap0(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;)Ljava/io/FileDescriptor;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->getFD$()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Ljava/nio/ServerSocketChannelImpl;)V
    .locals 0
    .param p1, "aChannelImpl"    # Ljava/nio/ServerSocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    #@3
    .line 121
    iput-object p1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #@5
    .line 120
    return-void
.end method

.method private getFD$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 171
    invoke-super {p0}, Ljava/net/ServerSocket;->getImpl$()Ljava/net/SocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 126
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@8
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@b
    throw v1

    #@c
    .line 128
    :cond_0
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #@e
    invoke-virtual {v1}, Ljava/nio/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    #@11
    move-result-object v0

    #@12
    .line 129
    .local v0, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_1

    #@14
    .line 130
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@16
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@19
    throw v1

    #@1a
    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #@2
    monitor-enter v1

    #@3
    .line 163
    :try_start_0
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    #@6
    .line 164
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #@8
    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 165
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #@10
    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 161
    return-void

    #@15
    .line 162
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #@2
    return-object v0
.end method

.method public implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    .locals 5
    .param p1, "clientSocketChannel"    # Ljava/nio/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    .line 137
    .local v0, "clientSocket":Ljava/net/Socket;
    const/4 v1, 0x0

    #@5
    .line 139
    .local v1, "connectOK":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 140
    :try_start_1
    invoke-super {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    #@9
    .line 144
    new-instance v2, Ljava/net/InetSocketAddress;

    #@b
    .line 145
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    #@12
    move-result v4

    #@13
    .line 144
    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@16
    .line 146
    .local v2, "remoteAddress":Ljava/net/InetSocketAddress;
    const/4 v3, 0x0

    #@17
    invoke-virtual {p1, v2, v3}, Ljava/nio/SocketChannelImpl;->onAccept(Ljava/net/InetSocketAddress;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b
    .line 148
    const/4 v1, 0x1

    #@1c
    .line 150
    if-nez v1, :cond_0

    #@1e
    .line 151
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@21
    .line 154
    :cond_0
    return-object v0

    #@22
    .line 139
    .end local v2    # "remoteAddress":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v3

    #@23
    :try_start_3
    monitor-exit p0

    #@24
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@25
    .line 149
    :catchall_1
    move-exception v3

    #@26
    .line 150
    if-nez v1, :cond_1

    #@28
    .line 151
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@2b
    .line 149
    :cond_1
    throw v3
.end method
