.class public abstract Lcom/android/internal/net/ipsec/ike/IkeSocket;
.super Ljava/lang/Object;
.source "IkeSocket.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;,
        Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;
    }
.end annotation


# static fields
.field private static final blacklist RCV_BUFFER_SIZE:I = 0x1000

.field public static final blacklist SERVER_PORT_NON_UDP_ENCAPSULATED:I = 0x1f4

.field public static final blacklist SERVER_PORT_UDP_ENCAPSULATED:I = 0x1194

.field private static final blacklist TAG:Ljava/lang/String; = "IkeSocket"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIkeSocketConfig:Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

.field protected final blacklist mRegisteredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSpiToCallback:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$GkgjWhAkpBFwb_HySd_CU9iZumw(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->lambda$start$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U0OAxV5mN7PlHUq8zRSLlNupt5k(Lcom/android/internal/net/ipsec/ike/IkeSocket;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->lambda$start$0([B)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
    .registers 4
    .param p1, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mSpiToCallback:Landroid/util/LongSparseArray;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mRegisteredCallbacks:Ljava/util/Set;

    .line 83
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mIkeSocketConfig:Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    .line 85
    return-void
.end method

.method protected static blacklist applySocketConfig(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Ljava/io/FileDescriptor;Z)V
    .registers 6
    .param p0, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p1, "sock"    # Ljava/io/FileDescriptor;
    .param p2, "isIpv6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    if-eqz p2, :cond_10

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->getDscp()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 122
    .local v0, "tClass":I
    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_TCLASS:I

    invoke-static {p1, v1, v2, v0}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 123
    .end local v0    # "tClass":I
    goto :goto_1d

    .line 126
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->getDscp()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 127
    .local v0, "tos":I
    sget v1, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v2, Landroid/system/OsConstants;->IP_TOS:I

    invoke-static {p1, v1, v2, v0}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 129
    .end local v0    # "tos":I
    :goto_1d
    return-void
.end method

.method private synthetic blacklist lambda$start$0([B)V
    .registers 3
    .param p1, "intercepted"    # [B

    .line 154
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->handlePacket([BI)V

    .line 155
    return-void
.end method

.method private synthetic blacklist lambda$start$1()V
    .registers 5

    .line 142
    nop

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->receiveFromFd()[B

    move-result-object v0

    .line 143
    .local v0, "intercepted":[B
    if-nez v0, :cond_8

    .line 145
    return-void

    .line 146
    :cond_8
    array-length v1, v0

    if-lez v1, :cond_26

    .line 148
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received packet"

    .line 149
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSocket$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSocket;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_27

    .line 157
    .end local v0    # "intercepted":[B
    :cond_26
    goto :goto_1

    .line 158
    :catch_27
    move-exception v0

    .line 160
    .local v0, "ignored":Ljava/io/IOException;
    return-void
.end method

.method protected static blacklist parseAndDemuxIkePacket([BLandroid/util/LongSparseArray;Ljava/lang/String;)V
    .registers 9
    .param p0, "ikePacketBytes"    # [B
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    .local p1, "spiToCallback":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;>;"
    :try_start_0
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive packet of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>([B)V

    .line 97
    .local v0, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    iget-boolean v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->fromIkeInitiator:Z

    if-eqz v1, :cond_3c

    .line 98
    iget-wide v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    goto :goto_3e

    .line 99
    :cond_3c
    iget-wide v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    :goto_3e
    nop

    .line 101
    .local v1, "localGeneratedSpi":J
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;

    .line 102
    .local v3, "callback":Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    if-nez v3, :cond_51

    .line 103
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v4

    const-string v5, "Unrecognized IKE SPI."

    invoke-virtual {v4, p2, v5}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 106
    :cond_51
    invoke-interface {v3, v0, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;->onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    :try_end_54
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_0 .. :try_end_54} :catch_55

    .line 111
    .end local v0    # "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .end local v1    # "localGeneratedSpi":J
    .end local v3    # "callback":Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    :goto_54
    goto :goto_5f

    .line 108
    :catch_55
    move-exception v0

    .line 110
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    const-string v2, "Can\'t parse malformed IKE packet header."

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_5f
    return-void
.end method

.method private blacklist receiveFromFd()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getFd()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 172
    .local v0, "in":Ljava/io/FileInputStream;
    const/16 v1, 0x1000

    new-array v2, v1, [B

    .line 173
    .local v2, "inBytes":[B
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 175
    .local v3, "bytesRead":I
    if-gez v3, :cond_15

    .line 176
    const/4 v1, 0x0

    return-object v1

    .line 177
    :cond_15
    if-lt v3, v1, :cond_2c

    .line 180
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v5, "Too big packet. Fragmentation unsupported."

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 186
    :cond_2c
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist bindToNetwork(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getFd()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 168
    return-void
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->stop()V

    .line 254
    return-void
.end method

.method protected blacklist createFd()Ljava/io/FileDescriptor;
    .registers 2

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getFd()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist getFd()Ljava/io/FileDescriptor;
.end method

.method public abstract blacklist getIkeServerPort()I
.end method

.method public final blacklist getIkeSocketConfig()Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mIkeSocketConfig:Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    return-object v0
.end method

.method public final blacklist getLocalPort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getFd()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 194
    .local v0, "localAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method protected abstract blacklist handlePacket([BI)V
.end method

.method public final blacklist registerIke(JLcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V
    .registers 5
    .param p1, "spi"    # J
    .param p3, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;

    .line 217
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mSpiToCallback:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 218
    return-void
.end method

.method public final blacklist releaseReference(Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;

    .line 231
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->close()V

    .line 233
    :cond_10
    return-void
.end method

.method public abstract blacklist sendIkePacket([BLjava/net/InetAddress;)V
.end method

.method public blacklist start()V
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSocket$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method

.method public blacklist stop()V
    .registers 1

    .line 260
    return-void
.end method

.method public final blacklist unregisterIke(J)V
    .registers 4
    .param p1, "spi"    # J

    .line 226
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocket;->mSpiToCallback:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 227
    return-void
.end method
