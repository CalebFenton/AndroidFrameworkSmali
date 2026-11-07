.class public final Landroid/net/util/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 4
    .param p0, "socket"    # Ljava/io/FileDescriptor;
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 54
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    invoke-static {p0, v0, v1, p1}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    .line 56
    return-void
.end method

.method public static whitelist closeSocket(Ljava/io/FileDescriptor;)V
    .registers 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 119
    return-void
.end method

.method public static whitelist makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;
    .registers 3
    .param p0, "portId"    # I
    .param p1, "groupsMask"    # I

    .line 63
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v0, p0, p1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    return-object v0
.end method

.method public static whitelist makePacketSocketAddress(II)Ljava/net/SocketAddress;
    .registers 4
    .param p0, "protocol"    # I
    .param p1, "ifIndex"    # I

    .line 75
    new-instance v0, Landroid/system/PacketSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/system/PacketSocketAddress;-><init>(II[B)V

    return-object v0
.end method

.method public static whitelist makePacketSocketAddress(II[B)Ljava/net/SocketAddress;
    .registers 4
    .param p0, "protocol"    # I
    .param p1, "ifIndex"    # I
    .param p2, "hwAddr"    # [B

    .line 108
    new-instance v0, Landroid/system/PacketSocketAddress;

    invoke-direct {v0, p0, p1, p2}, Landroid/system/PacketSocketAddress;-><init>(II[B)V

    return-object v0
.end method

.method public static whitelist makePacketSocketAddress(I[B)Ljava/net/SocketAddress;
    .registers 4
    .param p0, "ifIndex"    # I
    .param p1, "hwAddr"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    new-instance v0, Landroid/system/PacketSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/system/PacketSocketAddress;-><init>(II[B)V

    return-object v0
.end method
