.class public abstract Lcom/android/internal/net/ipsec/ike/utils/PacketReader;
.super Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;
.source "PacketReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_RECV_BUF_SIZE:I = 0x800


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 44
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/utils/PacketReader;-><init>(Landroid/os/Handler;I)V

    .line 45
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Handler;I)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "recvBufSize"    # I

    .line 48
    const/16 v0, 0x800

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist readPacket(Ljava/io/FileDescriptor;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/utils/PacketReader;->readPacket(Ljava/io/FileDescriptor;[B)I

    move-result p1

    return p1
.end method

.method protected blacklist readPacket(Ljava/io/FileDescriptor;[B)I
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packetBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p1, p2, v0, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic blacklist recvBufSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/utils/PacketReader;->recvBufSize([B)I

    move-result p1

    return p1
.end method

.method protected final blacklist recvBufSize([B)I
    .registers 3
    .param p1, "buffer"    # [B

    .line 53
    array-length v0, p1

    return v0
.end method
