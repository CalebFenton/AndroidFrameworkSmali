.class public Landroid/net/netlink/StructNlAttr;
.super Ljava/lang/Object;
.source "StructNlAttr.java"


# static fields
.field public static final NLA_HEADERLEN:I = 0x4


# instance fields
.field public mByteOrder:Ljava/nio/ByteOrder;

.field public nla_len:S

.field public nla_type:S

.field public nla_value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    #@9
    .line 86
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 7
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 63
    invoke-static {p0}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    #@5
    move-result-object v1

    #@6
    .line 64
    .local v1, "struct":Landroid/net/netlink/StructNlAttr;
    if-eqz v1, :cond_0

    #@8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@b
    move-result v3

    #@c
    invoke-virtual {v1}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    #@f
    move-result v4

    #@10
    if-ge v3, v4, :cond_1

    #@12
    .line 65
    :cond_0
    return-object v6

    #@13
    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@16
    move-result v0

    #@17
    .line 69
    .local v0, "baseOffset":I
    add-int/lit8 v3, v0, 0x4

    #@19
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1c
    .line 71
    iget-short v3, v1, Landroid/net/netlink/StructNlAttr;->nla_len:S

    #@1e
    const v4, 0xffff

    #@21
    and-int v2, v3, v4

    #@23
    .line 72
    .local v2, "valueLen":I
    add-int/lit8 v2, v2, -0x4

    #@25
    .line 73
    if-lez v2, :cond_2

    #@27
    .line 74
    new-array v3, v2, [B

    #@29
    iput-object v3, v1, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@2b
    .line 75
    iget-object v3, v1, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@2d
    invoke-virtual {p0, v3, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@30
    .line 76
    invoke-virtual {v1}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    #@33
    move-result v3

    #@34
    add-int/2addr v3, v0

    #@35
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@38
    .line 78
    :cond_2
    return-object v1
.end method

.method public static peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x0

    #@2
    .line 44
    if-eqz p0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-ge v2, v4, :cond_1

    #@a
    .line 45
    :cond_0
    return-object v3

    #@b
    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@e
    move-result v0

    #@f
    .line 49
    .local v0, "baseOffset":I
    new-instance v1, Landroid/net/netlink/StructNlAttr;

    #@11
    invoke-direct {v1}, Landroid/net/netlink/StructNlAttr;-><init>()V

    #@14
    .line 50
    .local v1, "struct":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@17
    move-result v2

    #@18
    iput-short v2, v1, Landroid/net/netlink/StructNlAttr;->nla_len:S

    #@1a
    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@1d
    move-result v2

    #@1e
    iput-short v2, v1, Landroid/net/netlink/StructNlAttr;->nla_type:S

    #@20
    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@23
    move-result-object v2

    #@24
    iput-object v2, v1, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    #@26
    .line 54
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 55
    iget-short v2, v1, Landroid/net/netlink/StructNlAttr;->nla_len:S

    #@2b
    if-ge v2, v4, :cond_2

    #@2d
    .line 57
    return-object v3

    #@2e
    .line 59
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getAlignedLength()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    #@2
    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(S)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getValueAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@3
    if-nez v1, :cond_0

    #@5
    return-object v2

    #@6
    .line 96
    :cond_0
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v0

    #@c
    .line 97
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    #@e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@11
    .line 98
    return-object v0
.end method

.method public getValueAsInetAddress()Ljava/net/InetAddress;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@3
    if-nez v1, :cond_0

    #@5
    return-object v2

    #@6
    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@8
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 114
    :catch_0
    move-exception v0

    #@e
    .line 115
    .local v0, "ignored":Ljava/net/UnknownHostException;
    return-object v2
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 103
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x4

    #@b
    if-eq v1, v2, :cond_1

    #@d
    .line 104
    :cond_0
    return p1

    #@e
    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    #@15
    move-result v1

    #@16
    return v1
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v0

    #@4
    .line 121
    .local v0, "originalPosition":I
    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    #@6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@9
    .line 122
    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    #@b
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@e
    .line 123
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@10
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@13
    .line 124
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    #@16
    move-result v1

    #@17
    add-int/2addr v1, v0

    #@18
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1b
    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "StructNlAttr{ nla_len{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 130
    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    #@e
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 130
    const-string/jumbo v1, "}, "

    #@15
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 131
    const-string/jumbo v1, "nla_type{"

    #@1c
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 131
    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    #@22
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 131
    const-string/jumbo v1, "}, "

    #@29
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 132
    const-string/jumbo v1, "nla_value{"

    #@30
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 132
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    #@36
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 132
    const-string/jumbo v1, "}, "

    #@41
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 133
    const-string/jumbo v1, "}"

    #@48
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method
