.class Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;
.super Ljava/lang/Object;
.source "IkeUdpEncapPortPacketHandler.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PacketReceiver"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handlePacket([BLandroid/util/LongSparseArray;)V
    .registers 8
    .param p1, "recvbuf"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "spiToCallback":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;>;"
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_10

    .line 61
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Received too short of packet. Ignoring."

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 65
    :cond_10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    new-array v1, v1, [B

    .line 71
    .local v1, "espMarker":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 72
    sget-object v2, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->NON_ESP_MARKER:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 74
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Received an ESP packet. Dropped."

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 80
    :cond_2d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 81
    .local v2, "ikePacketBytes":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    sget-object v3, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, p2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->parseAndDemuxIkePacket([BLandroid/util/LongSparseArray;Ljava/lang/String;)V

    .line 83
    return-void
.end method
