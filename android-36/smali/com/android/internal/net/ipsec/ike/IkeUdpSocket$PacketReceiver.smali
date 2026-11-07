.class final Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;
.super Ljava/lang/Object;
.source "IkeUdpSocket.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PacketReceiver"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handlePacket([BLandroid/util/LongSparseArray;)V
    .registers 6
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
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 65
    .local v1, "ikePacketBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 66
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->parseAndDemuxIkePacket([BLandroid/util/LongSparseArray;Ljava/lang/String;)V

    .line 67
    return-void
.end method
