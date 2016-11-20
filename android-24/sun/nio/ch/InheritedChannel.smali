.class Lsun/nio/ch/InheritedChannel;
.super Ljava/lang/Object;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;,
        Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;,
        Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final O_RDONLY:I = 0x0

.field private static final O_RDWR:I = 0x2

.field private static final O_WRONLY:I = 0x1

.field private static final SOCK_DGRAM:I = 0x2

.field private static final SOCK_STREAM:I = 0x1

.field private static final UNKNOWN:I = -0x1

.field private static channel:Ljava/nio/channels/Channel;

.field private static devnull:I

.field private static haveChannel:Z


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    #@0
    invoke-static {}, Lsun/nio/ch/InheritedChannel;->detachIOStreams()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Lsun/nio/ch/InheritedChannel;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    #@c
    .line 58
    const/4 v0, -0x1

    #@d
    sput v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    #@f
    .line 200
    sput-boolean v1, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    #@11
    .line 201
    const/4 v0, 0x0

    #@12
    sput-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    #@14
    .line 39
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkAccess(Ljava/nio/channels/Channel;)V
    .locals 3
    .param p0, "c"    # Ljava/nio/channels/Channel;

    #@0
    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 133
    new-instance v1, Ljava/lang/RuntimePermission;

    #@8
    const-string/jumbo v2, "inheritedChannel"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@e
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@11
    .line 129
    :cond_0
    return-void
.end method

.method private static native close0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static createChannel()Ljava/nio/channels/Channel;
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
    const/4 v11, 0x1

    #@2
    const/4 v12, 0x0

    #@3
    .line 151
    invoke-static {v12}, Lsun/nio/ch/InheritedChannel;->dup(I)I

    #@6
    move-result v4

    #@7
    .line 157
    .local v4, "fdVal":I
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->soType0(I)I

    #@a
    move-result v10

    #@b
    .line 158
    .local v10, "st":I
    if-eq v10, v11, :cond_0

    #@d
    const/4 v13, 0x2

    #@e
    if-eq v10, v13, :cond_0

    #@10
    .line 159
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->close0(I)V

    #@13
    .line 160
    return-object v14

    #@14
    .line 168
    :cond_0
    new-array v7, v11, [Ljava/lang/Class;

    #@16
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    aput-object v13, v7, v12

    #@1a
    .line 169
    .local v7, "paramTypes":[Ljava/lang/Class;
    const-string/jumbo v13, "java.io.FileDescriptor"

    #@1d
    invoke-static {v13, v7}, Lsun/nio/ch/Reflect;->lookupConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@20
    move-result-object v2

    #@21
    .line 171
    .local v2, "ctr":Ljava/lang/reflect/Constructor;
    new-array v0, v11, [Ljava/lang/Object;

    #@23
    new-instance v13, Ljava/lang/Integer;

    #@25
    invoke-direct {v13, v4}, Ljava/lang/Integer;-><init>(I)V

    #@28
    aput-object v13, v0, v12

    #@2a
    .line 172
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v2, v0}, Lsun/nio/ch/Reflect;->invoke(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/io/FileDescriptor;

    #@30
    .line 180
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@33
    move-result-object v9

    #@34
    .line 181
    .local v9, "provider":Ljava/nio/channels/spi/SelectorProvider;
    sget-boolean v13, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    #@36
    if-nez v13, :cond_1

    #@38
    instance-of v13, v9, Lsun/nio/ch/SelectorProviderImpl;

    #@3a
    if-nez v13, :cond_1

    #@3c
    new-instance v11, Ljava/lang/AssertionError;

    #@3e
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@41
    throw v11

    #@42
    .line 184
    :cond_1
    if-ne v10, v11, :cond_5

    #@44
    .line 185
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->peerAddress0(I)Ljava/net/InetAddress;

    #@47
    move-result-object v5

    #@48
    .line 186
    .local v5, "ia":Ljava/net/InetAddress;
    if-nez v5, :cond_2

    #@4a
    .line 187
    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;

    #@4c
    invoke-direct {v1, v9, v3}, Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    #@4f
    .line 197
    .end local v5    # "ia":Ljava/net/InetAddress;
    .local v1, "c":Ljava/nio/channels/Channel;
    :goto_0
    return-object v1

    #@50
    .line 189
    .end local v1    # "c":Ljava/nio/channels/Channel;
    .restart local v5    # "ia":Ljava/net/InetAddress;
    :cond_2
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->peerPort0(I)I

    #@53
    move-result v8

    #@54
    .line 190
    .local v8, "port":I
    sget-boolean v13, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    #@56
    if-nez v13, :cond_4

    #@58
    if-lez v8, :cond_3

    #@5a
    :goto_1
    if-nez v11, :cond_4

    #@5c
    new-instance v11, Ljava/lang/AssertionError;

    #@5e
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@61
    throw v11

    #@62
    :cond_3
    move v11, v12

    #@63
    goto :goto_1

    #@64
    .line 191
    :cond_4
    new-instance v6, Ljava/net/InetSocketAddress;

    #@66
    invoke-direct {v6, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@69
    .line 192
    .local v6, "isa":Ljava/net/InetSocketAddress;
    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;

    #@6b
    invoke-direct {v1, v9, v3, v6}, Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    #@6e
    .restart local v1    # "c":Ljava/nio/channels/Channel;
    goto :goto_0

    #@6f
    .line 195
    .end local v1    # "c":Ljava/nio/channels/Channel;
    .end local v5    # "ia":Ljava/net/InetAddress;
    .end local v6    # "isa":Ljava/net/InetSocketAddress;
    .end local v8    # "port":I
    :cond_5
    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;

    #@71
    invoke-direct {v1, v9, v3}, Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    #@74
    .restart local v1    # "c":Ljava/nio/channels/Channel;
    goto :goto_0
.end method

.method private static detachIOStreams()V
    .locals 3

    #@0
    .prologue
    .line 62
    :try_start_0
    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V

    #@6
    .line 63
    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    #@8
    const/4 v2, 0x1

    #@9
    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V

    #@c
    .line 64
    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    #@e
    const/4 v2, 0x2

    #@f
    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 60
    return-void

    #@13
    .line 65
    :catch_0
    move-exception v0

    #@14
    .line 67
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    #@16
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@19
    throw v1
.end method

.method private static native dup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native dup2(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static declared-synchronized getChannel()Ljava/nio/channels/Channel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Lsun/nio/ch/InheritedChannel;

    #@2
    monitor-enter v1

    #@3
    .line 208
    :try_start_0
    sget v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    #@5
    if-gez v0, :cond_0

    #@7
    .line 209
    const-string/jumbo v0, "/dev/null"

    #@a
    const/4 v2, 0x2

    #@b
    invoke-static {v0, v2}, Lsun/nio/ch/InheritedChannel;->open0(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    sput v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    #@11
    .line 213
    :cond_0
    sget-boolean v0, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    #@13
    if-nez v0, :cond_1

    #@15
    .line 214
    invoke-static {}, Lsun/nio/ch/InheritedChannel;->createChannel()Ljava/nio/channels/Channel;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    #@1b
    .line 215
    const/4 v0, 0x1

    #@1c
    sput-boolean v0, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    #@1e
    .line 220
    :cond_1
    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 221
    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    #@24
    invoke-static {v0}, Lsun/nio/ch/InheritedChannel;->checkAccess(Ljava/nio/channels/Channel;)V

    #@27
    .line 223
    :cond_2
    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v1

    #@2a
    return-object v0

    #@2b
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method

.method private static native open0(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native peerAddress0(I)Ljava/net/InetAddress;
.end method

.method private static native peerPort0(I)I
.end method

.method private static native soType0(I)I
.end method
