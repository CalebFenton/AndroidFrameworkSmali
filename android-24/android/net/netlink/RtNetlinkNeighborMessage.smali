.class public Landroid/net/netlink/RtNetlinkNeighborMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "RtNetlinkNeighborMessage.java"


# static fields
.field public static final NDA_CACHEINFO:S = 0x3s

.field public static final NDA_DST:S = 0x1s

.field public static final NDA_IFINDEX:S = 0x8s

.field public static final NDA_LLADDR:S = 0x2s

.field public static final NDA_MASTER:S = 0x9s

.field public static final NDA_PORT:S = 0x6s

.field public static final NDA_PROBES:S = 0x4s

.field public static final NDA_UNSPEC:S = 0x0s

.field public static final NDA_VLAN:S = 0x5s

.field public static final NDA_VNI:S = 0x7s


# instance fields
.field private mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

.field private mDestination:Ljava/net/InetAddress;

.field private mLinkLayerAddr:[B

.field private mNdmsg:Landroid/net/netlink/StructNdMsg;

.field private mNumProbes:I


# direct methods
.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 2
    .param p1, "header"    # Landroid/net/netlink/StructNlMsgHdr;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 176
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    #@4
    .line 177
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@6
    .line 178
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@8
    .line 179
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@a
    .line 180
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    #@d
    .line 181
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    #@f
    .line 175
    return-void
.end method

.method private static findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 4
    .param p0, "attrType"    # S
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 58
    :goto_0
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 59
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    #@c
    move-result-object v0

    #@d
    .line 60
    .local v0, "nlAttr":Landroid/net/netlink/StructNlAttr;
    if-nez v0, :cond_1

    #@f
    .line 71
    .end local v0    # "nlAttr":Landroid/net/netlink/StructNlAttr;
    :cond_0
    return-object v3

    #@10
    .line 63
    .restart local v0    # "nlAttr":Landroid/net/netlink/StructNlAttr;
    :cond_1
    iget-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    #@12
    if-ne v1, p0, :cond_2

    #@14
    .line 64
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    #@20
    move-result v2

    #@21
    if-lt v1, v2, :cond_0

    #@23
    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    #@2a
    move-result v2

    #@2b
    add-int/2addr v1, v2

    #@2c
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@2f
    goto :goto_0
.end method

.method public static newGetNeighborsRequest(I)[B
    .locals 7
    .param p0, "seqNo"    # I

    #@0
    .prologue
    const/16 v6, 0x1c

    #@2
    .line 123
    const/16 v2, 0x1c

    #@4
    .line 124
    .local v2, "length":I
    new-array v1, v6, [B

    #@6
    .line 125
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 126
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@11
    .line 128
    new-instance v4, Landroid/net/netlink/StructNlMsgHdr;

    #@13
    invoke-direct {v4}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    #@16
    .line 129
    .local v4, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    iput v6, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@18
    .line 130
    const/16 v5, 0x1e

    #@1a
    iput-short v5, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@1c
    .line 131
    const/16 v5, 0x301

    #@1e
    iput-short v5, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    #@20
    .line 132
    iput p0, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    #@22
    .line 133
    invoke-virtual {v4, v0}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    #@25
    .line 135
    new-instance v3, Landroid/net/netlink/StructNdMsg;

    #@27
    invoke-direct {v3}, Landroid/net/netlink/StructNdMsg;-><init>()V

    #@2a
    .line 136
    .local v3, "ndmsg":Landroid/net/netlink/StructNdMsg;
    invoke-virtual {v3, v0}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    #@2d
    .line 138
    return-object v1
.end method

.method public static newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B
    .locals 6
    .param p0, "seqNo"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "nudState"    # S
    .param p3, "ifIndex"    # I
    .param p4, "llAddr"    # [B

    #@0
    .prologue
    .line 147
    new-instance v3, Landroid/net/netlink/StructNlMsgHdr;

    #@2
    invoke-direct {v3}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    #@5
    .line 148
    .local v3, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    const/16 v4, 0x1c

    #@7
    iput-short v4, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@9
    .line 149
    const/16 v4, 0x105

    #@b
    iput-short v4, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    #@d
    .line 150
    iput p0, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    #@f
    .line 152
    new-instance v2, Landroid/net/netlink/RtNetlinkNeighborMessage;

    #@11
    invoke-direct {v2, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    #@14
    .line 153
    .local v2, "msg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    new-instance v4, Landroid/net/netlink/StructNdMsg;

    #@16
    invoke-direct {v4}, Landroid/net/netlink/StructNdMsg;-><init>()V

    #@19
    iput-object v4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@1b
    .line 154
    iget-object v5, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@1d
    .line 155
    instance-of v4, p1, Ljava/net/Inet6Address;

    #@1f
    if-eqz v4, :cond_0

    #@21
    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    #@23
    :goto_0
    int-to-byte v4, v4

    #@24
    .line 154
    iput-byte v4, v5, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    #@26
    .line 156
    iget-object v4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@28
    iput p3, v4, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    #@2a
    .line 157
    iget-object v4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@2c
    iput-short p2, v4, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@2e
    .line 158
    iput-object p1, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@30
    .line 159
    iput-object p4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@32
    .line 161
    invoke-virtual {v2}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getRequiredSpace()I

    #@35
    move-result v4

    #@36
    new-array v1, v4, [B

    #@38
    .line 162
    .local v1, "bytes":[B
    array-length v4, v1

    #@39
    iput v4, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@3b
    .line 163
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3e
    move-result-object v0

    #@3f
    .line 164
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@46
    .line 165
    invoke-virtual {v2, v0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->pack(Ljava/nio/ByteBuffer;)V

    #@49
    .line 166
    return-object v1

    #@4a
    .line 155
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    :cond_0
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    #@4c
    goto :goto_0
.end method

.method private static packNlAttr(S[BLjava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "nlType"    # S
    .param p1, "nlValue"    # [B
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 220
    new-instance v0, Landroid/net/netlink/StructNlAttr;

    #@2
    invoke-direct {v0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    #@5
    .line 221
    .local v0, "nlAttr":Landroid/net/netlink/StructNlAttr;
    iput-short p0, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    #@7
    .line 222
    iput-object p1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@9
    .line 223
    iget-object v1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@b
    array-length v1, v1

    #@c
    add-int/lit8 v1, v1, 0x4

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    #@11
    .line 224
    invoke-virtual {v0, p2}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    #@14
    .line 219
    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;
    .locals 7
    .param p0, "header"    # Landroid/net/netlink/StructNlMsgHdr;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 75
    new-instance v3, Landroid/net/netlink/RtNetlinkNeighborMessage;

    #@3
    invoke-direct {v3, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    #@6
    .line 77
    .local v3, "neighMsg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    invoke-static {p1}, Landroid/net/netlink/StructNdMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;

    #@9
    move-result-object v5

    #@a
    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@c
    .line 78
    iget-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@e
    if-nez v5, :cond_0

    #@10
    .line 79
    return-object v6

    #@11
    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@14
    move-result v0

    #@15
    .line 84
    .local v0, "baseOffset":I
    const/4 v5, 0x1

    #@16
    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    #@19
    move-result-object v4

    #@1a
    .line 85
    .local v4, "nlAttr":Landroid/net/netlink/StructNlAttr;
    if-eqz v4, :cond_1

    #@1c
    .line 86
    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsInetAddress()Ljava/net/InetAddress;

    #@1f
    move-result-object v5

    #@20
    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@22
    .line 89
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@25
    .line 90
    const/4 v5, 0x2

    #@26
    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    #@29
    move-result-object v4

    #@2a
    .line 91
    if-eqz v4, :cond_2

    #@2c
    .line 92
    iget-object v5, v4, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@2e
    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@30
    .line 95
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@33
    .line 96
    const/4 v5, 0x4

    #@34
    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    #@37
    move-result-object v4

    #@38
    .line 97
    if-eqz v4, :cond_3

    #@3a
    .line 98
    const/4 v5, 0x0

    #@3b
    invoke-virtual {v4, v5}, Landroid/net/netlink/StructNlAttr;->getValueAsInt(I)I

    #@3e
    move-result v5

    #@3f
    iput v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    #@41
    .line 101
    :cond_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@44
    .line 102
    const/4 v5, 0x3

    #@45
    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    #@48
    move-result-object v4

    #@49
    .line 103
    if-eqz v4, :cond_4

    #@4b
    .line 104
    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    #@4e
    move-result-object v5

    #@4f
    invoke-static {v5}, Landroid/net/netlink/StructNdaCacheInfo;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;

    #@52
    move-result-object v5

    #@53
    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    #@55
    .line 107
    :cond_4
    const/16 v2, 0x1c

    #@57
    .line 109
    .local v2, "kMinConsumed":I
    iget-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    #@59
    iget v5, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@5b
    add-int/lit8 v5, v5, -0x1c

    #@5d
    .line 108
    invoke-static {v5}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    #@60
    move-result v1

    #@61
    .line 110
    .local v1, "kAdditionalSpace":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@64
    move-result v5

    #@65
    if-ge v5, v1, :cond_5

    #@67
    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@6a
    move-result v5

    #@6b
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@6e
    .line 116
    :goto_0
    return-object v3

    #@6f
    .line 113
    :cond_5
    add-int v5, v0, v1

    #@71
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@74
    goto :goto_0
.end method


# virtual methods
.method public getCacheInfo()Landroid/net/netlink/StructNdaCacheInfo;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    #@2
    return-object v0
.end method

.method public getDestination()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getLinkLayerAddress()[B
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@2
    return-object v0
.end method

.method public getNdHeader()Landroid/net/netlink/StructNdMsg;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@2
    return-object v0
.end method

.method public getProbes()I
    .locals 1

    #@0
    .prologue
    .line 197
    iget v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    #@2
    return v0
.end method

.method public getRequiredSpace()I
    .locals 2

    #@0
    .prologue
    .line 205
    const/16 v0, 0x1c

    #@2
    .line 206
    .local v0, "spaceRequired":I
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 208
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@8
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    #@b
    move-result-object v1

    #@c
    array-length v1, v1

    #@d
    add-int/lit8 v1, v1, 0x4

    #@f
    .line 207
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    #@12
    move-result v1

    #@13
    add-int/lit8 v0, v1, 0x1c

    #@15
    .line 210
    :cond_0
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 212
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@1b
    array-length v1, v1

    #@1c
    add-int/lit8 v1, v1, 0x4

    #@1e
    .line 211
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    #@21
    move-result v1

    #@22
    add-int/2addr v0, v1

    #@23
    .line 216
    :cond_1
    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    #@7
    .line 229
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@9
    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    #@c
    .line 231
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 232
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@12
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    #@15
    move-result-object v0

    #@16
    const/4 v1, 0x1

    #@17
    invoke-static {v1, v0, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    #@1a
    .line 234
    :cond_0
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 235
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@20
    const/4 v1, 0x2

    #@21
    invoke-static {v1, v0, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    #@24
    .line 227
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@2
    if-nez v1, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    .line 242
    .local v0, "ipLiteral":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "RtNetlinkNeighborMessage{ nlmsghdr{"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 243
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    #@15
    if-nez v1, :cond_1

    #@17
    const-string/jumbo v1, ""

    #@1a
    .line 242
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 243
    const-string/jumbo v2, "}, "

    #@21
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 244
    const-string/jumbo v2, "ndmsg{"

    #@28
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 244
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@2e
    if-nez v1, :cond_2

    #@30
    const-string/jumbo v1, ""

    #@33
    .line 242
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 244
    const-string/jumbo v2, "}, "

    #@3a
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 245
    const-string/jumbo v2, "destination{"

    #@41
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 245
    const-string/jumbo v2, "} "

    #@4c
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    .line 246
    const-string/jumbo v2, "linklayeraddr{"

    #@53
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 246
    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    #@59
    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 246
    const-string/jumbo v2, "} "

    #@64
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 247
    const-string/jumbo v2, "probes{"

    #@6b
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 247
    iget v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    #@71
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 247
    const-string/jumbo v2, "} "

    #@78
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    .line 248
    const-string/jumbo v2, "cacheinfo{"

    #@7f
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    .line 248
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    #@85
    if-nez v1, :cond_3

    #@87
    const-string/jumbo v1, ""

    #@8a
    .line 242
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    .line 248
    const-string/jumbo v2, "} "

    #@91
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    .line 249
    const-string/jumbo v2, "}"

    #@98
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    return-object v1

    #@a1
    .line 241
    .end local v0    # "ipLiteral":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    #@a3
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    .restart local v0    # "ipLiteral":Ljava/lang/String;
    goto/16 :goto_0

    #@a9
    .line 243
    :cond_1
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    #@ab
    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    goto/16 :goto_1

    #@b1
    .line 244
    :cond_2
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    #@b3
    invoke-virtual {v1}, Landroid/net/netlink/StructNdMsg;->toString()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    goto/16 :goto_2

    #@b9
    .line 248
    :cond_3
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    #@bb
    invoke-virtual {v1}, Landroid/net/netlink/StructNdaCacheInfo;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    goto :goto_3
.end method
