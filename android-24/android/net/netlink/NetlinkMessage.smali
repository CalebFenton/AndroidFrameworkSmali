.class public Landroid/net/netlink/NetlinkMessage;
.super Ljava/lang/Object;
.source "NetlinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkMessage"


# instance fields
.field protected mHeader:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 0
    .param p1, "nlmsghdr"    # Landroid/net/netlink/StructNlMsgHdr;

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    iput-object p1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    #@5
    .line 85
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .locals 6
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 46
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v2

    #@7
    .line 47
    .local v2, "startPosition":I
    :goto_0
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    #@a
    move-result-object v0

    #@b
    .line 48
    .local v0, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    if-nez v0, :cond_1

    #@d
    .line 49
    return-object v5

    #@e
    .line 46
    .end local v0    # "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    .end local v2    # "startPosition":I
    :cond_0
    const/4 v2, -0x1

    #@f
    .restart local v2    # "startPosition":I
    goto :goto_0

    #@10
    .line 52
    .restart local v0    # "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    :cond_1
    iget v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@12
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    #@15
    move-result v1

    #@16
    .line 53
    .local v1, "payloadLength":I
    add-int/lit8 v1, v1, -0x10

    #@18
    .line 54
    if-ltz v1, :cond_2

    #@1a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@1d
    move-result v3

    #@1e
    if-le v1, v3, :cond_3

    #@20
    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@23
    move-result v3

    #@24
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@27
    .line 57
    return-object v5

    #@28
    .line 60
    :cond_3
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@2a
    sparse-switch v3, :sswitch_data_0

    #@2d
    .line 73
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@2f
    const/16 v4, 0xf

    #@31
    if-gt v3, v4, :cond_4

    #@33
    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@36
    move-result v3

    #@37
    add-int/2addr v3, v1

    #@38
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@3b
    .line 77
    new-instance v3, Landroid/net/netlink/NetlinkMessage;

    #@3d
    invoke-direct {v3, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    #@40
    return-object v3

    #@41
    .line 63
    :sswitch_0
    invoke-static {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;

    #@44
    move-result-object v3

    #@45
    return-object v3

    #@46
    .line 65
    :sswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@49
    move-result v3

    #@4a
    add-int/2addr v3, v1

    #@4b
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4e
    .line 66
    new-instance v3, Landroid/net/netlink/NetlinkMessage;

    #@50
    invoke-direct {v3, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    #@53
    return-object v3

    #@54
    .line 71
    :sswitch_2
    invoke-static {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;

    #@57
    move-result-object v3

    #@58
    return-object v3

    #@59
    .line 79
    :cond_4
    return-object v5

    #@5a
    .line 60
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getHeader()Landroid/net/netlink/StructNlMsgHdr;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetlinkMessage{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    #@e
    if-nez v0, :cond_0

    #@10
    const-string/jumbo v0, ""

    #@13
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "}"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    :cond_0
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    #@25
    invoke-virtual {v0}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    goto :goto_0
.end method
