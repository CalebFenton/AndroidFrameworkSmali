.class public abstract Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;
.super Lcom/android/internal/net/ipsec/ike/IkeSocket;
.source "IkeUdpSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field protected static blacklist sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;


# instance fields
.field protected final blacklist mSocket:Ljava/io/FileDescriptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
    .registers 4
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .param p2, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSocket;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    .line 47
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    .line 48
    return-void
.end method

.method static blacklist setPacketReceiver(Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;)V
    .registers 1
    .param p0, "receiver"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    .line 73
    sput-object p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 124
    goto :goto_18

    .line 122
    :catch_6
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to close UDP Socket"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :goto_18
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->close()V

    .line 129
    return-void
.end method

.method protected blacklist getFd()Ljava/io/FileDescriptor;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getIkeServerPort()I
    .registers 2

    .line 114
    const/16 v0, 0x1f4

    return v0
.end method

.method protected blacklist handlePacket([BI)V
    .registers 6
    .param p1, "recvbuf"    # [B
    .param p2, "length"    # I

    .line 82
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSpiToCallback:Landroid/util/LongSparseArray;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;->handlePacket([BLandroid/util/LongSparseArray;)V

    .line 83
    return-void
.end method

.method public blacklist sendIkePacket([BLjava/net/InetAddress;)V
    .registers 7
    .param p1, "ikePacket"    # [B
    .param p2, "serverAddress"    # Ljava/net/InetAddress;

    .line 93
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending packet to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
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

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_37
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->getIkeServerPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p2, v2}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_45
    .catch Landroid/system/ErrnoException; {:try_start_37 .. :try_end_45} :catch_47
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_45} :catch_47

    .line 109
    nop

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_59

    .line 107
    :catch_47
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send packet"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method
