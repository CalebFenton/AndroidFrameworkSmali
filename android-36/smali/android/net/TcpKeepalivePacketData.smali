.class public final Landroid/net/TcpKeepalivePacketData;
.super Landroid/net/KeepalivePacketData;
.source "TcpKeepalivePacketData.java"

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
            "Landroid/net/TcpKeepalivePacketData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "TcpKeepalivePacketData"


# instance fields
.field public final blacklist ipTos:I

.field public final blacklist ipTtl:I

.field public final blacklist tcpAck:I

.field public final blacklist tcpSeq:I

.field public final blacklist tcpWindow:I

.field public final blacklist tcpWindowScale:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;
    .registers 1

    invoke-static {p0}, Landroid/net/TcpKeepalivePacketData;->readFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 201
    new-instance v0, Landroid/net/TcpKeepalivePacketData$1;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketData$1;-><init>()V

    sput-object v0, Landroid/net/TcpKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[BIIIIII)V
    .registers 13
    .param p1, "srcAddress"    # Ljava/net/InetAddress;
    .param p2, "srcPort"    # I
    .param p3, "dstAddress"    # Ljava/net/InetAddress;
    .param p4, "dstPort"    # I
    .param p5, "data"    # [B
    .param p6, "tcpSeq"    # I
    .param p7, "tcpAck"    # I
    .param p8, "tcpWindow"    # I
    .param p9, "tcpWindowScale"    # I
    .param p10, "ipTos"    # I
    .param p11, "ipTtl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 74
    invoke-direct/range {p0 .. p5}, Landroid/net/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    .line 75
    move-object v0, p5

    move p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "srcAddress":Ljava/net/InetAddress;
    .local v0, "data":[B
    .local p2, "srcAddress":Ljava/net/InetAddress;
    .local p3, "srcPort":I
    .local p4, "dstAddress":Ljava/net/InetAddress;
    .local p5, "dstPort":I
    iput p6, p1, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    .line 76
    iput p7, p1, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    .line 77
    iput p8, p1, Landroid/net/TcpKeepalivePacketData;->tcpWindow:I

    .line 78
    iput p9, p1, Landroid/net/TcpKeepalivePacketData;->tcpWindowScale:I

    .line 79
    iput p10, p1, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    .line 80
    iput p11, p1, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    .line 81
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;
    .registers 14
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 186
    .local v2, "srcAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 187
    .local v4, "dstAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .local v3, "srcPort":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 189
    .local v5, "dstPort":I
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 190
    .local v6, "packet":[B
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 191
    .local v7, "tcpSeq":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 192
    .local v8, "tcpAck":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 193
    .local v9, "tcpWnd":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 194
    .local v10, "tcpWndScale":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 195
    .local v11, "ipTos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 196
    .local v12, "ipTtl":I
    new-instance v1, Landroid/net/TcpKeepalivePacketData;

    invoke-direct/range {v1 .. v12}, Landroid/net/TcpKeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[BIIIIII)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    instance-of v0, p1, Landroid/net/TcpKeepalivePacketData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 136
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/TcpKeepalivePacketData;

    .line 137
    .local v0, "other":Landroid/net/TcpKeepalivePacketData;
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 138
    .local v2, "srcAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 139
    .local v3, "dstAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 140
    invoke-virtual {v0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 141
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v5

    if-ne v4, v5, :cond_5f

    .line 142
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v5

    if-ne v4, v5, :cond_5f

    iget v4, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    iget v5, v0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    if-ne v4, v5, :cond_5f

    iget v4, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    iget v5, v0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    if-ne v4, v5, :cond_5f

    iget v4, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindow:I

    iget v5, v0, Landroid/net/TcpKeepalivePacketData;->tcpWindow:I

    if-ne v4, v5, :cond_5f

    iget v4, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindowScale:I

    iget v5, v0, Landroid/net/TcpKeepalivePacketData;->tcpWindowScale:I

    if-ne v4, v5, :cond_5f

    iget v4, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    iget v5, v0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    if-ne v4, v5, :cond_5f

    iget v4, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    iget v5, v0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    if-ne v4, v5, :cond_5f

    const/4 v1, 0x1

    goto :goto_60

    :cond_5f
    nop

    .line 139
    :goto_60
    return v1
.end method

.method public whitelist getIpTos()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    return v0
.end method

.method public whitelist getIpTtl()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    return v0
.end method

.method public whitelist getTcpAck()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    return v0
.end method

.method public whitelist getTcpSeq()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    return v0
.end method

.method public whitelist getTcpWindow()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindow:I

    return v0
.end method

.method public whitelist getTcpWindowScale()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindowScale:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 153
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindow:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindowScale:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " daddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " windowScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindowScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ttl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 171
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getPacket()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 176
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWindowScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void
.end method
