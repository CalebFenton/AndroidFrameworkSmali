.class public final Landroid/net/NattKeepalivePacketData;
.super Landroid/net/KeepalivePacketData;
.source "NattKeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NattKeepalivePacketData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IPV4_HEADER_LENGTH:I = 0x14

.field private static final blacklist IPV6_HEADER_LENGTH:I = 0x28

.field private static final blacklist UDP_HEADER_LENGTH:I = 0x8


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 154
    new-instance v0, Landroid/net/NattKeepalivePacketData$1;

    invoke-direct {v0}, Landroid/net/NattKeepalivePacketData$1;-><init>()V

    sput-object v0, Landroid/net/NattKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V
    .registers 6
    .param p1, "srcAddress"    # Ljava/net/InetAddress;
    .param p2, "srcPort"    # I
    .param p3, "dstAddress"    # Ljava/net/InetAddress;
    .param p4, "dstPort"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p5}, Landroid/net/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    .line 52
    return-void
.end method

.method public static blacklist nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Landroid/net/NattKeepalivePacketData;
    .registers 8
    .param p0, "srcAddress"    # Ljava/net/InetAddress;
    .param p1, "srcPort"    # I
    .param p2, "dstAddress"    # Ljava/net/InetAddress;
    .param p3, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 61
    const/16 v0, 0x1194

    if-ne p3, v0, :cond_4a

    .line 68
    const/16 v0, -0x15

    :try_start_6
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 69
    .local v1, "srcAddr":Ljava/net/InetAddress;
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_16} :catch_43

    .line 72
    .local v2, "dstAddr":Ljava/net/InetAddress;
    nop

    .line 74
    instance-of v3, v1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2a

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2a

    .line 75
    move-object v0, v1

    check-cast v0, Ljava/net/Inet4Address;

    move-object v3, v2

    check-cast v3, Ljava/net/Inet4Address;

    invoke-static {v0, p1, v3, p3}, Landroid/net/NattKeepalivePacketData;->nattKeepalivePacketv4(Ljava/net/Inet4Address;ILjava/net/Inet4Address;I)Landroid/net/NattKeepalivePacketData;

    move-result-object v0

    return-object v0

    .line 77
    :cond_2a
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3d

    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3d

    .line 78
    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v3, v2

    check-cast v3, Ljava/net/Inet6Address;

    invoke-static {v0, p1, v3, p3}, Landroid/net/NattKeepalivePacketData;->nattKeepalivePacketv6(Ljava/net/Inet6Address;ILjava/net/Inet6Address;I)Landroid/net/NattKeepalivePacketData;

    move-result-object v0

    return-object v0

    .line 82
    :cond_3d
    new-instance v3, Landroid/net/InvalidPacketException;

    invoke-direct {v3, v0}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v3

    .line 70
    .end local v1    # "srcAddr":Ljava/net/InetAddress;
    .end local v2    # "dstAddr":Ljava/net/InetAddress;
    :catch_43
    move-exception v1

    .line 71
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Landroid/net/InvalidPacketException;

    invoke-direct {v2, v0}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v2

    .line 62
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_4a
    new-instance v0, Landroid/net/InvalidPacketException;

    const/16 v1, -0x16

    invoke-direct {v0, v1}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v0
.end method

.method private static blacklist nattKeepalivePacketv4(Ljava/net/Inet4Address;ILjava/net/Inet4Address;I)Landroid/net/NattKeepalivePacketData;
    .registers 15
    .param p0, "srcAddress"    # Ljava/net/Inet4Address;
    .param p1, "srcPort"    # I
    .param p2, "dstAddress"    # Ljava/net/Inet4Address;
    .param p3, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 89
    const/16 v0, 0x1d

    .line 90
    .local v0, "length":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 91
    .local v1, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    const/16 v2, 0x4500

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 93
    int-to-short v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 95
    const/16 v3, 0x4000

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 98
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 101
    .local v3, "ipChecksumOffset":I
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    int-to-short v4, p1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 105
    int-to-short v4, p3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 106
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 108
    .local v4, "udpChecksumOffset":I
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 109
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    invoke-static {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 111
    const/16 v5, 0x14

    invoke-static {v1, v2, v5}, Landroid/net/connectivity/com/android/net/module/util/IpUtils;->udpChecksum(Ljava/nio/ByteBuffer;II)S

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 113
    new-instance v5, Landroid/net/NattKeepalivePacketData;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move v9, p3

    .end local p0    # "srcAddress":Ljava/net/Inet4Address;
    .end local p1    # "srcPort":I
    .end local p2    # "dstAddress":Ljava/net/Inet4Address;
    .end local p3    # "dstPort":I
    .local v6, "srcAddress":Ljava/net/Inet4Address;
    .local v7, "srcPort":I
    .local v8, "dstAddress":Ljava/net/Inet4Address;
    .local v9, "dstPort":I
    invoke-direct/range {v5 .. v10}, Landroid/net/NattKeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    return-object v5
.end method

.method private static blacklist nattKeepalivePacketv6(Ljava/net/Inet6Address;ILjava/net/Inet6Address;I)Landroid/net/NattKeepalivePacketData;
    .registers 13
    .param p0, "srcAddress"    # Ljava/net/Inet6Address;
    .param p1, "srcPort"    # I
    .param p2, "dstAddress"    # Ljava/net/Inet6Address;
    .param p3, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 119
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    invoke-virtual {p2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    int-to-short v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 132
    int-to-short v2, p3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 135
    .local v1, "udpChecksumOffset":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 136
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 137
    const/16 v3, 0x28

    invoke-static {v0, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/IpUtils;->udpChecksum(Ljava/nio/ByteBuffer;II)S

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 138
    new-instance v3, Landroid/net/NattKeepalivePacketData;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    .end local p0    # "srcAddress":Ljava/net/Inet6Address;
    .end local p1    # "srcPort":I
    .end local p2    # "dstAddress":Ljava/net/Inet6Address;
    .end local p3    # "dstPort":I
    .local v4, "srcAddress":Ljava/net/Inet6Address;
    .local v5, "srcPort":I
    .local v6, "dstAddress":Ljava/net/Inet6Address;
    .local v7, "dstPort":I
    invoke-direct/range {v3 .. v8}, Landroid/net/NattKeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    instance-of v0, p1, Landroid/net/NattKeepalivePacketData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 180
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/NattKeepalivePacketData;

    .line 181
    .local v0, "other":Landroid/net/NattKeepalivePacketData;
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 182
    .local v2, "srcAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 183
    .local v3, "dstAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 184
    invoke-virtual {v0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 185
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v5

    if-ne v4, v5, :cond_3b

    .line 186
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result v5

    if-ne v4, v5, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    nop

    .line 183
    :goto_3c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 191
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return-void
.end method
