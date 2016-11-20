.class abstract Ljava/net/AbstractPlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "AbstractPlainDatagramSocketImpl.java"


# static fields
.field private static final connectDisabled:Z

.field private static final os:Ljava/lang/String;


# instance fields
.field connected:Z

.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private loopbackMode:Z

.field private multicastInterface:I

.field timeout:I

.field private trafficClass:I

.field private ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 64
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v1, "os.name"

    #@5
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 63
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    sput-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    #@10
    .line 70
    sget-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    #@12
    const-string/jumbo v1, "OS X"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@18
    move-result v0

    #@19
    sput-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    #@1b
    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 47
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    #@5
    .line 50
    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    #@7
    .line 51
    iput-boolean v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    #@9
    .line 52
    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    #@b
    .line 53
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@e
    .line 54
    iput v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    #@10
    .line 57
    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->multicastInterface:I

    #@12
    .line 58
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->loopbackMode:Z

    #@15
    .line 59
    iput v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->ttl:I

    #@17
    .line 61
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@1d
    .line 47
    return-void
.end method

.method static getNIFirstAddress(I)Ljava/net/InetAddress;
    .locals 3
    .param p0, "niIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    if-lez p0, :cond_0

    #@2
    .line 373
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    #@5
    move-result-object v1

    #@6
    .line 374
    .local v1, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 375
    .local v0, "addressesEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 376
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/net/InetAddress;

    #@16
    return-object v2

    #@17
    .line 379
    .end local v0    # "addressesEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v1    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method


# virtual methods
.method protected declared-synchronized bind(ILjava/net/InetAddress;)V
    .locals 1
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->bind0(ILjava/net/InetAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 95
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method protected abstract bind0(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 232
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@6
    .line 234
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 235
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketClose()V

    #@d
    .line 236
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    #@10
    .line 237
    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@12
    .line 231
    :cond_0
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 118
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->connect0(Ljava/net/InetAddress;I)V

    #@a
    .line 119
    iput-object p1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@c
    .line 120
    iput p2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    #@e
    .line 121
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    #@11
    .line 116
    return-void
.end method

.method protected abstract connect0(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected declared-synchronized create()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 76
    :try_start_0
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    #@4
    .line 77
    new-instance v1, Ljava/io/FileDescriptor;

    #@6
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    #@9
    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 79
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketCreate()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 86
    :try_start_2
    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@14
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 87
    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@1c
    const-string/jumbo v2, "close"

    #@1f
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    :cond_0
    monitor-exit p0

    #@23
    .line 75
    return-void

    #@24
    .line 80
    :catch_0
    move-exception v0

    #@25
    .line 81
    .local v0, "ioe":Ljava/net/SocketException;
    :try_start_3
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    #@28
    .line 82
    const/4 v1, 0x0

    #@29
    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2b
    .line 83
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    .end local v0    # "ioe":Ljava/net/SocketException;
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method

.method protected abstract datagramSocketClose()V
.end method

.method protected abstract datagramSocketCreate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected disconnect()V
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@2
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->disconnect0(I)V

    #@d
    .line 130
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    #@10
    .line 131
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@13
    .line 132
    const/4 v0, -0x1

    #@14
    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    #@16
    .line 128
    return-void
.end method

.method protected abstract disconnect0(I)V
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 247
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->close()V

    #@c
    .line 245
    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 4
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 329
    new-instance v1, Ljava/net/SocketException;

    #@8
    const-string/jumbo v2, "Socket Closed"

    #@b
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 334
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@12
    .line 362
    new-instance v1, Ljava/net/SocketException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "invalid option: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 336
    :sswitch_0
    new-instance v0, Ljava/lang/Integer;

    #@2e
    iget v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    #@30
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@33
    .line 365
    .local v0, "result":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    #@34
    .line 340
    .end local v0    # "result":Ljava/lang/Object;
    :sswitch_1
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v1, v0

    #@39
    .line 341
    check-cast v1, Ljava/lang/Integer;

    #@3b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v1

    #@3f
    const/4 v2, -0x1

    #@40
    if-ne v1, v2, :cond_1

    #@42
    .line 342
    new-instance v0, Ljava/lang/Integer;

    #@44
    .end local v0    # "result":Ljava/lang/Object;
    iget v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    #@46
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@49
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0

    #@4a
    .line 354
    .end local v0    # "result":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    .line 356
    .restart local v0    # "result":Ljava/lang/Object;
    const/16 v1, 0x10

    #@50
    if-ne p1, v1, :cond_1

    #@52
    .line 357
    check-cast v0, Ljava/lang/Integer;

    #@54
    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@57
    move-result v1

    #@58
    invoke-static {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getNIFirstAddress(I)Ljava/net/InetAddress;

    #@5b
    move-result-object v1

    #@5c
    return-object v1

    #@5d
    .line 334
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x12 -> :sswitch_2
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_2
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected join(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    #@4
    .line 179
    return-void
.end method

.method protected abstract join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    if-eqz p1, :cond_0

    #@2
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 204
    check-cast p1, Ljava/net/InetSocketAddress;

    #@8
    .end local p1    # "mcastaddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    #@f
    .line 201
    return-void

    #@10
    .line 203
    .restart local p1    # "mcastaddr":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Unsupported address type"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method

.method protected leave(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    #@4
    .line 187
    return-void
.end method

.method protected abstract leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    if-eqz p1, :cond_0

    #@2
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 222
    check-cast p1, Ljava/net/InetSocketAddress;

    #@8
    .end local p1    # "mcastaddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    #@f
    .line 219
    return-void

    #@10
    .line 221
    .restart local p1    # "mcastaddr":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Unsupported address type"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method

.method protected nativeConnectDisabled()Z
    .locals 1

    #@0
    .prologue
    .line 392
    sget-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    #@2
    return v0
.end method

.method protected abstract peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->receive0(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 146
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method protected abstract receive0(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .param p1, "optID"    # I
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 260
    new-instance v2, Ljava/net/SocketException;

    #@8
    const-string/jumbo v3, "Socket Closed"

    #@b
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 262
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@12
    .line 318
    new-instance v2, Ljava/net/SocketException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "invalid option: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 268
    :sswitch_0
    if-eqz p2, :cond_1

    #@2e
    instance-of v2, p2, Ljava/lang/Integer;

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 271
    check-cast p2, Ljava/lang/Integer;

    #@34
    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v1

    #@38
    .line 272
    .local v1, "tmp":I
    if-gez v1, :cond_2

    #@3a
    .line 273
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string/jumbo v3, "timeout < 0"

    #@3f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 269
    .end local v1    # "tmp":I
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/net/SocketException;

    #@45
    const-string/jumbo v3, "bad argument for SO_TIMEOUT"

    #@48
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 274
    .end local p2    # "o":Ljava/lang/Object;
    .restart local v1    # "tmp":I
    :cond_2
    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    #@4e
    .line 275
    return-void

    #@4f
    .line 277
    .end local v1    # "tmp":I
    .restart local p2    # "o":Ljava/lang/Object;
    :sswitch_1
    if-eqz p2, :cond_4

    #@51
    instance-of v2, p2, Ljava/lang/Integer;

    #@53
    if-eqz v2, :cond_4

    #@55
    move-object v2, p2

    #@56
    .line 280
    check-cast v2, Ljava/lang/Integer;

    #@58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v2

    #@5c
    iput v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    #@5e
    .line 320
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketSetOption(ILjava/lang/Object;)V

    #@61
    .line 258
    return-void

    #@62
    .line 278
    :cond_4
    new-instance v2, Ljava/net/SocketException;

    #@64
    const-string/jumbo v3, "bad argument for IP_TOS"

    #@67
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 283
    :sswitch_2
    if-eqz p2, :cond_5

    #@6d
    instance-of v2, p2, Ljava/lang/Boolean;

    #@6f
    if-nez v2, :cond_3

    #@71
    .line 284
    :cond_5
    new-instance v2, Ljava/net/SocketException;

    #@73
    const-string/jumbo v3, "bad argument for SO_REUSEADDR"

    #@76
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@79
    throw v2

    #@7a
    .line 288
    :sswitch_3
    if-eqz p2, :cond_6

    #@7c
    instance-of v2, p2, Ljava/lang/Boolean;

    #@7e
    if-nez v2, :cond_3

    #@80
    .line 289
    :cond_6
    new-instance v2, Ljava/net/SocketException;

    #@82
    const-string/jumbo v3, "bad argument for SO_BROADCAST"

    #@85
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@88
    throw v2

    #@89
    .line 293
    :sswitch_4
    new-instance v2, Ljava/net/SocketException;

    #@8b
    const-string/jumbo v3, "Cannot re-bind Socket"

    #@8e
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@91
    throw v2

    #@92
    .line 296
    :sswitch_5
    if-eqz p2, :cond_7

    #@94
    instance-of v2, p2, Ljava/lang/Integer;

    #@96
    if-eqz v2, :cond_7

    #@98
    move-object v2, p2

    #@99
    .line 297
    check-cast v2, Ljava/lang/Integer;

    #@9b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@9e
    move-result v2

    #@9f
    if-gez v2, :cond_3

    #@a1
    .line 298
    :cond_7
    new-instance v2, Ljava/net/SocketException;

    #@a3
    const-string/jumbo v3, "bad argument for SO_SNDBUF or SO_RCVBUF"

    #@a6
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v2

    #@aa
    .line 303
    :sswitch_6
    if-eqz p2, :cond_8

    #@ac
    instance-of v2, p2, Ljava/net/InetAddress;

    #@ae
    if-nez v2, :cond_3

    #@b0
    .line 304
    :cond_8
    new-instance v2, Ljava/net/SocketException;

    #@b2
    const-string/jumbo v3, "bad argument for IP_MULTICAST_IF"

    #@b5
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v2

    #@b9
    .line 307
    :sswitch_7
    if-eqz p2, :cond_a

    #@bb
    instance-of v2, p2, Ljava/lang/Integer;

    #@bd
    if-nez v2, :cond_9

    #@bf
    instance-of v2, p2, Ljava/net/NetworkInterface;

    #@c1
    if-eqz v2, :cond_a

    #@c3
    .line 309
    :cond_9
    instance-of v2, p2, Ljava/net/NetworkInterface;

    #@c5
    if-eqz v2, :cond_3

    #@c7
    .line 310
    new-instance v0, Ljava/lang/Integer;

    #@c9
    check-cast p2, Ljava/net/NetworkInterface;

    #@cb
    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getIndex()I

    #@ce
    move-result v2

    #@cf
    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    #@d2
    .local v0, "o":Ljava/lang/Object;
    move-object p2, v0

    #@d3
    .end local v0    # "o":Ljava/lang/Object;
    .restart local p2    # "o":Ljava/lang/Object;
    goto :goto_0

    #@d4
    .line 308
    :cond_a
    new-instance v2, Ljava/net/SocketException;

    #@d6
    const-string/jumbo v3, "bad argument for IP_MULTICAST_IF2"

    #@d9
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@dc
    throw v2

    #@dd
    .line 314
    :sswitch_8
    if-eqz p2, :cond_b

    #@df
    instance-of v2, p2, Ljava/lang/Boolean;

    #@e1
    if-nez v2, :cond_3

    #@e3
    .line 315
    :cond_b
    new-instance v2, Ljava/net/SocketException;

    #@e5
    const-string/jumbo v3, "bad argument for IP_MULTICAST_LOOP"

    #@e8
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@eb
    throw v2

    #@ec
    .line 262
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xf -> :sswitch_4
        0x10 -> :sswitch_6
        0x12 -> :sswitch_8
        0x1f -> :sswitch_7
        0x20 -> :sswitch_3
        0x1001 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract socketGetOption(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract socketSetOption(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method
