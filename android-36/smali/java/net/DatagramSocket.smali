.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final greylist-max-o ST_CONNECTED:I = 0x1

.field static final greylist-max-o ST_CONNECTED_NO_IMPL:I = 0x2

.field static final greylist-max-o ST_NOT_CONNECTED:I

.field static greylist-max-o factory:Ljava/net/DatagramSocketImplFactory;

.field static greylist-max-o implClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static blacklist optionsSet:Z


# instance fields
.field private greylist-max-o bound:Z

.field private greylist-max-o bytesLeftToFilter:I

.field private greylist-max-o closeLock:Ljava/lang/Object;

.field private greylist-max-o closed:Z

.field greylist-max-o connectState:I

.field greylist-max-o connectedAddress:Ljava/net/InetAddress;

.field greylist-max-o connectedPort:I

.field private greylist-max-o created:Z

.field private greylist-max-o explicitFilter:Z

.field greylist impl:Ljava/net/DatagramSocketImpl;

.field greylist-max-o oldImpl:Z

.field private greylist-max-o pendingConnectException:Ljava/net/SocketException;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 344
    const/4 v0, 0x0

    sput-object v0, Ljava/net/DatagramSocket;->implClass:Ljava/lang/Class;

    .line 1413
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/DatagramSocket;->optionsSet:Z

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 219
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 294
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/net/InetAddress;)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 322
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/net/DatagramSocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/DatagramSocketImpl;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    .line 81
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 82
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 93
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 104
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 116
    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 230
    if-eqz p1, :cond_25

    .line 232
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 233
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 234
    return-void

    .line 231
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    .line 81
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 82
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 93
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 104
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 116
    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 261
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 262
    if-eqz p1, :cond_3a

    .line 264
    :try_start_22
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2f

    .line 266
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 267
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3a

    .line 266
    :catchall_2f
    move-exception v0

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_39

    .line 267
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 268
    :cond_39
    throw v0

    .line 270
    :cond_3a
    :goto_3a
    return-void
.end method

.method private greylist-max-o checkFiltering(Ljava/net/DatagramPacket;)Z
    .registers 4
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 858
    iget v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    .line 859
    iget v0, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->dataAvailable()I

    move-result v0

    if-gtz v0, :cond_19

    goto :goto_1a

    .line 863
    :cond_19
    return v1

    .line 860
    :cond_1a
    :goto_1a
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o checkOldImpl()V
    .registers 3

    .line 325
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v0, :cond_5

    .line 326
    return-void

    .line 330
    :cond_5
    :try_start_5
    new-instance v0, Ljava/net/DatagramSocket$1;

    invoke-direct {v0, p0}, Ljava/net/DatagramSocket$1;-><init>(Ljava/net/DatagramSocket;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_d} :catch_e

    .line 341
    goto :goto_12

    .line 339
    :catch_e
    move-exception v0

    .line 340
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 342
    .end local v0    # "e":Ljava/security/PrivilegedActionException;
    :goto_12
    return-void
.end method

.method private declared-synchronized greylist-max-o connectInternal(Ljava/net/InetAddress;I)V
    .registers 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    if-ltz p2, :cond_a5

    const v0, 0xffff

    if-gt p2, v0, :cond_a5

    .line 139
    if-eqz p1, :cond_9d

    .line 142
    :try_start_a
    const-string v0, "connect"

    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_be

    if-eqz v0, :cond_17

    .line 144
    monitor-exit p0

    return-void

    .line 145
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 146
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_35

    .line 147
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    goto :goto_35

    .line 150
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_27
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V

    .line 155
    :cond_35
    :goto_35
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_44

    .line 156
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_be

    .line 166
    :cond_44
    :try_start_44
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_97

    const/4 v3, 0x2

    if-nez v1, :cond_8e

    :try_start_49
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    instance-of v1, v1, Ljava/net/AbstractPlainDatagramSocketImpl;
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_8c

    if-eqz v1, :cond_5a

    :try_start_4f
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    check-cast v1, Ljava/net/AbstractPlainDatagramSocketImpl;

    .line 167
    invoke-virtual {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->nativeConnectDisabled()Z

    move-result v1
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_97

    if-eqz v1, :cond_5a

    goto :goto_8e

    .line 171
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 174
    const/4 v1, 0x1

    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 177
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramSocketImpl;->dataAvailable()I

    move-result v4
    :try_end_6c
    .catch Ljava/net/SocketException; {:try_start_5a .. :try_end_6c} :catch_87
    .catchall {:try_start_5a .. :try_end_6c} :catchall_8c

    .line 178
    .local v4, "avail":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_81

    .line 181
    if-lez v4, :cond_72

    move v2, v1

    :cond_72
    :try_start_72
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 182
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v1, :cond_7e

    .line 183
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v1

    iput v1, p0, Ljava/net/DatagramSocket;->bytesLeftToFilter:I
    :try_end_7e
    .catch Ljava/net/SocketException; {:try_start_72 .. :try_end_7e} :catch_7f
    .catchall {:try_start_72 .. :try_end_7e} :catchall_97

    .line 190
    .end local v4    # "avail":I
    :cond_7e
    goto :goto_90

    .line 185
    :catch_7f
    move-exception v1

    goto :goto_88

    .line 179
    .restart local v4    # "avail":I
    :cond_81
    :try_start_81
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1}, Ljava/net/SocketException;-><init>()V

    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    throw v1
    :try_end_87
    .catch Ljava/net/SocketException; {:try_start_81 .. :try_end_87} :catch_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_8c

    .line 185
    .end local v4    # "avail":I
    .restart local v0    # "security":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "address":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    :catch_87
    move-exception v1

    .line 187
    .local v1, "se":Ljava/net/SocketException;
    :goto_88
    :try_start_88
    iput v3, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 189
    nop

    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    throw v1
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    .line 193
    .end local v1    # "se":Ljava/net/SocketException;
    .restart local v0    # "security":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "address":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    :catchall_8c
    move-exception v1

    goto :goto_98

    .line 168
    :cond_8e
    :goto_8e
    :try_start_8e
    iput v3, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_97

    .line 193
    :goto_90
    :try_start_90
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 194
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_be

    .line 195
    nop

    .line 196
    monitor-exit p0

    return-void

    .line 193
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :catchall_97
    move-exception v1

    :goto_98
    :try_start_98
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 194
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 195
    throw v1

    .line 140
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: null address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    :catchall_be
    move-exception p1

    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_98 .. :try_end_c0} :catchall_be

    throw p1
.end method

.method public static declared-synchronized whitelist test-api setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/DatagramSocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/net/DatagramSocket;

    monitor-enter v0

    .line 1340
    :try_start_3
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-nez v1, :cond_14

    .line 1343
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1344
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 1345
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1347
    :cond_10
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 1348
    monitor-exit v0

    return-void

    .line 1341
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1339
    .end local p0    # "fac":Ljava/net/DatagramSocketImplFactory;
    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 8
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 395
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_67

    .line 397
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 399
    if-nez p1, :cond_16

    .line 400
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object p1, v0

    .line 401
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_16
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_57

    .line 403
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 404
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 406
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 407
    .local v1, "iaddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 408
    .local v2, "port":I
    const-string v3, "bind"

    invoke-virtual {p0, v1, v3}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 410
    .local v3, "sec":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_39

    .line 411
    invoke-virtual {v3, v2}, Ljava/lang/SecurityManager;->checkListen(I)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_6f

    .line 414
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V
    :try_end_40
    .catch Ljava/net/SocketException; {:try_start_39 .. :try_end_40} :catch_46
    .catchall {:try_start_39 .. :try_end_40} :catchall_6f

    .line 418
    nop

    .line 419
    const/4 v4, 0x1

    :try_start_42
    iput-boolean v4, p0, Ljava/net/DatagramSocket;->bound:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_6f

    .line 420
    monitor-exit p0

    return-void

    .line 415
    :catch_46
    move-exception v4

    .line 416
    .local v4, "e":Ljava/net/SocketException;
    :try_start_47
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramSocketImpl;->close()V

    .line 417
    throw v4

    .line 405
    .end local v1    # "iaddr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .end local v3    # "sec":Ljava/lang/SecurityManager;
    .end local v4    # "e":Ljava/net/SocketException;
    :cond_4f
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_5f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_67
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    .end local p1    # "addr":Ljava/net/SocketAddress;
    :catchall_6f
    move-exception p1

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_47 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method greylist-max-o checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .line 423
    if-nez p1, :cond_3

    .line 424
    return-void

    .line 426
    :cond_3
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_25

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_c

    goto :goto_25

    .line 427
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": invalid address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_25
    :goto_25
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 1267
    iget-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1269
    monitor-exit v0

    return-void

    .line 1270
    :cond_b
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->close()V

    .line 1271
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 1272
    monitor-exit v0

    .line 1273
    return-void

    .line 1272
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist test-api connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 480
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_4

    .line 486
    goto :goto_7

    .line 481
    :catch_4
    move-exception v0

    .line 485
    .local v0, "se":Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    .line 487
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_7
    return-void
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;)V
    .registers 5
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 512
    if-eqz p1, :cond_2b

    .line 514
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_23

    .line 516
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 517
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 519
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V

    .line 520
    return-void

    .line 518
    :cond_1b
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o createImpl()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v0, :cond_1f

    .line 348
    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v0, :cond_14

    .line 349
    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v0}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 350
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    goto :goto_1f

    .line 352
    :cond_14
    instance-of v0, p0, Ljava/net/MulticastSocket;

    .line 353
    .local v0, "isMulticast":Z
    invoke-static {v0}, Ljava/net/DefaultDatagramSocketImplFactory;->createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;

    move-result-object v1

    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 355
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 359
    .end local v0    # "isMulticast":Z
    :cond_1f
    :goto_1f
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->create()V

    .line 360
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/DatagramSocketImpl;->setDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    .line 362
    return-void
.end method

.method public whitelist test-api disconnect()V
    .registers 3

    .line 529
    monitor-enter p0

    .line 530
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 531
    monitor-exit p0

    return-void

    .line 532
    :cond_9
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 533
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    .line 535
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 536
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 538
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    .line 539
    monitor-exit p0

    .line 540
    return-void

    .line 539
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public declared-synchronized whitelist test-api getBroadcast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1174
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1176
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    monitor-exit p0

    return v0

    .line 1175
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .line 1302
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist test-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 1451
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method greylist-max-o getImpl()Ljava/net/DatagramSocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 374
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    if-nez v0, :cond_7

    .line 375
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 376
    :cond_7
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 581
    iget-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 5

    .line 885
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 886
    const/4 v0, 0x0

    return-object v0

    .line 887
    :cond_8
    const/4 v0, 0x0

    .line 889
    .local v0, "in":Ljava/net/InetAddress;
    :try_start_9
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    move-object v0, v1

    .line 890
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 891
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 893
    :cond_21
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 894
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2f

    .line 895
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_30

    .line 899
    .end local v1    # "s":Ljava/lang/SecurityManager;
    :cond_2f
    goto :goto_35

    .line 897
    :catch_30
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 900
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    return-object v0
.end method

.method public whitelist test-api getLocalPort()I
    .registers 3

    .line 912
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 913
    const/4 v0, -0x1

    return v0

    .line 915
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalPort()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 916
    :catch_11
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 632
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 633
    return-object v1

    .line 634
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_f

    .line 635
    return-object v1

    .line 636
    :cond_f
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1409
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPort()I
    .registers 2

    .line 595
    iget v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    return v0
.end method

.method public declared-synchronized whitelist test-api getReceiveBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1072
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1076
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1077
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1079
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1073
    .end local v0    # "result":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public whitelist test-api getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 615
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 616
    const/4 v0, 0x0

    return-object v0

    .line 617
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1136
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1138
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1139
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    monitor-exit p0

    return v1

    .line 1137
    .end local v0    # "o":Ljava/lang/Object;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_19
    :try_start_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSendBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1014
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1018
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1019
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1021
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1015
    .end local v0    # "result":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSoTimeout()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 952
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_29

    .line 954
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_31

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 955
    monitor-exit p0

    return v1

    .line 956
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x1006

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 958
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_27

    .line 959
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_31

    monitor-exit p0

    return v1

    .line 961
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_27
    monitor-exit p0

    return v1

    .line 953
    .end local v0    # "o":Ljava/lang/Object;
    :cond_29
    :try_start_29
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public declared-synchronized whitelist test-api getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1249
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1251
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    monitor-exit p0

    return v0

    .line 1250
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 553
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    return v0
.end method

.method public whitelist test-api isClosed()Z
    .registers 3

    .line 1282
    iget-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_3
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    monitor-exit v0

    return v1

    .line 1284
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api isConnected()Z
    .registers 2

    .line 567
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public declared-synchronized whitelist test-api receive(Ljava/net/DatagramPacket;)V
    .registers 10
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 759
    :try_start_1
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_e7

    .line 760
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    .line 761
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 764
    :cond_11
    iget-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-nez v0, :cond_d8

    .line 769
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v1, 0x1

    if-nez v0, :cond_63

    .line 771
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 772
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_63

    .line 774
    :goto_20
    const/4 v2, 0x0

    .line 775
    .local v2, "peekAd":Ljava/lang/String;
    const/4 v3, 0x0

    .line 777
    .local v3, "peekPort":I
    iget-boolean v4, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v4, :cond_3e

    .line 779
    new-instance v4, Ljava/net/DatagramPacket;

    new-array v5, v1, [B

    invoke-direct {v4, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 780
    .local v4, "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v5

    .line 781
    .end local v3    # "peekPort":I
    .local v5, "peekPort":I
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 782
    .end local v2    # "peekAd":Ljava/lang/String;
    .end local v4    # "peekPacket":Ljava/net/DatagramPacket;
    .local v3, "peekAd":Ljava/lang/String;
    goto :goto_4f

    .line 783
    .end local v5    # "peekPort":I
    .restart local v2    # "peekAd":Ljava/lang/String;
    .local v3, "peekPort":I
    :cond_3e
    new-instance v4, Ljava/net/InetAddress;

    invoke-direct {v4}, Ljava/net/InetAddress;-><init>()V

    .line 784
    .local v4, "adr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v5

    .line 785
    .end local v3    # "peekPort":I
    .restart local v5    # "peekPort":I
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3
    :try_end_4f
    .catchall {:try_start_2 .. :try_end_4f} :catchall_e2

    .line 788
    .end local v2    # "peekAd":Ljava/lang/String;
    .end local v4    # "adr":Ljava/net/InetAddress;
    .local v3, "peekAd":Ljava/lang/String;
    :goto_4f
    :try_start_4f
    invoke-virtual {v0, v3, v5}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_e2

    .line 791
    goto :goto_63

    .line 792
    :catch_53
    move-exception v2

    .line 795
    .local v2, "se":Ljava/lang/SecurityException;
    :try_start_54
    new-instance v4, Ljava/net/DatagramPacket;

    new-array v6, v1, [B

    invoke-direct {v4, v6, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 796
    .local v4, "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 804
    goto :goto_20

    .line 809
    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local v2    # "se":Ljava/lang/SecurityException;
    .end local v3    # "peekAd":Ljava/lang/String;
    .end local v4    # "tmp":Ljava/net/DatagramPacket;
    .end local v5    # "peekPort":I
    :cond_63
    :goto_63
    const/4 v0, 0x0

    .line 810
    .local v0, "tmp":Ljava/net/DatagramPacket;
    iget v2, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6d

    iget-boolean v2, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v2, :cond_c5

    .line 816
    :cond_6d
    const/4 v2, 0x0

    .line 817
    .local v2, "stop":Z
    :goto_6e
    if-nez v2, :cond_c5

    .line 818
    const/4 v3, 0x0

    .line 819
    .local v3, "peekAddress":Ljava/net/InetAddress;
    const/4 v4, -0x1

    .line 821
    .local v4, "peekPort":I
    iget-boolean v5, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v5, :cond_8a

    .line 823
    new-instance v5, Ljava/net/DatagramPacket;

    new-array v6, v1, [B

    invoke-direct {v5, v6, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 824
    .local v5, "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v6

    .line 825
    .end local v4    # "peekPort":I
    .local v6, "peekPort":I
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 826
    .end local v3    # "peekAddress":Ljava/net/InetAddress;
    .end local v5    # "peekPacket":Ljava/net/DatagramPacket;
    .local v4, "peekAddress":Ljava/net/InetAddress;
    goto :goto_99

    .line 828
    .end local v6    # "peekPort":I
    .restart local v3    # "peekAddress":Ljava/net/InetAddress;
    .local v4, "peekPort":I
    :cond_8a
    new-instance v5, Ljava/net/InetAddress;

    invoke-direct {v5}, Ljava/net/InetAddress;-><init>()V

    .line 829
    .end local v3    # "peekAddress":Ljava/net/InetAddress;
    .local v5, "peekAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v3

    move v6, v3

    .end local v4    # "peekPort":I
    .restart local v6    # "peekPort":I
    move-object v4, v5

    .line 831
    .end local v5    # "peekAddress":Ljava/net/InetAddress;
    .local v4, "peekAddress":Ljava/net/InetAddress;
    :goto_99
    iget-object v3, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget v3, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-eq v3, v6, :cond_a6

    goto :goto_a8

    .line 843
    :cond_a6
    const/4 v2, 0x1

    goto :goto_c4

    .line 834
    :cond_a8
    :goto_a8
    new-instance v3, Ljava/net/DatagramPacket;

    const/16 v5, 0x400

    new-array v7, v5, [B

    invoke-direct {v3, v7, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v0, v3

    .line 836
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 837
    iget-boolean v3, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v3, :cond_c4

    .line 838
    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;->checkFiltering(Ljava/net/DatagramPacket;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 839
    const/4 v2, 0x1

    .line 845
    .end local v4    # "peekAddress":Ljava/net/InetAddress;
    .end local v6    # "peekPort":I
    :cond_c4
    :goto_c4
    goto :goto_6e

    .line 849
    .end local v2    # "stop":Z
    :cond_c5
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 850
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->explicitFilter:Z

    if-eqz v1, :cond_d5

    if-nez v0, :cond_d5

    .line 852
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkFiltering(Ljava/net/DatagramPacket;)Z

    .line 854
    .end local v0    # "tmp":Ljava/net/DatagramPacket;
    :cond_d5
    monitor-exit p1
    :try_end_d6
    .catchall {:try_start_54 .. :try_end_d6} :catchall_e2

    .line 855
    monitor-exit p0

    return-void

    .line 765
    :cond_d8
    :try_start_d8
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Pending connect failure"

    iget-object v2, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    invoke-direct {v0, v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v0
    :try_end_e2
    .catchall {:try_start_d8 .. :try_end_e2} :catchall_e2

    .line 854
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_e2
    move-exception v0

    :goto_e3
    :try_start_e3
    monitor-exit p1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e5

    :try_start_e4
    throw v0

    .end local p0    # "this":Ljava/net/DatagramSocket;
    :catchall_e5
    move-exception v0

    goto :goto_e3

    .line 758
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_e7
    move-exception p1

    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_e7

    throw p1
.end method

.method public whitelist test-api send(Ljava/net/DatagramPacket;)V
    .registers 6
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "packetAddress":Ljava/net/InetAddress;
    monitor-enter p1

    .line 683
    :try_start_2
    iget-object v1, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-nez v1, :cond_8b

    .line 687
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_83

    .line 689
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string v2, "send"

    invoke-virtual {p0, v1, v2}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 690
    iget v1, p0, Ljava/net/DatagramSocket;->connectState:I

    if-nez v1, :cond_41

    .line 692
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 698
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_40

    .line 699
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 700
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    goto :goto_40

    .line 702
    :cond_31
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    .line 702
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 706
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_40
    :goto_40
    goto :goto_63

    .line 708
    :cond_41
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 709
    if-nez v0, :cond_53

    .line 710
    iget-object v1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 711
    iget v1, p0, Ljava/net/DatagramSocket;->connectedPort:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_63

    .line 712
    :cond_53
    iget-object v1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 713
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    iget v2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-ne v1, v2, :cond_7b

    .line 720
    :goto_63
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_72

    .line 721
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 723
    :cond_72
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 724
    monitor-exit p1

    .line 725
    return-void

    .line 714
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connected address and packet address differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1

    .line 688
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :cond_83
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1

    .line 684
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :cond_8b
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Pending connect failure"

    iget-object v3, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    invoke-direct {v1, v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    throw v1

    .line 724
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_95
    move-exception v1

    monitor-exit p1
    :try_end_97
    .catchall {:try_start_2 .. :try_end_97} :catchall_95

    throw v1
.end method

.method public declared-synchronized whitelist test-api setBroadcast(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1160
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1162
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    .line 1163
    monitor-exit p0

    return-void

    .line 1161
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    .end local p1    # "on":Z
    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/net/DatagramSocket;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/net/DatagramSocket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1381
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 1382
    return-object p0
.end method

.method public declared-synchronized whitelist test-api setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1054
    if-lez p1, :cond_22

    .line 1057
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1059
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 1060
    monitor-exit p0

    return-void

    .line 1058
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    .end local p1    # "size":I
    :catchall_20
    move-exception p1

    goto :goto_2a

    .line 1055
    .restart local p1    # "size":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    .end local p1    # "size":I
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist test-api setReuseAddress(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1117
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1120
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1d

    .line 1121
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    if-eqz p1, :cond_14

    const/4 v2, -0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_28

    .line 1123
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_1d
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_32

    .line 1124
    :goto_28
    monitor-exit p0

    return-void

    .line 1118
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    .end local p1    # "on":Z
    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSendBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 996
    if-lez p1, :cond_22

    .line 999
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1001
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 1002
    monitor-exit p0

    return-void

    .line 1000
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    .end local p1    # "size":I
    :catchall_20
    move-exception p1

    goto :goto_2a

    .line 997
    .restart local p1    # "size":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    .end local p1    # "size":I
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSoTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 937
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 939
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    .line 940
    monitor-exit p0

    return-void

    .line 938
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    .end local p1    # "timeout":I
    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public declared-synchronized whitelist test-api setTrafficClass(I)V
    .registers 5
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1217
    if-ltz p1, :cond_2c

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2c

    .line 1220
    :try_start_7
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_34

    if-nez v0, :cond_24

    .line 1223
    :try_start_d
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_19
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_19} :catch_1a
    .catchall {:try_start_d .. :try_end_19} :catchall_34

    .line 1229
    goto :goto_21

    .line 1224
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :catch_1a
    move-exception v0

    .line 1227
    .local v0, "se":Ljava/net/SocketException;
    :try_start_1b
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_34

    if-eqz v1, :cond_23

    .line 1230
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_21
    monitor-exit p0

    return-void

    .line 1228
    .restart local v0    # "se":Ljava/net/SocketException;
    .restart local p0    # "this":Ljava/net/DatagramSocket;
    :cond_23
    :try_start_23
    throw v0

    .line 1221
    .end local v0    # "se":Ljava/net/SocketException;
    .end local p0    # "this":Ljava/net/DatagramSocket;
    :cond_24
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tc is not in range 0 -- 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    .end local p1    # "tc":I
    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public whitelist test-api supportedOptions()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 1427
    const-class v0, Ljava/net/DatagramSocket;

    monitor-enter v0

    .line 1428
    :try_start_3
    sget-boolean v1, Ljava/net/DatagramSocket;->optionsSet:Z

    if-eqz v1, :cond_b

    .line 1429
    sget-object v1, Ljava/net/DatagramSocket;->options:Ljava/util/Set;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    return-object v1

    .line 1432
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    .line 1433
    .local v1, "impl":Ljava/net/DatagramSocketImpl;
    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/DatagramSocket;->options:Ljava/util/Set;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1a
    .catchall {:try_start_b .. :try_end_19} :catchall_28

    .line 1436
    .end local v1    # "impl":Ljava/net/DatagramSocketImpl;
    goto :goto_21

    .line 1434
    :catch_1a
    move-exception v1

    .line 1435
    .local v1, "e":Ljava/io/IOException;
    :try_start_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/DatagramSocket;->options:Ljava/util/Set;

    .line 1437
    .end local v1    # "e":Ljava/io/IOException;
    :goto_21
    const/4 v1, 0x1

    sput-boolean v1, Ljava/net/DatagramSocket;->optionsSet:Z

    .line 1438
    sget-object v1, Ljava/net/DatagramSocket;->options:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1439
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v1
.end method
