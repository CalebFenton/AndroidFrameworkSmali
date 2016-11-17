.class public Lcom/android/server/connectivity/KeepalivePacketData;
.super Ljava/lang/Object;
.source "KeepalivePacketData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
    }
.end annotation


# static fields
.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final UDP_HEADER_LENGTH:I = 0x8


# instance fields
.field public final data:[B

.field public final dstAddress:Ljava/net/InetAddress;

.field public dstMac:[B

.field public final dstPort:I

.field public final protocol:I

.field public final srcAddress:Ljava/net/InetAddress;

.field public final srcPort:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V
    .locals 3
    .param p1, "srcAddress"    # Ljava/net/InetAddress;
    .param p2, "srcPort"    # I
    .param p3, "dstAddress"    # Ljava/net/InetAddress;
    .param p4, "dstPort"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, -0x15

    #@2
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 65
    iput-object p1, p0, Lcom/android/server/connectivity/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    #@7
    .line 66
    iput-object p3, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@9
    .line 67
    iput p2, p0, Lcom/android/server/connectivity/KeepalivePacketData;->srcPort:I

    #@b
    .line 68
    iput p4, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstPort:I

    #@d
    .line 69
    iput-object p5, p0, Lcom/android/server/connectivity/KeepalivePacketData;->data:[B

    #@f
    .line 72
    if-eqz p1, :cond_0

    #@11
    if-nez p3, :cond_1

    #@13
    .line 74
    :cond_0
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    #@15
    invoke-direct {v0, v2}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    #@18
    throw v0

    #@19
    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p3}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 78
    iget-object v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@31
    instance-of v0, v0, Ljava/net/Inet4Address;

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 79
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    #@37
    iput v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->protocol:I

    #@39
    .line 87
    :goto_0
    invoke-static {p2}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_4

    #@3f
    invoke-static {p4}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_4

    #@45
    .line 64
    return-void

    #@46
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@48
    instance-of v0, v0, Ljava/net/Inet6Address;

    #@4a
    if-eqz v0, :cond_3

    #@4c
    .line 81
    sget v0, Landroid/system/OsConstants;->ETH_P_IPV6:I

    #@4e
    iput v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->protocol:I

    #@50
    goto :goto_0

    #@51
    .line 83
    :cond_3
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    #@53
    invoke-direct {v0, v2}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    #@56
    throw v0

    #@57
    .line 88
    :cond_4
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    #@59
    const/16 v1, -0x16

    #@5b
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    #@5e
    throw v0
.end method

.method public static nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Lcom/android/server/connectivity/KeepalivePacketData;
    .locals 10
    .param p0, "srcAddress"    # Ljava/net/InetAddress;
    .param p1, "srcPort"    # I
    .param p2, "dstAddress"    # Ljava/net/InetAddress;
    .param p3, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 106
    instance-of v0, p0, Ljava/net/Inet4Address;

    #@3
    if-eqz v0, :cond_0

    #@5
    instance-of v0, p2, Ljava/net/Inet4Address;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 110
    const/16 v0, 0x1194

    #@b
    if-eq p3, v0, :cond_1

    #@d
    .line 111
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    #@f
    const/16 v1, -0x16

    #@11
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    #@14
    throw v0

    #@15
    .line 107
    :cond_0
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    #@17
    const/16 v1, -0x15

    #@19
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    #@1c
    throw v0

    #@1d
    .line 114
    :cond_1
    const/16 v8, 0x1d

    #@1f
    .line 115
    .local v8, "length":I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@22
    move-result-object v6

    #@23
    .line 116
    .local v6, "buf":Ljava/nio/ByteBuffer;
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@25
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@28
    .line 117
    const/16 v0, 0x4500

    #@2a
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@2d
    .line 118
    const/16 v0, 0x1d

    #@2f
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@32
    .line 119
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@35
    .line 120
    const/16 v0, 0x40

    #@37
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3a
    .line 121
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@3c
    int-to-byte v0, v0

    #@3d
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@40
    .line 122
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@43
    move-result v7

    #@44
    .line 123
    .local v7, "ipChecksumOffset":I
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@47
    .line 124
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@4e
    .line 125
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@55
    .line 126
    int-to-short v0, p1

    #@56
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@59
    .line 127
    int-to-short v0, p3

    #@5a
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@5d
    .line 128
    const/16 v0, 0x9

    #@5f
    int-to-short v0, v0

    #@60
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@63
    .line 129
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@66
    move-result v9

    #@67
    .line 130
    .local v9, "udpChecksumOffset":I
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@6a
    .line 131
    const/4 v0, -0x1

    #@6b
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@6e
    .line 132
    invoke-static {v6, v1}, Landroid/net/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    #@71
    move-result v0

    #@72
    invoke-virtual {v6, v7, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@75
    .line 133
    const/16 v0, 0x14

    #@77
    invoke-static {v6, v1, v0}, Landroid/net/util/IpUtils;->udpChecksum(Ljava/nio/ByteBuffer;II)S

    #@7a
    move-result v0

    #@7b
    invoke-virtual {v6, v9, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@7e
    .line 135
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData;

    #@80
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    #@83
    move-result-object v5

    #@84
    move-object v1, p0

    #@85
    move v2, p1

    #@86
    move-object v3, p2

    #@87
    move v4, p3

    #@88
    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    #@8b
    return-object v0
.end method
