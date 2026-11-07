.class public final Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;
.super Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;
.source "IkeUdp6WithEncapPortSocket.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sConfigToSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;",
            "Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;


# instance fields
.field private final blacklist mUdpEncapPortPacketHandler:Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->sConfigToSocketMap:Ljava/util/Map;

    .line 50
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
    .registers 6
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .param p2, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;-><init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    .line 59
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->getFd()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->mUdpEncapPortPacketHandler:Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    .line 60
    return-void
.end method

.method public static blacklist getIkeUdpEncapSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;
    .registers 6
    .param p0, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p1, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;

    .line 78
    .local v0, "ikeSocket":Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;
    if-nez v0, :cond_1c

    .line 79
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;

    .line 80
    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->openUdp6Sock(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p0, p2}, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;-><init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    move-object v0, v1

    .line 83
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->start()V

    .line 85
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1c
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0
.end method

.method static blacklist setPacketReceiver(Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;)V
    .registers 1
    .param p0, "receiver"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    .line 94
    sput-object p0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 119
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->getIkeSocketConfig()Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->close()V

    .line 122
    return-void
.end method

.method public blacklist getIkeServerPort()I
    .registers 2

    .line 113
    const/16 v0, 0x1194

    return v0
.end method

.method protected blacklist handlePacket([BI)V
    .registers 6
    .param p1, "recvbuf"    # [B
    .param p2, "length"    # I

    .line 103
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->mSpiToCallback:Landroid/util/LongSparseArray;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;->handlePacket([BLandroid/util/LongSparseArray;)V

    .line 104
    return-void
.end method

.method public blacklist sendIkePacket([BLjava/net/InetAddress;)V
    .registers 4
    .param p1, "ikePacket"    # [B
    .param p2, "serverAddress"    # Ljava/net/InetAddress;

    .line 108
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;->mUdpEncapPortPacketHandler:Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->sendIkePacket([BLjava/net/InetAddress;)V

    .line 109
    return-void
.end method
