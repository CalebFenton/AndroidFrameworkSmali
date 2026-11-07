.class abstract Ljava/net/AbstractPlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "AbstractPlainDatagramSocketImpl.java"


# static fields
.field private static final blacklist connectDisabled:Z

.field private static final blacklist os:Ljava/lang/String;


# instance fields
.field blacklist connected:Z

.field protected blacklist connectedAddress:Ljava/net/InetAddress;

.field private blacklist connectedPort:I

.field private final blacklist guard:Ldalvik/system/CloseGuard;

.field blacklist timeout:I

.field private blacklist trafficClass:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "os.name"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    .line 68
    sget-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    const-string v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    .line 53
    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    .line 54
    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    .line 59
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    return-void
.end method

.method static blacklist getNIFirstAddress(I)Ljava/net/InetAddress;
    .registers 4
    .param p0, "niIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 401
    if-lez p0, :cond_17

    .line 402
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 403
    .local v0, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 404
    .local v1, "addressesEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 405
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    return-object v2

    .line 408
    .end local v0    # "networkInterface":Ljava/net/NetworkInterface;
    .end local v1    # "addressesEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_17
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized whitelist test-api bind(ILjava/net/InetAddress;)V
    .registers 3
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->bind0(ILjava/net/InetAddress;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 113
    monitor-exit p0

    return-void

    .line 111
    .end local p0    # "this":Ljava/net/AbstractPlainDatagramSocketImpl;
    .end local p1    # "lport":I
    .end local p2    # "laddr":Ljava/net/InetAddress;
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method protected abstract blacklist bind0(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected whitelist test-api close()V
    .registers 2

    .line 252
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 254
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_12

    .line 255
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketClose()V

    .line 256
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 259
    :cond_12
    return-void
.end method

.method protected whitelist test-api connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 134
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 135
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->connect0(Ljava/net/InetAddress;I)V

    .line 136
    iput-object p1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 137
    iput p2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    .line 139
    return-void
.end method

.method protected abstract blacklist connect0(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected declared-synchronized whitelist test-api create()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_1
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    .line 91
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_31

    .line 93
    :try_start_b
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketCreate()V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_e} :catch_29
    .catchall {:try_start_b .. :try_end_e} :catchall_31

    .line 98
    nop

    .line 101
    :try_start_f
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_27

    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 102
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_31

    .line 105
    .end local p0    # "this":Ljava/net/AbstractPlainDatagramSocketImpl;
    :cond_27
    monitor-exit p0

    return-void

    .line 94
    :catch_29
    move-exception v0

    .line 95
    .local v0, "ioe":Ljava/net/SocketException;
    :try_start_2a
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 97
    throw v0

    .line 89
    .end local v0    # "ioe":Ljava/net/SocketException;
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v0
.end method

.method blacklist dataAvailable()I
    .registers 3

    .line 428
    :try_start_0
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 429
    :catch_7
    move-exception v0

    .line 430
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1
.end method

.method protected abstract blacklist datagramSocketClose()V
.end method

.method protected abstract blacklist datagramSocketCreate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected whitelist test-api disconnect()V
    .registers 2

    .line 146
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->disconnect0(I)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    .line 150
    return-void
.end method

.method protected abstract blacklist disconnect0(I)V
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 267
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 271
    :cond_9
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->close()V

    .line 272
    return-void
.end method

.method public whitelist test-api getOption(I)Ljava/lang/Object;
    .registers 5
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_55

    .line 357
    sparse-switch p1, :sswitch_data_5e

    .line 385
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :sswitch_22
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 360
    .local v0, "result":Ljava/lang/Object;
    goto :goto_54

    .line 377
    .end local v0    # "result":Ljava/lang/Object;
    :sswitch_2a
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 379
    .restart local v0    # "result":Ljava/lang/Object;
    const/16 v1, 0x10

    if-ne p1, v1, :cond_54

    .line 380
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getNIFirstAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 363
    .end local v0    # "result":Ljava/lang/Object;
    :sswitch_3e
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .restart local v0    # "result":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_54

    .line 365
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 388
    :cond_54
    :goto_54
    return-object v0

    .line 352
    .end local v0    # "result":Ljava/lang/Object;
    :cond_55
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_5e
    .sparse-switch
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_2a
        0xf -> :sswitch_2a
        0x10 -> :sswitch_2a
        0x12 -> :sswitch_2a
        0x1f -> :sswitch_2a
        0x20 -> :sswitch_2a
        0x1001 -> :sswitch_2a
        0x1002 -> :sswitch_2a
        0x1006 -> :sswitch_22
    .end sparse-switch
.end method

.method protected abstract whitelist test-api getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract whitelist test-api getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected blacklist isClosed()Z
    .registers 2

    .line 262
    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist test-api join(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 200
    return-void
.end method

.method protected abstract blacklist join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-eqz p1, :cond_11

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_11

    .line 223
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 224
    return-void

    .line 222
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api leave(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 208
    return-void
.end method

.method protected abstract blacklist leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    if-eqz p1, :cond_11

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_11

    .line 241
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    .line 242
    return-void

    .line 240
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist nativeConnectDisabled()Z
    .registers 2

    .line 422
    sget-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    return v0
.end method

.method protected abstract whitelist test-api peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected declared-synchronized whitelist test-api receive(Ljava/net/DatagramPacket;)V
    .registers 2
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->receive0(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 165
    monitor-exit p0

    return-void

    .line 163
    .end local p0    # "this":Ljava/net/AbstractPlainDatagramSocketImpl;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method protected abstract blacklist receive0(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api setOption(ILjava/lang/Object;)V
    .registers 6
    .param p1, "optID"    # I
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e2

    .line 283
    sparse-switch p1, :sswitch_data_ea

    .line 341
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :sswitch_22
    if-eqz p2, :cond_3c

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    .line 292
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 293
    .local v0, "tmp":I
    if-ltz v0, :cond_34

    .line 295
    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    .line 296
    return-void

    .line 294
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "timeout < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    .end local v0    # "tmp":I
    :cond_3c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for SO_TIMEOUT"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :sswitch_44
    if-eqz p2, :cond_55

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_55

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    .line 318
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_55

    goto/16 :goto_d6

    .line 319
    :cond_55
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for SO_SNDBUF or SO_RCVBUF"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :sswitch_5d
    if-eqz p2, :cond_65

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_65

    goto/16 :goto_d6

    .line 310
    :cond_65
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for SO_BROADCAST"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :sswitch_6d
    if-eqz p2, :cond_89

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_77

    instance-of v0, p2, Ljava/net/NetworkInterface;

    if-eqz v0, :cond_89

    .line 332
    :cond_77
    instance-of v0, p2, Ljava/net/NetworkInterface;

    if-eqz v0, :cond_d6

    .line 333
    new-instance v0, Ljava/lang/Integer;

    move-object v1, p2

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p2, v0

    goto :goto_d6

    .line 331
    :cond_89
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for IP_MULTICAST_IF2"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :sswitch_91
    if-eqz p2, :cond_98

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_98

    goto :goto_d6

    .line 338
    :cond_98
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for IP_MULTICAST_LOOP"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :sswitch_a0
    if-eqz p2, :cond_a7

    instance-of v0, p2, Ljava/net/InetAddress;

    if-eqz v0, :cond_a7

    goto :goto_d6

    .line 325
    :cond_a7
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for IP_MULTICAST_IF"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :sswitch_af
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Cannot re-bind Socket"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :sswitch_b7
    if-eqz p2, :cond_be

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_be

    goto :goto_d6

    .line 305
    :cond_be
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for SO_REUSEADDR"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :sswitch_c6
    if-eqz p2, :cond_da

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_da

    .line 301
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    .line 302
    nop

    .line 343
    :cond_d6
    :goto_d6
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketSetOption(ILjava/lang/Object;)V

    .line 344
    return-void

    .line 299
    :cond_da
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "bad argument for IP_TOS"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_e2
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_ea
    .sparse-switch
        0x3 -> :sswitch_c6
        0x4 -> :sswitch_b7
        0xf -> :sswitch_af
        0x10 -> :sswitch_a0
        0x12 -> :sswitch_91
        0x1f -> :sswitch_6d
        0x20 -> :sswitch_5d
        0x1001 -> :sswitch_44
        0x1002 -> :sswitch_44
        0x1006 -> :sswitch_22
    .end sparse-switch
.end method

.method protected abstract whitelist test-api setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract whitelist test-api setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract blacklist socketGetOption(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract blacklist socketSetOption(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method
