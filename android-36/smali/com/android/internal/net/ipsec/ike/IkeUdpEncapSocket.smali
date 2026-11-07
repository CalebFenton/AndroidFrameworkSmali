.class public final Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;
.super Lcom/android/internal/net/ipsec/ike/IkeSocket;
.source "IkeUdpEncapSocket.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IkeUdpEncapSocket"

.field private static blacklist sConfigToSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;",
            "Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;


# instance fields
.field private final blacklist mUdpEncapPortPacketHandler:Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

.field private final blacklist mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->sConfigToSocketMap:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
    .registers 6
    .param p1, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p2, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSocket;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    .line 62
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 64
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->getFd()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mUdpEncapPortPacketHandler:Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    .line 65
    return-void
.end method

.method public static blacklist getIkeUdpEncapSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Looper;)Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;
    .registers 9
    .param p0, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p1, "ipsecManager"    # Landroid/net/IpSecManager;
    .param p2, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    .line 85
    .local v0, "ikeSocket":Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;
    if-nez v0, :cond_29

    .line 86
    invoke-virtual {p1}, Landroid/net/IpSecManager;->openUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v1

    .line 87
    .local v1, "udpEncapSocket":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    invoke-virtual {v1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 88
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->applySocketConfig(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Ljava/io/FileDescriptor;Z)V

    .line 90
    new-instance v3, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, v1, p0, v4}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;-><init>(Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    move-object v0, v3

    .line 93
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->start()V

    .line 95
    sget-object v3, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v1    # "udpEncapSocket":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :cond_29
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method static blacklist setPacketReceiver(Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;)V
    .registers 1
    .param p0, "receiver"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    .line 119
    sput-object p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    .line 120
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 144
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->getIkeSocketConfig()Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    invoke-virtual {v0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    .line 154
    goto :goto_32

    .line 148
    :catch_f
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close UDP Encapsulation Socket with Port= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 153
    invoke-virtual {v3}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    const-string v3, "IkeUdpEncapSocket"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :goto_32
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->close()V

    .line 159
    return-void
.end method

.method protected blacklist getFd()Ljava/io/FileDescriptor;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    invoke-virtual {v0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIkeServerPort()I
    .registers 2

    .line 138
    const/16 v0, 0x1194

    return v0
.end method

.method public blacklist getUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mUdpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    return-object v0
.end method

.method protected blacklist handlePacket([BI)V
    .registers 6
    .param p1, "recvbuf"    # [B
    .param p2, "length"    # I

    .line 128
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mSpiToCallback:Landroid/util/LongSparseArray;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;->handlePacket([BLandroid/util/LongSparseArray;)V

    .line 129
    return-void
.end method

.method public blacklist sendIkePacket([BLjava/net/InetAddress;)V
    .registers 4
    .param p1, "ikePacket"    # [B
    .param p2, "serverAddress"    # Ljava/net/InetAddress;

    .line 133
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->mUdpEncapPortPacketHandler:Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->sendIkePacket([BLjava/net/InetAddress;)V

    .line 134
    return-void
.end method
