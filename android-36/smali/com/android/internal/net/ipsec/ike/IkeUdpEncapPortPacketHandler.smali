.class public Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;
.super Ljava/lang/Object;
.source "IkeUdpEncapPortPacketHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler$PacketReceiver;
    }
.end annotation


# static fields
.field static final blacklist NON_ESP_MARKER:[B

.field static final blacklist NON_ESP_MARKER_LEN:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mSocket:Ljava/io/FileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->NON_ESP_MARKER:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "socket"    # Ljava/io/FileDescriptor;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->mSocket:Ljava/io/FileDescriptor;

    .line 51
    return-void
.end method


# virtual methods
.method blacklist sendIkePacket([BLjava/net/InetAddress;)V
    .registers 7
    .param p1, "ikePacket"    # [B
    .param p2, "serverAddress"    # Ljava/net/InetAddress;

    .line 95
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send packet to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_31
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->NON_ESP_MARKER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->mSocket:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/16 v3, 0x1194

    invoke-static {v1, v0, v2, p2, v3}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_4c
    .catch Landroid/system/ErrnoException; {:try_start_31 .. :try_end_4c} :catch_4e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4c} :catch_4e

    .line 116
    nop

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_5a

    .line 113
    :catch_4e
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapPortPacketHandler;->TAG:Ljava/lang/String;

    const-string v3, "error sending IKE packet"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method
